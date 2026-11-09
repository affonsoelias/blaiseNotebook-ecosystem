# 🚀 Getting Started with the BlaiseNotebook Ecosystem

The **BlaiseNotebook Ecosystem** allows developers and data scientists to easily extend their computational notebooks with external Pascal libraries, custom analytics algorithms, and specialized AI packages.

---

## 🔍 1. Searching for Packages

To discover available community packages in the registry, run:

```bash
bvnb pkg search
```

Or search for a specific keyword:

```bash
bvnb pkg search 3d
```

The CLI connects to the central `ecosystem.json` registry and displays matches with their version and description.

---

## 📥 2. Installing Packages

To install a package into your active notebook workspace (under `./packages/`):

```bash
bvnb pkg install <package-name>
```

For example, to install the test verification package:

```bash
bvnb pkg install test
```

### Specifying a Version
You can pin an exact release version using `@<version>`:

```bash
bvnb pkg install test@1.0.0
```

### Automatic Python Dependencies
If the installed package contains a `requirements.txt` file, `bvnb pkg install` automatically installs the necessary Python dependencies into your active Python environment via `pip`.

---

## 💻 3. Using Packages in Notebook Cells

Once installed, the package is immediately ready for use inside any code cell in your notebook via standard Pascal `uses` syntax:

```pascal
uses
  BlaiseOutput,
  uTestPackage;

begin
  Writeln('[+] Test package status: ', GetTestEcosystemStatus());
end;
```

---

## 📋 4. Listing Installed Packages

To inspect what packages are currently recognized by the BlaiseNotebook kernel:

```bash
bvnb pkg list
```

This command categorizes packages into:
1. **Official Core & Scientific Packages** (`math`, `pandas`, `sklearn`, `python_bridge`)
2. **Official Auxiliary Tools** (`data_generator`, `report_exporter`, etc.)
3. **Workspace Third-Party Packages** (`./packages/*`)

---

## 🗑️ 5. Removing Packages

To remove an installed third-party package from your workspace:

```bash
bvnb pkg remove <package-name>
```
