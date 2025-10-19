# Claude Code Plugin Marketplace

Personal marketplace for Claude Code plugins.

## Available Plugins

<!-- Plugin list will be auto-generated here -->

## Adding Plugins

To add a plugin to this marketplace:

1. Create your plugin bundle:
   ```bash
   /plugin-package my-agent
   ```

2. Copy to marketplace:
   ```bash
   cp -r dist/my-agent/ plugins/
   ```

3. Commit and push:
   ```bash
   git add plugins/my-agent/
   git commit -m "Add my-agent plugin"
   git push
   ```

## Installing Plugins

Clone this marketplace and use the install script:

```bash
gh repo clone YOUR_USERNAME/MARKETPLACE_NAME
cd MARKETPLACE_NAME/plugins/plugin-name
./install.sh --global
```

## Plugin Requirements

All plugins must include:
- `plugin.json` - Plugin manifest
- `MANIFEST.json` - Bundle metadata
- `install.sh` - Installation script
- `README.md` - Documentation

## Maintenance

Update plugin list: `./scripts/update-plugin-list.sh`
