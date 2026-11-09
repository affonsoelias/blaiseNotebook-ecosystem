# 📦 Package Anatomy & File Structure

In the BlaiseNotebook ecosystem, packages are self-contained, modular directories containing Pascal units, manifest metadata, documentation, and optional in-package examples.

---

## 📂 Standard Package Layout

A complete BlaiseNotebook package follows this directory layout:

```text
my_package/
├── uMyPackage.pas           # Primary Pascal unit (or multiple units)
├── package.json             # Required: Package manifest and metadata
├── README.md                # Required: Usage guide, API docs, and instructions
├── requirements.txt         # Optional: Python package dependencies
└── examples/                # Optional: Self-contained notebook examples (.bynb)
    └── demo_my_package.bynb
```

---

## 📄 Manifest Specification (`package.json`)

Every package must provide a `package.json` file in its root:

```json
{
  "name": "my_package",
  "version": "1.0.0",
  "description": "High-performance statistics and modeling for BlaiseNotebook",
  "author": "Your Name <you@example.com>",
  "license": "MIT",
  "main": "uMyPackage.pas",
  "keywords": ["math", "statistics", "datascience"],
  "homepage": "https://github.com/affonsoelias/blaiseNotebook-ecosystem/tree/main/packages/my_package"
}
```

### Key Fields:
- `name`: Lowercase, alphanumeric, and hyphens/underscores only.
- `version`: Strict SemVer (`MAJOR.MINOR.PATCH`).
- `main`: Name of the primary entry unit file (`.pas`).
- `description`: A clear, single-sentence summary of the package.

---

## 🐍 Python Dependencies (`requirements.txt`)

If your package leverages Python's scientific ecosystem through `BlaisePyKernel`, list the required pip packages in `requirements.txt`:

```text
numpy>=2.0.0
scipy>=1.14.0
```

When a user installs your package via `bvnb pkg install`, the CLI automatically ensures these packages are installed.

---

## 📓 Optional In-Package Examples (`examples/`)

Rather than maintaining a global examples directory, each package can optionally provide its own `examples/` subfolder containing ready-to-run `.bynb` notebook files:

```text
my_package/examples/
├── 01_basic_usage.bynb
└── 02_advanced_workflow.bynb
```

When users explore your package repository on GitHub or install it into their workspace, they have instant access to working examples right alongside the library code!
