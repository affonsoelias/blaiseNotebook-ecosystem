# BlaiseNotebook Ecosystem Tools 🛠️

This directory hosts co-official and community developer tools, utilities, and CLI extensions for the BlaiseNotebook environment.

Unlike computational packages in `packages/` (which are imported in notebook cells via `bvnb pkg`), tools in this directory are auxiliary utilities managed using `bvnb tools`:

```bash
# List all tools (built-in and workspace tools)
bvnb tools list

# Search available tools in the ecosystem
bvnb tools search [query]

# View detailed technical information about a tool
bvnb tools info <tool-name>

# Install a co-official or community tool into ./tools/<name>/
bvnb tools install <tool-name>

# Run a tool's CLI runner directly
bvnb tools run <tool-name> [args...]

# Remove an installed tool from ./tools/<name>/
bvnb tools remove <tool-name>

# Scaffold a new tool structure
bvnb tools create <tool-name> [--co-official]
```

---

## 📋 Tool Manifest (`tool.json`)

Every tool in this directory defines a `tool.json` manifest:

```json
{
  "name": "my-tool",
  "version": "1.0.0",
  "category": "Developer Tool",
  "description": "Auxiliary tool description in English",
  "author": "BlaiseNotebook Core Team",
  "license": "MIT",
  "type": "co-official",
  "unit": "uMyTool.pas",
  "bin": "run.py",
  "scripts": {
    "status": "status.py",
    "install": "install.py",
    "remove": "remove.py"
  }
}
```

---

## 📁 Standard Directory Structure

```text
my-tool/
├── tool.json                  # Manifest & metadata
├── run.py                     # CLI entry runner for `bvnb tools run`
├── uMyTool.pas                # Pascal unit (accessible in notebook cells)
├── README.md                  # Quickstart and overview
├── doc/                       # Technical manual
│   └── tool_guide.md
└── examples/                  # Interactive demo notebooks
    └── demo_my_tool.bynb
```
