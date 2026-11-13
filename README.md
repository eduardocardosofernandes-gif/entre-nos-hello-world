# Entre Nós V4 — Contas e ligação de parceiros

Esta versão mantém os jogos, artigos e desafios da V3 e acrescenta a página `/conta` para **registo, login, confirmação de email, terminar sessão, criação de espaço de casal e ligação por código privado**.

## 1. Publicar os ficheiros no GitHub

1. Descompacta `entre-nos-v4.zip`.
2. Abre o teu repositório GitHub `eduardocardosofernandes-gif/entre-nos-hello-world`.
3. Atualiza os ficheiros `package.json`, `app/page.tsx`, `app/layout.tsx`, `app/globals.css` e adiciona `app/conta/page.tsx`, `supabase/setup.sql`, `.env.example` e este README.
4. Se existir `package-lock.json` antigo, apaga-o ou regenera-o com `npm install` antes do commit (não deixes lockfile desatualizado).
5. Faz **Commit changes**. A Vercel faz automaticamente um novo deployment.

## 2. Criar base de dados Supabase (necessário para contas reais)

1. Em https://supabase.com cria uma conta e um projeto novo.
2. Abre **SQL Editor**, cria uma query e cola o conteúdo de `supabase/setup.sql`; executa uma vez.
3. Em **Authentication → Providers → Email**, mantém a confirmação de email ativa (recomendado).
4. Em **Authentication → URL Configuration**, define **Site URL** para o teu domínio público de produção `https://...vercel.app` e adiciona esse URL a **Redirect URLs** (se necessário, inclui `https://...vercel.app/**`). Usa o domínio real indicado na Vercel, não o link do painel.
5. Em **Project Settings → API** (ou **Connect** no painel atual), copia **Project URL** e a **publishable key** (ou a chave pública `anon` legada). **Nunca uses a chave `service_role` ou secret key no navegador.**
6. Na Vercel abre o projeto → **Settings → Environment Variables** e adiciona:
   - `NEXT_PUBLIC_SUPABASE_URL` = URL do projeto Supabase
   - `NEXT_PUBLIC_SUPABASE_ANON_KEY` = chave pública / publishable key
7. Aplica as variáveis ao ambiente **Production** e faz **Redeploy** do deployment mais recente (as variáveis NEXT_PUBLIC_ são integradas na compilação).
8. Abre `/conta`, regista-te, confirma o email e inicia sessão. Cria um espaço e copia o convite. Com outra conta de email, entra noutro navegador e usa o convite para ligar o segundo parceiro.

## Segurança e limites

- As palavras-passe são tratadas pelo **Supabase Auth**. A base de dados usa **RLS** e funções SQL que verificam a identidade autenticada; cada conta só pode pertencer a um casal e cada casal tem no máximo 2 membros.
- O código de convite é um UUID aleatório; **quem tiver o código e uma conta autenticada pode ocupar o lugar disponível**. Partilha-o apenas com a pessoa pretendida. Para lançamento público, recomenda-se um sistema de convites com validade, revogação e limitação de tentativas.
- O protótipo **não guarda respostas dos jogos nem dados íntimos na base de dados**. Os jogos V3 continuam a funcionar no mesmo dispositivo; o progresso não é sincronizado. Não há Stripe, pagamentos, painel de administração, gestão de consentimento nem mecanismos completos de conformidade RGPD.
- Não colocar `.env.local` ou chaves secretas no GitHub. `NEXT_PUBLIC_*` é visível no navegador e deve conter **apenas** a chave pública.
- Se não configurares o Supabase, o site e jogos continuam visíveis, mas `/conta` mostra um aviso em vez de simular um registo real.

## Desenvolvimento local

`npm install` → criar `.env.local` com as duas variáveis públicas → `npm run dev`.
