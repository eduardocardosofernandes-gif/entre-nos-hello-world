# Entre Nós V3

Protótipo Next.js com português (Portugal), inglês e espanhol, quatro jogos interativos, biblioteca de quatro artigos originais e desafio de sete dias.

## Executar

Instala Node.js 20 ou superior. Na pasta que contém `package.json`:

```bash
npm install
npm run dev
```

Abre http://localhost:3000. Para verificar a compilação: `npm run build`.

## Atualizar GitHub / Vercel

1. Extrai o ZIP e abre a pasta `entre-nos-v3`.
2. No repositório GitHub existente, substitui os ficheiros `package.json`, `tsconfig.json`, `next-env.d.ts`, `app/layout.tsx`, `app/page.tsx` e `app/globals.css` pelos novos, mantendo as pastas.
3. Não coloques a pasta `entre-nos-v3` inteira dentro da raiz do repositório: `package.json` deve ficar na raiz.
4. Faz **Commit changes**. A Vercel deve fazer novo deploy automaticamente.
5. Se existir `package-lock.json` antigo, atualiza-o com `npm install` e publica o lockfile novo; não mistures versões incompatíveis.

## Limitações

Demonstração sem contas reais, pagamentos, CMS ou sincronização entre dispositivos. As respostas de jogos permanecem na memória da página e desaparecem ao atualizar; o desafio também não persiste nesta versão. Não introduzir dados pessoais sensíveis. A opção Desejos em Comum é um jogo local de demonstração: os parceiros devem alternar o dispositivo sem ver as escolhas do outro, mas não há isolamento seguro entre perfis. Para produção são necessárias autenticação, autorização, base de dados, política de privacidade, RGPD, revisão editorial e integração de pagamentos.
