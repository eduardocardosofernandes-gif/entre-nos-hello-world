# Entre Nós — Versão 2

Site demonstrativo Next.js com identidade visual premium, português (Portugal), inglês e espanhol, secções de experiências, planos e jogo interativo de perguntas.

## Publicar no GitHub e Vercel

1. Extrai `entre-nos-v2.zip`.
2. Abre o teu repositório `entre-nos-hello-world` no GitHub.
3. Substitui o `package.json` antigo pelo novo, substitui `app/page.tsx` e `app/layout.tsx`, e adiciona `app/globals.css`, `tsconfig.json` e `next-env.d.ts`.
4. Se já existir `package-lock.json` do projeto anterior, elimina-o no GitHub antes de publicar (ou gera um novo executando `npm install` localmente e carrega-o). Isto evita incompatibilidades entre dependências.
5. Faz commit das alterações na branch `main`. A Vercel fará um novo deploy automaticamente.
6. Em caso de erro, abre Vercel > Deployments > Build Logs e copia a primeira mensagem de erro.

## Testar localmente

Requer Node.js 20 ou superior.

```bash
npm install
npm run dev
```

Abrir http://localhost:3000.

## O que está implementado

- Página inicial responsiva com visual vinho, rosa e creme.
- Alternância PT/EN/ES no navegador.
- Apresentação de 3 jogos e funcionamento.
- Demo de jogo com 5 perguntas por idioma.
- Planos demonstrativos, sem pagamentos.

## Limitações

- Não há contas de utilizadores, base de dados, Stripe, painel de administração ou conteúdos privados.
- O idioma é escolhido no navegador e não cria URLs traduzidos para SEO.
- Não introduzir dados íntimos reais na demo.
- Rever segurança, RGPD e textos legais antes de lançamento comercial.
