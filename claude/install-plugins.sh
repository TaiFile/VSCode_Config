#!/usr/bin/env bash
# Instala os plugins do Claude Code (skills, agentes, MCPs) usados nesta config.
# Plugins são instalados por máquina, em ~/.claude/plugins — rode em cada PC.
set -euo pipefail

MARKETPLACE_REPO="anthropics/claude-plugins-official"
MARKETPLACE="claude-plugins-official"

PLUGINS=(
  superpowers
  frontend-design
  code-review
  feature-dev
  typescript-lsp
  context7
  playwright
  claude-md-management
)

if ! command -v claude >/dev/null 2>&1; then
  echo "Erro: 'claude' não encontrado no PATH. Instale o Claude Code primeiro:" >&2
  echo "  curl -fsSL https://claude.ai/install.sh | bash" >&2
  exit 1
fi

echo "==> Adicionando marketplace $MARKETPLACE_REPO"
claude plugin marketplace add "$MARKETPLACE_REPO" || echo "   (já adicionado)"
claude plugin marketplace update "$MARKETPLACE"

for plugin in "${PLUGINS[@]}"; do
  echo "==> Instalando $plugin@$MARKETPLACE"
  claude plugin install "$plugin@$MARKETPLACE"
done

echo
echo "Pronto. Reinicie o Claude Code para carregar os plugins."
