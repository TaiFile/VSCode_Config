# Skills do Claude Code

Instruções para replicar em outra máquina as skills do Claude Code usadas nesta
configuração.

## 1. De onde vêm as skills

Nem toda skill é "por máquina". Existem três origens:

| Origem | Onde fica | Precisa instalar em cada PC? |
| ------ | --------- | ---------------------------- |
| **Plugins** (marketplace) | `~/.claude/plugins/` | **Sim** — é isso que o script abaixo faz |
| **Skills da conta** (claude.ai) | `~/.claude/skills/synced/` | Não — sincronizam sozinhas ao fazer login |
| **Nativas do Claude Code** | dentro do próprio binário | Não — vêm com o Claude Code |

### Plugins (por máquina)

Todos do marketplace oficial `anthropics/claude-plugins-official`:

| Plugin | O que traz |
| ------ | ---------- |
| **superpowers** | Skills de processo: `brainstorming`, `writing-plans`, `executing-plans`, `test-driven-development`, `systematic-debugging`, `verification-before-completion`, `requesting-code-review`, `receiving-code-review`, `using-git-worktrees`, `subagent-driven-development`, `dispatching-parallel-agents`, `finishing-a-development-branch`, `writing-skills` |
| **frontend-design** | Skill `frontend-design` (direção visual de UI) |
| **code-review** | Skill/comando `code-review` para PRs |
| **feature-dev** | Skill `feature-dev` + agentes `code-architect`, `code-explorer`, `code-reviewer` |
| **typescript-lsp** | Servidor de linguagem TypeScript para o Claude navegar no código |
| **context7** | MCP de documentação atualizada de bibliotecas |
| **playwright** | MCP da Microsoft para o Claude abrir e usar o navegador (testar UI, testes E2E, screenshots) |
| **claude-md-management** | Skill para auditar e manter os arquivos `CLAUDE.md` dos projetos |

### Skills da conta (automáticas)

`docx`, `pdf`, `pptx`, `xlsx`, `skill-creator`, `docs`, `import-memory`,
`morning`. Aparecem como `anthropic-skills:<nome>` depois do `claude` logado
com a mesma conta — não é preciso fazer nada.

### Nativas

`code-review`, `simplify`, `security-review`, `init`, `loop`, `schedule`,
`run`, `update-config`, `claude-api`, etc. Já vêm com o Claude Code.

## 2. Pré-requisitos

- **Claude Code** instalado e logado (`claude` → `/login`):

  ```bash
  curl -fsSL https://claude.ai/install.sh | bash
  ```

- **Para o `typescript-lsp`:** o language server precisa estar no PATH:

  ```bash
  npm install -g typescript typescript-language-server
  ```

- **Para o `playwright`:** Node.js (o MCP roda via `npx`). Se o navegador não
  abrir, instale-o com:

  ```bash
  npx playwright install --with-deps chromium
  ```

## 3. Instalar

Na raiz deste repositório:

```bash
./claude/install-plugins.sh
```

O script adiciona o marketplace oficial e instala os oito plugins no escopo do
usuário. Depois, **reinicie o Claude Code**.

### Manual (equivalente)

```bash
claude plugin marketplace add anthropics/claude-plugins-official
claude plugin install superpowers@claude-plugins-official
claude plugin install frontend-design@claude-plugins-official
claude plugin install code-review@claude-plugins-official
claude plugin install feature-dev@claude-plugins-official
claude plugin install typescript-lsp@claude-plugins-official
claude plugin install context7@claude-plugins-official
claude plugin install playwright@claude-plugins-official
claude plugin install claude-md-management@claude-plugins-official
```

Ou, dentro do Claude Code, pelo comando interativo `/plugin`.

## 4. Conferir

```bash
claude plugin list
```

Dentro de uma sessão, digite `/` e confira se aparecem skills como
`superpowers:brainstorming` e `feature-dev:feature-dev`.

## 5. Atualizar / remover

```bash
claude plugin marketplace update claude-plugins-official   # atualiza o catálogo
claude plugin update <plugin>@claude-plugins-official       # atualiza o plugin
claude plugin disable <plugin>@claude-plugins-official      # desliga sem remover
claude plugin uninstall <plugin>@claude-plugins-official    # remove
```
