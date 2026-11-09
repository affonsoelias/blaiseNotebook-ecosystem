# 📦 Package Anatomy & File Structure

In the BlaiseNotebook ecosystem, packages are self-contained, modular directories containing Pascal units, manifest metadata, documentation, and optional in-package examples and guides. All packages are designed to run cross-platform on **Windows**, **Linux**, and **macOS**.

---

## 📂 Standard Package Layout

A complete BlaiseNotebook package follows this directory layout:

```text
my_package/
├── uMyPackage.pas           # Primary Pascal unit (or multiple units)
├── package.json             # Required: Package manifest and metadata
├── README.md                # Required: Quick usage guide and summary
├── requirements.txt         # Optional: Python package dependencies
├── doc/                     # Optional: Extended documentation (.md files)
│   ├── guide.md
│   └── api-reference.md
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

## 📖 Optional Extended Documentation (`doc/`)

For packages that need more than a simple `README.md`, you can optionally include a `doc/` directory:

```text
my_package/doc/
├── 01_architecture.md
├── 02_api_reference.md
└── 03_benchmarks.md
```

All `.md` files in this directory are preserved and distributed with the package.

---

## 📓 Optional In-Package Examples (`examples/`)

Packages can optionally provide their own `examples/` subfolder containing ready-to-run `.bynb` notebook files:

```text
my_package/examples/
├── 01_basic_usage.bynb
└── 02_advanced_workflow.bynb
```

When users explore your package repository on GitHub or install it into their workspace, they have instant access to working examples right alongside the library code!

---

## 🐍 Python Dependencies (`requirements.txt`)

If your package leverages Python's scientific ecosystem through `BlaisePyKernel`, list the required pip packages in `requirements.txt`:

```text
numpy>=2.0.0
scipy>=1.14.0
```

When a user installs your package via `bvnb pkg install`, the CLI automatically ensures these packages are installed across Windows, Linux, and macOS.

---

## 🌍 Cross-Platform Compatibility (Windows, Linux, macOS)

BlaiseNotebook packages run natively across:
* **Windows** (x86_64)
* **Linux** (x86_64, aarch64)
* **macOS** (Apple Silicon M1/M2/M3/M4 & Intel x86_64)

### Guidelines for Portable Pascal Units:
1. Always use `DirectorySeparator` instead of hardcoded `\` or `/` when manipulating file paths.
2. Rely only on standard FPC units (`SysUtils`, `Classes`, `Math`, `StrUtils`, etc.) or official Blaise core units (`BlaiseOutput`, `BlaiseMathKernel`, etc.).
3. Avoid Windows-specific API calls (`Windows.pas`) inside numerical or data packages.
