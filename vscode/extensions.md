# Extensões recomendadas para o VSCode

Perfil: **desenvolvedor fullstack** que trabalha com **Java + Spring Boot**,
**Kotlin + Spring Boot**, **Node + React**, **Node.js (backend)** e **.NET (C#)**,
rodando VSCode no **Windows conectado ao WSL**.

Cada item traz o **ID do Marketplace** — instale por
`Ctrl+P` → `ext install <id>` ou pela aba de extensões.

---

## 0. Essenciais (instale primeiro, valem para qualquer stack)

| Extensão | ID | Para quê |
| --- | --- | --- |
| WSL | `ms-vscode-remote.remote-wsl` | Editar/rodar projetos dentro do WSL (obrigatória no seu setup) |
| Dev Containers | `ms-vscode-remote.remote-containers` | Abrir o projeto dentro de um container de dev |
| Remote Development (pack) | `ms-vscode-remote.vscode-remote-extensionpack` | Junta WSL + Dev Containers + SSH |
| EditorConfig | `editorconfig.editorconfig` | Respeita `.editorconfig` do repositório |
| Error Lens | `usernamehw.errorlens` | Mostra erro/aviso inline na linha |
| GitLens | `eamodio.gitlens` | Blame inline, histórico, comparações |
| Git Graph | `mhutchie.git-graph` | Árvore visual de branches/commits |
| GitHub Pull Requests | `github.vscode-pull-request-github` | Revisar e abrir PRs sem sair do editor |
| Code Spell Checker | `streetsidesoftware.code-spell-checker` | Corretor ortográfico em código/comentários |
| Portuguese - Code Spell Checker | `streetsidesoftware.code-spell-checker-portuguese-brazilian` | Dicionário pt-BR para o item acima |
| Path Intellisense | `christian-kohler.path-intellisense` | Autocomplete de caminhos de arquivo |
| DotENV | `mikestead.dotenv` | Syntax highlight de `.env` |
| TODO Tree | `gruntfuggly.todo-tree` | Painel com todos os `TODO`/`FIXME` |
| Better Comments | `aaron-bond.better-comments` | Comentários coloridos por tipo (`!`, `?`, `TODO`) |
| indent-rainbow | `oderwat.indent-rainbow` | Colore níveis de indentação |
| YAML | `redhat.vscode-yaml` | YAML com schema (k8s, GitHub Actions, `application.yml`) |
| Even Better TOML | `tamasfe.even-better-toml` | Suporte a arquivos `.toml` |
| Markdown All in One | `yzhang.markdown-all-in-one` | Atalhos, TOC, preview de Markdown |
| markdownlint | `davidanson.vscode-markdownlint` | Lint de Markdown |

### IA (opcional, escolha um)

| Extensão | ID | Observação |
| --- | --- | --- |
| GitHub Copilot | `github.copilot` | Autocomplete por IA |
| GitHub Copilot Chat | `github.copilot-chat` | Chat / edições no editor |
| Continue | `continue.continue` | Alternativa open-source, aceita modelos locais |

---

## 1. API / HTTP / testes de endpoint

Útil para todos os seus backends (Spring, Node, .NET).

| Extensão | ID | Observação |
| --- | --- | --- |
| REST Client | `humao.rest-client` | Roda requests a partir de arquivos `.http` versionáveis no repo |
| Thunder Client | `rangav.vscode-thunder-client` | Cliente estilo Postman dentro do VSCode |
| Bruno | `bruno-api-client.bruno` | Alternativa ao Postman com coleções em arquivos texto |
| OpenAPI (Swagger) Editor | `42crunch.vscode-openapi` | Edição e preview de specs OpenAPI/Swagger |

---

## 2. Banco de dados

| Extensão | ID | Observação |
| --- | --- | --- |
| Database Client | `cweijan.vscode-database-client2` | Cliente único p/ Postgres, MySQL, SQL Server, SQLite, Mongo, Redis |
| SQLTools | `mtxr.sqltools` | Alternativa; precisa dos drivers abaixo |
| SQLTools PostgreSQL | `mtxr.sqltools-driver-pg` | Driver Postgres para o SQLTools |
| SQLTools SQL Server | `mtxr.sqltools-driver-mssql` | Driver SQL Server (útil no .NET) |
| MongoDB for VS Code | `mongodb.mongodb-vscode` | Explorar e consultar MongoDB |
| Prisma | `prisma.prisma` | Só se usar Prisma ORM no Node |

---

## 3. Docker / DevOps

| Extensão | ID | Observação |
| --- | --- | --- |
| Container Tools | `ms-azuretools.vscode-containers` | Build/run/debug de containers (sucessor da ext. Docker) |
| Kubernetes | `ms-kubernetes-tools.vscode-kubernetes-tools` | Explorar clusters, aplicar manifests |
| GitHub Actions | `github.vscode-github-actions` | Autocomplete e status de workflows |
| HashiCorp Terraform | `hashicorp.terraform` | Só se usar Terraform |

---

## 4. Java + Spring Boot

| Extensão | ID | Observação |
| --- | --- | --- |
| Extension Pack for Java | `vscjava.vscode-java-pack` | Pack oficial: Language Support (`redhat.java`), Debugger, Test Runner, Maven, Project Manager, IntelliCode |
| Spring Boot Extension Pack | `vmware.vscode-boot-dev-pack` | Spring Boot Tools, Spring Initializr, Spring Boot Dashboard |
| Gradle for Java | `vscjava.vscode-gradle` | Projetos Spring Boot com Gradle |
| XML | `redhat.vscode-xml` | Edição de `pom.xml` com schema/autocomplete |
| SonarQube for IDE | `sonarsource.sonarlint-vscode` | Análise estática enquanto digita (Java, JS/TS, C#) |

> Depois de instalar, use `Ctrl+Shift+P` → **Java: Configure Java Runtime** para
> apontar os JDKs. O Spring Boot Dashboard aparece na barra lateral para
> subir/parar apps.

---

## 5. Kotlin + Spring Boot

O suporte a Kotlin no VSCode é **bem mais fraco** que no IntelliJ IDEA
(sem refactors avançados, autocomplete limitado). Para projetos Kotlin grandes,
considere o **IntelliJ IDEA Community** (gratuito). No VSCode, o que existe:

| Extensão | ID | Observação |
| --- | --- | --- |
| Kotlin | `fwcd.kotlin` | Language server da comunidade: autocomplete, ir para definição, debug |
| Kotlin Language | `mathiasfrohlich.kotlin` | Só syntax highlight (leve, complementa o de cima) |
| Gradle for Java | `vscjava.vscode-gradle` | Build/run de projetos Kotlin+Gradle |
| Extension Pack for Java | `vscjava.vscode-java-pack` | O language server de Kotlin depende do runtime Java |

---

## 6. Node.js (backend) + JavaScript/TypeScript

| Extensão | ID | Observação |
| --- | --- | --- |
| ESLint | `dbaeumer.vscode-eslint` | Lint de JS/TS |
| Prettier | `esbenp.prettier-vscode` | Formatação automática |
| Pretty TypeScript Errors | `yoavbls.pretty-ts-errors` | Deixa erros de tipo legíveis |
| npm Intellisense | `christian-kohler.npm-intellisense` | Autocomplete de imports de pacotes |
| Version Lens | `pflannery.vscode-versionlens` | Mostra versões disponíveis no `package.json` |
| Import Cost | `wix.vscode-import-cost` | Tamanho de cada import inline |
| Turbo Console Log | `chakrounanas.turbo-console-log` | `console.log` de variável com um atalho |
| Jest | `orta.vscode-jest` | Runner e status de testes Jest inline |
| Vitest | `vitest.explorer` | Idem para Vitest |

---

## 7. React / Frontend

| Extensão | ID | Observação |
| --- | --- | --- |
| ES7+ React/Redux snippets | `dsznajder.es7-react-js-snippets` | Snippets `rafce`, `useState`, etc. |
| Auto Rename Tag | `formulahendry.auto-rename-tag` | Renomeia a tag de fechamento junto |
| Tailwind CSS IntelliSense | `bradlc.vscode-tailwindcss` | Autocomplete de classes Tailwind (se usar) |
| styled-components | `styled-components.vscode-styled-components` | Highlight/autocomplete em CSS-in-JS |
| Console Ninja | `wallabyjs.console-ninja` | Mostra logs e erros do runtime direto no editor |
| Playwright Test | `ms-playwright.playwright` | Testes E2E de frontend |

---

## 8. .NET / C#

| Extensão | ID | Observação |
| --- | --- | --- |
| C# Dev Kit | `ms-dotnettools.csdevkit` | Pack oficial: C# (`ms-dotnettools.csharp`), IntelliCode, Test Explorer, Solution Explorer |
| .NET Install Tool | `ms-dotnettools.vscode-dotnet-runtime` | Instala/gerencia runtimes .NET (dependência do Dev Kit) |
| IntelliCode for C# Dev Kit | `ms-dotnettools.vscodeintellicode-csharp` | Sugestões de IA para C# |
| Roslynator | `josefpihrt-vscode.roslynator` | Centenas de analyzers e refactors extras |
| NuGet Gallery | `patcx.vscode-nuget-gallery` | Buscar/instalar pacotes NuGet com UI |
| MSBuild project tools | `tinytoy.msbuild-project-tools` | Autocomplete em `.csproj` |

> C# Dev Kit exige login com conta Microsoft/GitHub e é **gratuito para uso
> individual e OSS**; verifique a licença se for uso corporativo em time grande.
> Alternativa 100% aberta: instalar só a extensão **C#** (`ms-dotnettools.csharp`).

---

## Dicas de configuração (`settings.json`)

```jsonc
{
  // Formata ao salvar, sem brigar entre ESLint e Prettier
  "editor.formatOnSave": true,
  "editor.defaultFormatter": "esbenp.prettier-vscode",
  "editor.codeActionsOnSave": {
    "source.fixAll.eslint": "explicit"
  },

  // Java: use um JDK explícito (ajuste o caminho)
  "java.jdt.ls.java.home": "/usr/lib/jvm/java-21-openjdk",
  "java.configuration.updateBuildConfiguration": "interactive",

  // C#: usar o servidor do Dev Kit
  "dotnet.defaultSolution": "disable",

  // Corretor ortográfico em pt-BR + en
  "cSpell.language": "en,pt,pt_BR",

  // Não indexar node_modules/build no watcher
  "files.watcherExclude": {
    "**/node_modules/**": true,
    "**/target/**": true,
    "**/build/**": true,
    "**/bin/**": true,
    "**/obj/**": true
  }
}
```

## Instalação rápida em lote

Com o `code` no PATH (Windows ou WSL), cole no terminal:

```bash
code --install-extension ms-vscode-remote.remote-wsl \
  --install-extension editorconfig.editorconfig \
  --install-extension usernamehw.errorlens \
  --install-extension eamodio.gitlens \
  --install-extension mhutchie.git-graph \
  --install-extension streetsidesoftware.code-spell-checker \
  --install-extension humao.rest-client \
  --install-extension cweijan.vscode-database-client2 \
  --install-extension ms-azuretools.vscode-containers \
  --install-extension redhat.vscode-yaml \
  --install-extension vscjava.vscode-java-pack \
  --install-extension vmware.vscode-boot-dev-pack \
  --install-extension vscjava.vscode-gradle \
  --install-extension redhat.vscode-xml \
  --install-extension sonarsource.sonarlint-vscode \
  --install-extension fwcd.kotlin \
  --install-extension dbaeumer.vscode-eslint \
  --install-extension esbenp.prettier-vscode \
  --install-extension yoavbls.pretty-ts-errors \
  --install-extension dsznajder.es7-react-js-snippets \
  --install-extension formulahendry.auto-rename-tag \
  --install-extension bradlc.vscode-tailwindcss \
  --install-extension ms-dotnettools.csdevkit \
  --install-extension josefpihrt-vscode.roslynator
```

## O que provavelmente **não** vale a pena

- **Bracket Pair Colorizer** — nativo do VSCode
  (`editor.bracketPairColorization.enabled`, já ligado por padrão).
- **Auto Close Tag** — já é nativo para HTML/JSX.
- **Import Cost** em máquina fraca — pode pesar; desative se sentir lentidão.
- Vários "icon themes" / "themes" ao mesmo tempo — escolha um só.
