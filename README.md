# 📐 BlaiseNotebook Ecosystem & Extensions Registry

Official multi-package ecosystem repository and extensions registry for [BlaiseNotebook](https://github.com/affonsoelias/BlaiseNotebook).

---

## 📖 About

This repository hosts community-driven scientific extensions, mathematical toolkits, machine learning wrappers, visualization bridges, and auxiliary packages for **BlaiseNotebook**. 

By decoupling specialized third-party libraries from the core engine, BlaiseNotebook remains fast, lightweight, and focused, while providing a rich ecosystem of modular scientific packages that can be installed on demand directly from the CLI or in-notebook commands.

---

## 📚 Documentation & Technical Guides (`doc/`)

Explore the comprehensive guides on consuming, developing, and publishing BlaiseNotebook packages:

| Guide | Description |
|---|---|
| 🚀 [**01. Getting Started & Usage**](doc/01-getting-started.md) | How to search, install, update, and manage ecosystem packages with `bvnb pkg`. |
| 📦 [**02. Package Anatomy**](doc/02-package-anatomy.md) | Standard file structure, `package.json`, Pascal units, optional `examples/`, and `requirements.txt`. |
| 🛠️ [**03. Creating & Publishing Packages**](doc/03-creating-and-publishing.md) | Step-by-step library scaffolding (`bvnb pkg create`), local testing, packaging, and submitting to `ecosystem.json`. |

---

## ⚡ Quick CLI Usage

Inside your notebook workspace directory, use the `bvnb pkg` and `bvnb tools` commands:

### 📦 Computational Packages (`bvnb pkg` | alias: `bvnb lib`)
```bash
# List installed packages (Core, Scientific, and Workspace):
bvnb pkg list

# Search for available packages in the ecosystem:
bvnb pkg search [query]

# View package information:
bvnb pkg info test

# Install latest version into current project (./packages/):
bvnb pkg install test

# Scaffold a new package:
bvnb pkg create my-extension

# Remove an installed package:
bvnb pkg remove test
```

### 🛠️ Developer & Auxiliary Tools (`bvnb tools` | alias: `bvnb tool`)
```bash
# List tools (Built-in and Workspace):
bvnb tools list

# Search for available tools in the ecosystem:
bvnb tools search [query]

# View tool details:
bvnb tools info test-tool

# Install tool into current project (./tools/):
bvnb tools install test-tool

# Run tool runner script directly:
bvnb tools run test-tool hello world

# Scaffold a new tool:
bvnb tools create my-tool

# Remove an installed tool:
bvnb tools remove test-tool
```

---

## 📦 Available Packages & Tools

### Packages (`packages/`)
| Package | Latest Version | Description | Package Link |
|---|---|---|---|
| `test` | `1.0.0` | Test verification and self-test package for the registry | [packages/test](packages/test) |

### Tools (`tools/`)
| Tool | Latest Version | Classification | Description | Tool Link |
|---|---|---|---|---|
| `test-tool` | `1.0.0` | `[Co-Official]` | Verification and testing tool for the BlaiseNotebook ecosystem | [tools/test-tool](tools/test-tool) |

---

## 🤝 Contributing

Contributions to the scientific ecosystem are welcome! Please read [Creating & Publishing Packages](doc/03-creating-and-publishing.md) for guidelines on structuring your package with modular Pascal units, requirements, and optional in-package examples before submitting a Pull Request.
