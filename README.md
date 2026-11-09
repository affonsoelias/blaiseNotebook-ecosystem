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

Inside your notebook workspace directory, use the `bvnb pkg` command:

```bash
# 1. List installed packages (Core, Tools, and User/Third-Party):
bvnb pkg list

# 2. Search for available packages in the ecosystem:
bvnb pkg search

# 3. Install latest version into current project:
bvnb pkg install test

# 4. Install a pinned version:
bvnb pkg install test@1.0.0

# 5. Scaffold a new package:
bvnb pkg create my-extension

# 6. Remove an installed third-party package:
bvnb pkg remove test
```

---

## 📦 Available Packages

| Package | Latest Version | Description | Package Link |
|---|---|---|---|
| `test` | `1.0.0` | Test verification and self-test package for the registry | [packages/test](packages/test) |

---

## 🤝 Contributing

Contributions to the scientific ecosystem are welcome! Please read [Creating & Publishing Packages](doc/03-creating-and-publishing.md) for guidelines on structuring your package with modular Pascal units, requirements, and optional in-package examples before submitting a Pull Request.
