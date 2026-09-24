# Extensões recomendadas para o Visual Studio 2022

> **Leia primeiro.** O Visual Studio (IDE) só cobre bem **.NET/C#** e **C++**.
> Para **Java + Spring**, **Kotlin + Spring**, **Node.js** e **React** ele não
> tem suporte real — para essas stacks continue no **VSCode** (ver
> `../vscode/extensions.md`) ou **IntelliJ IDEA**. A lista abaixo assume que você vai
> usar o Visual Studio para a parte **.NET/C#**.

Instale por `Extensions > Manage Extensions` (busca no Marketplace) ou baixando
o `.vsix`. O "ID" é o `itemName` da URL do Marketplace
(`https://marketplace.visualstudio.com/items?itemName=<ID>`).

Muita coisa que no VSCode é extensão, **no Visual Studio já é nativo**: Git
completo (com janela de histórico/grafo), suporte a `.editorconfig`, arquivos
`.http` (17.8+), Container Tools, Test Explorer, SQL Server Object Explorer,
NuGet UI, IntelliCode.

---

## 0. Aparência (para casar com o `.vssettings` / seu tema do VSCode)

| Extensão | ID (`itemName`) | Para quê |
| --- | --- | --- |
| Editor Guidelines | `PaulHarrington.EditorGuidelines` | Guias verticais de coluna (80/120). Lê a chave `guidelines` do `.editorconfig`. Substitui `editor.rulers`. |
| File Icons | `MadsKristensen.FileIcons` | +600 ícones por tipo de arquivo no Solution Explorer. Aproxima o icon theme `symbols`. |
| Night Owl (VS 2022) | `God0nlyKnows.NightOwl` | Tema escuro minimalista, porte do Night Owl do VSCode. Alternativa ao "Min Dark" (que não existe para VS). |
| Solution Colors | `MadsKristensen.SolutionColors` | Cor por solução na barra — ajuda a não se perder entre repos. |

> Não há equivalente confiável para `editor.lineHeight` no VS 2022.

---

## 1. Produtividade / essenciais

| Extensão | ID (`itemName`) | Para quê |
| --- | --- | --- |
| Productivity Power Tools 2022 | `VisualStudioProductTeam.ProductivityPowerPack2022` | Pacote da MS: match de chaves, alinhamento, copy as HTML, etc. |
| Trailing Whitespace Visualizer | `MadsKristensen.TrailingWhitespaceVisualizer` | Destaca/remove espaço no fim da linha (o `.editorconfig` já remove ao salvar). |
| Better Comments VS2022 | `OmarRwemi.BetterCommentsVS2022` | Comentários coloridos por tipo (`!`, `?`, `TODO`). Equivale ao Better Comments. |
| Viasfora | `TomasRestrepo.Viasfora` | Rainbow brackets + rainbow indent guides + realce de palavra-chave. Cobre `indent-rainbow` e bracket pair colors. |
| Spell Check My Code (VS2022 and Later) | `EWoodruff.VisualStudioSpellCheckerVS2022andLater` | Corretor ortográfico em comentários/strings/identificadores. Equivale ao Code Spell Checker. Suporta dicionário pt-BR. |
| Markdown Editor v2 | `MadsKristensen.MarkdownEditor2` | Editor + preview de Markdown com lint. Cobre "Markdown All in One" + markdownlint. |
| Add New File | `MadsKristensen.AddAnyFile` | `Shift+F2` cria arquivo por caminho (o "new file" do VSCode). |
| Open in Visual Studio Code | `MadsKristensen.OpeninVisualStudioCode` | Botão pra abrir a pasta/arquivo atual no VSCode (útil pras stacks não-.NET). |

### Task List (≈ TODO Tree)

Nativo: `View > Task List` lista `// TODO`, `// HACK`, `// UNDONE`. Adicione
tokens em `Tools > Options > Environment > Task List`.

---

## 2. Git (≈ GitLens / Git Graph / GitHub PRs)

O Git do Visual Studio 2022 é bom e **nativo**: `View > Git Repository` mostra
grafo de branches/commits (≈ Git Graph), blame por linha via CodeLens, stage por
linha, e a extensão de PRs do GitHub já vem embutida.

| Extensão | ID (`itemName`) | Para quê |
| --- | --- | --- |
| Git Tool (Extended) | `GitTools.GitTool` | Ações Git extras na toolbar (o nativo cobre a maioria). |
| GitFlow for Visual Studio 2022 | `vs-publisher-1448185.GitFlowforVisualStudio2022` | Só se o time usa git-flow. |

