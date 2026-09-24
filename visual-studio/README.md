# Configurações do Visual Studio (IDE)

Equivalente do `../settings.json` (VSCode) para o **Visual Studio 2022**
(Windows). Não é uma tradução 1:1 — o Visual Studio é outro produto:

- Não existe `settings.json` do usuário. A config é por **GUI**
  (`Tools > Options`) e o que dá pra versionar é um **`.vssettings`** (XML).
- Faz sentido só para **.NET/C# e C++**. Para **Java, Kotlin, Node e React**
  o Visual Studio praticamente não tem suporte — continue no VSCode/IntelliJ.
- Não há Electron, então `apc.*`, `window.titleBarStyle`, `activityBar`,
  `commandCenter`, scrollbar minimap etc. **não têm equivalente**.

## 1. Aplicar o `.vssettings`

O arquivo [`CatiConfig.vssettings`](./CatiConfig.vssettings) define **só a fonte**
do editor e do terminal (é a parte que importa com segurança sem sobrescrever
suas cores).

1. Instale as fontes no Windows (mesmas do VSCode):
   - **JetBrains Mono** — <https://www.jetbrains.com/lp/mono/>
   - **JetBrainsMono Nerd Font** — <https://www.nerdfonts.com/font-downloads>
2. `Tools > Import and Export Settings… > Import selected environment settings`
3. Escolha **não** salvar backup (ou salve, tanto faz) → `Browse` →
   `CatiConfig.vssettings` → marque tudo → `Finish`.
4. Reinicie o Visual Studio.

> Se o nome exato da Nerd Font instalada for outro (ex.: `JetBrainsMono NF`),
> ajuste em `Tools > Options > Environment > Fonts and Colors >
> Show settings for: Terminal`.

## 2. `.editorconfig` (guias de coluna 80/120)

Copie [`.editorconfig`](./.editorconfig) para a **raiz do repositório** onde você
abre o projeto. Cobre `editor.rulers`, `trim_trailing_whitespace`,
`insert_final_newline`, indentação. A linha `guidelines = 80, 120` depende da
extensão **Editor Guidelines** (ver `extensions.md`).

## 3. O resto — via `Tools > Options` (GUI)

O `.vssettings` não carrega tema nem opções de layout de forma confiável entre
versões, então faça na mão uma vez:

| Sua chave no VSCode | Onde fica no Visual Studio 2022 | Observação |
| --- | --- | --- |
| `workbench.colorTheme: "Min Dark"` | `Tools > Options > Environment > General > Color theme` → **Dark**. Para algo mais minimalista/próximo, instale o tema **Night Owl** (ver extensões). | Não existe "Min Theme" para VS. |
| `workbench.iconTheme: "symbols"` | Extensão **File Icons** (Mads Kristensen) | Ícones por tipo de arquivo no Solution Explorer. |
| `editor.fontFamily` / `fontSize` | Já vem no `.vssettings` | JetBrains Mono 11pt. |
| `editor.fontLigatures: true` | Automático no VS 2022 se a fonte tiver ligatures | Sem chave. |
| `editor.lineHeight: 1.8` | **Sem equivalente nativo** e sem extensão confiável no VS 2022 | Único ajuste possível é o tamanho da fonte. |
| `editor.rulers: [80, 120]` | Extensão **Editor Guidelines** + `.editorconfig` | Ou clique direito no editor → `Guidelines > Add`. |
| `editor.renderLineHighlight: "gutter"` | `Tools > Options > Text Editor > General > Highlight current line` | On/off apenas (não dá só a gutter). |
| `breadcrumbs.enabled: false` | `Text Editor > General > Navigation bar` → desmarcar | |
| `editor.scrollbar.vertical: "hidden"` | `Text Editor > All Languages > Scroll Bars > Use map mode` → desligar barra/map | Não dá pra sumir totalmente. |
| `editor.semanticHighlighting.enabled: false` | `Text Editor > C# > Advanced > Editor Colors` | Desmarque o que não quiser colorir. |
| `explorer.compactFolders: false` | Solution Explorer não tem "compact folders" | N/A. |
| `explorer.fileNesting.enabled: true` | `Solution Explorer` já faz **file nesting** por padrão (`Program.cs` etc.); botão "File Nesting" no topo do painel. | |
| `explorer.confirmDragAndDrop: false` | `Tools > Options > Projects and Solutions > General > Prompt … drag-and-drop` | |
| `workbench.startupEditor: "newUntitledFile"` | `Tools > Options > Environment > Startup > On startup, open` → **Empty environment** | |
| `debug.terminal.clearBeforeReusing: true` | `Tools > Options > Debugging > General > Clear the Output window on Debug start` (aproxima) | |
| `diffEditor.ignoreTrimWhitespace: false` | Diff do Git no VS: botão de opções da janela de comparação → whitespace | Sem chave persistente clara. |
| `security.workspace.trust.untrustedFiles: "open"` | `Tools > Options > Trust Settings` | Modelo diferente. |
| `workbench.statusBar.visible: true` | Sempre visível no VS | N/A. |

## 4. Formatação ao salvar (Prettier/ESLint on save → C#)

- **C#**: extensão **CSharpier** → `Tools > Options > CSharpier > General >
  Reformat with CSharpier on Save = true`. É o "Prettier do C#".
- Alternativa sem extensão: `Edit > Advanced > Format Document` (`Ctrl+K, Ctrl+D`)
  + regras no `.editorconfig`.
- **Analyzers ao digitar** (≈ Error Lens/ESLint): **SonarQube for Visual Studio**
  + **Roslynator 2022**.

## 5. Instalar extensões em lote

Veja [`extensions.md`](./extensions.md). O Visual Studio não tem um
`--install-extension` como o `code`, mas você pode:

1. Baixar todos os `.vsix` do Marketplace, ou
2. `Extensions > Manage Extensions`, adicionar tudo à fila e reiniciar, ou
3. Criar um arquivo `.vsconfig` (`More > Export Configuration` no Visual Studio
   Installer) e versionar junto — cobre workloads + componentes, não extensões
   do Marketplace.
