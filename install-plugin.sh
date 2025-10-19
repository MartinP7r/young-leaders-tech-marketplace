#!/usr/bin/env bash
# Helper script to browse and install plugins from this marketplace

set -euo pipefail

MARKETPLACE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

list_plugins() {
    echo "Available plugins:"
    echo ""

    for plugin_dir in "${MARKETPLACE_DIR}/plugins/"*/; do
        if [[ -d "${plugin_dir}" && -f "${plugin_dir}/.claude-plugin/plugin.json" ]]; then
            local name=$(jq -r '.name' "${plugin_dir}/.claude-plugin/plugin.json")
            local version=$(jq -r '.version' "${plugin_dir}/.claude-plugin/plugin.json")
            local description=$(jq -r '.description' "${plugin_dir}/.claude-plugin/plugin.json")
            echo "  ${name} (v${version})"
            echo "    ${description}"
            echo ""
        fi
    done
}

install_plugin() {
    local plugin_name="$1"
    local plugin_dir="${MARKETPLACE_DIR}/plugins/${plugin_name}"

    if [[ ! -d "${plugin_dir}" ]]; then
        echo "Error: Plugin '${plugin_name}' not found"
        return 1
    fi

    if [[ ! -f "${plugin_dir}/install.sh" ]]; then
        echo "Error: Plugin '${plugin_name}' has no install.sh"
        return 1
    fi

    echo "Installing ${plugin_name}..."
    cd "${plugin_dir}"
    ./install.sh --global
}

case "${1:-list}" in
    list)
        list_plugins
        ;;
    install)
        if [[ -z "${2:-}" ]]; then
            echo "Usage: $0 install <plugin-name>"
            exit 1
        fi
        install_plugin "$2"
        ;;
    *)
        echo "Usage: $0 {list|install <plugin-name>}"
        exit 1
        ;;
esac
