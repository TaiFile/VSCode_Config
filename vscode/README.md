# Configurações do VSCode

Instruções para aplicar as configurações de aparência e editor abaixo.

> Skills/plugins do Claude Code: veja [`../claude/README.md`](../claude/README.md).

## 1. Onde fica o arquivo

As suas configurações pessoais vão no **`settings.json` do usuário**, e **não** no
`defaultSettings.jsonc` (esse é somente leitura, serve só de referência).

Como o VSCode está rodando no **Windows conectado ao WSL**, as configurações de
interface (tema, fonte, título, etc.) são as do **Windows**:

```
C:\Users\<seu-usuario>\AppData\Roaming\Code\User\settings.json
```

Para abrir sem procurar pasta:

1. `Ctrl+Shift+P`
2. Digite **`Preferences: Open User Settings (JSON)`** e tecle `Enter`

## 2. Pré-requisitos (instalar antes)

Sem isto, as linhas correspondentes são simplesmente ignoradas.

### Extensões

| Extensão (Marketplace)        | Habilita as chaves                                              |
| ----------------------------- | -------------------------------------------------------------- |
| **Min Theme** (`miguelsolorio.min-theme`)        | `workbench.colorTheme: "Min Dark"`                |
| **Symbols** (`miguelsolorio.symbols`)            | `workbench.iconTheme: "symbols"`, `symbols.hidesExplorerArrows` |
| **Apc Customize UI++** (`drcika.apc-extension`)  | `apc.electron`, `apc.header`, `apc.listRow`, `window.titleBarStyle: "custom"` |

Após instalar o **Apc Customize UI++**, rode `Ctrl+Shift+P` →
**`Enable APC extension`** e reinicie o VSCode. Ao atualizar o VSCode pode ser
necessário rodar o comando de novo.

### Fontes (instalar no Windows)

- **JetBrains Mono** — https://www.jetbrains.com/lp/mono/
- **JetBrainsMono Nerd Font** — https://www.nerdfonts.com/font-downloads
  (usada no terminal; o nome exato após instalar costuma ser
  `JetBrainsMono Nerd Font`)

Baixe o `.zip`, selecione todos os `.ttf`, clique com o botão direito →
**Instalar para todos os usuários**. Reinicie o VSCode.

## 3. Aplicar

1. Abra o `settings.json` do usuário (passo 1).
2. Cole as chaves abaixo **dentro do objeto `{ ... }`**, mesclando com o que já
   existir (não pode haver chave repetida nem dois objetos no arquivo).
3. Salve com `Ctrl+S`. A maior parte aplica na hora; tema da janela / APC pedem
   **reiniciar o VSCode** (`Ctrl+Shift+P` → `Developer: Reload Window`).

```jsonc
{
    "workbench.colorTheme": "Min Dark",
    "debug.terminal.clearBeforeReusing": true,
    "diffEditor.ignoreTrimWhitespace": false,
    "security.workspace.trust.untrustedFiles": "open",
    "workbench.iconTheme": "symbols",
    "explorer.confirmDragAndDrop": false,
    "symbols.hidesExplorerArrows": false,
    "editor.fontFamily": "JetBrains Mono",
    "editor.fontSize": 14,
    "editor.lineHeight": 1.8,
    "editor.rulers": [80, 120],
    "workbench.startupEditor": "newUntitledFile",
    "editor.renderLineHighlight": "gutter",
    "editor.fontLigatures": true,
    "workbench.editor.labelFormat": "short",
    "explorer.compactFolders": false,
    "editor.semanticHighlighting.enabled": false,
    "breadcrumbs.enabled": false,
    "workbench.activityBar.location": "top",
    "window.customTitleBarVisibility": "auto",
    "editor.scrollbar.vertical": "hidden",
    "editor.scrollbar.horizontal": "visible",
    "window.commandCenter": false,
    "apc.electron": {
        "titleBarStyle": "hiddenInset"
    },
    "apc.header": {
        "height": 36
    },
    "apc.listRow": {
        "height": 24
    },
    "window.titleBarStyle": "custom",
    "explorer.fileNesting.enabled": true,
    "terminal.integrated.fontSize": 14,
    "terminal.integrated.fontFamily": "JetBrainsMono Nerds Font",
    "workbench.statusBar.visible": true
}
```

> Se o terminal aparecer com fonte quebrada (quadradinhos/caixas), ajuste
> `terminal.integrated.fontFamily` para o nome exato da Nerd Font instalada,
> por exemplo `"JetBrainsMono Nerd Font"`.

## 4. O que cada bloco faz (resumo)

- **Tema e ícones:** `workbench.colorTheme`, `workbench.iconTheme`,
  `symbols.hidesExplorerArrows`.
- **Fonte do editor:** `editor.fontFamily`, `fontSize`, `lineHeight`,
  `fontLigatures`.
- **Layout enxuto:** `breadcrumbs.enabled: false`, `window.commandCenter: false`,
  `workbench.activityBar.location: "top"`, scrollbar vertical escondida,
  `editor.renderLineHighlight: "gutter"`.
- **Barra de título customizada:** `window.titleBarStyle: "custom"` +
  `apc.electron` / `apc.header` / `apc.listRow` (altura de header e linhas de
  lista mais compactas). Depende da extensão APC.
- **Explorer:** sem confirmação ao arrastar, sem pastas compactas, file nesting
  ligado.
- **Terminal:** fonte JetBrainsMono Nerd Font, tamanho 14, limpa antes de
  reutilizar no debug.
- **Réguas:** guias verticais em 80 e 120 colunas.