> **Blame inline estilo GitLens**: o mais próximo nativo é CodeLens
> (`Tools > Options > Text Editor > All Languages > CodeLens`).
> Para algo mais forte, a resposta real é o **ReSharper** (pago) — ver seção 5.

---

## 3. .NET / C# (o motivo de usar o Visual Studio)

| Extensão | ID (`itemName`) | Para quê |
| --- | --- | --- |
| SonarQube for Visual Studio (SonarLint) | `SonarSource.SonarLintforVisualStudio2022` | Análise estática enquanto digita (C#, VB.NET, JS/TS, C/C++). Equivale ao SonarLint do VSCode; conecta no SonarQube/SonarCloud do time. |
| Roslynator 2022 | `josefpihrt.Roslynator2022` | +500 refactorings e fixes de compilador para C#. Equivale ao Roslynator. (Os analyzers em si melhor via NuGet `Roslynator.Analyzers` no projeto.) |
| CSharpier | `csharpier.CSharpier` | Formatador opinativo de C# com "format on save". É o "Prettier do C#". |
| CodeMaid VS2022 | `SteveCadwallader.CodeMaidVS2022` | Limpeza/organização de arquivos C# (usings, regiões, ordenação). |
| Fine Code Coverage | `FortuneNgwenya.FineCodeCoverage2022` | Cobertura de testes destacada no editor (grátis; ≈ Coverage Gutters). |
| .NET Core Test Explorer | nativo (`Test > Test Explorer`) | Runner de xUnit/NUnit/MSTest. Equivale a Jest/Vitest explorer. |
| xUnit / NUnit templates | `.vsix` do respectivo framework, se quiser os templates de projeto | |

### C++ (se usar)

`Desktop development with C++` é **workload** do instalador, não extensão.
Extensões úteis: `VisualStudioPlatformTeam.ClangPowerTools` (clang-format /
clang-tidy).

---

## 4. API / HTTP / Banco / Docker

Quase tudo nativo — não precisa de extensão:

| Necessidade (no VSCode era…) | No Visual Studio 2022 |
| --- | --- |
| REST Client / arquivos `.http` | **Nativo** (17.8+): crie um `.http` no projeto e rode os requests. |
| Thunder Client / Bruno | Sem equivalente embutido; use o `.http` nativo ou mantenha o cliente externo. |
| OpenAPI (Swagger) Editor | `42crunch.vscode-openapi` **não existe para VS**; edite o YAML e use Swagger UI no browser. Connected Services gera cliente a partir de OpenAPI. |
| Database Client / SQLTools | **Nativo**: `View > SQL Server Object Explorer` (SQL Server/Azure). Para Postgres/MySQL/Mongo, use DBeaver externo. |
| SQL Search | `Redgate.SQLSearch` (grátis) — busca objetos no banco. |
| Container Tools (Docker) | **Nativo** com o workload `Container development tools` — build/run/debug de containers e Compose. |
| Kubernetes | Sem equivalente forte; use `kubectl` + a extensão do VSCode. |
| GitHub Actions | Sem equivalente; edite o YAML (com a extensão YAML abaixo) e veja status no GitHub. |
| YAML com schema | `ms-vscode.vscode-yaml` **não existe para VS**; o VS 2022 tem realce básico de YAML nativo. |

---

## 5. IA e refactor pesado

| Extensão | ID (`itemName`) | Observação |
| --- | --- | --- |
| GitHub Copilot | **Nativo** no VS 2022 17.10+ (`Tools > Options > GitHub > Copilot`). Em versões anteriores: `.vsix` do Copilot. | Autocomplete + Chat. |
| ReSharper | JetBrains (site da JetBrains, **pago**) | O "canivete suíço" de refactor/navegação/inspeções para C#. É o que mais se aproxima de ter GitLens + dezenas de extensões de qualidade juntas. Pesa a IDE. Opcional. |

---

## Resumo: o mínimo pra começar

1. Fontes JetBrains Mono + Nerd Font (Windows)
2. Importar `fonts.vssettings`
3. `.editorconfig` na raiz do repo
4. Instalar: `PaulHarrington.EditorGuidelines`, `MadsKristensen.FileIcons`,
   `God0nlyKnows.NightOwl`, `TomasRestrepo.Viasfora`,
   `OmarRwemi.BetterCommentsVS2022`,
   `EWoodruff.VisualStudioSpellCheckerVS2022andLater`,
   `SonarSource.SonarLintforVisualStudio2022`, `josefpihrt.Roslynator2022`,
   `csharpier.CSharpier`, `MadsKristensen.MarkdownEditor2`
5. `Tools > Options`: tema Dark, navigation bar off, startup = Empty environment
