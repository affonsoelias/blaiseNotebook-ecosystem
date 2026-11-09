# 🛠️ Creating & Publishing Packages for BlaiseNotebook

This guide details how to build a new package, test it locally, and submit it to the **`blaiseNotebook-ecosystem`** registry.

---

## 🏗️ 1. Scaffolding a New Package

You can generate a compliant package template automatically using the BlaiseNotebook CLI:

```bash
bvnb pkg create my_extension
```

This creates a new folder `./packages/my_extension/` with:
- `uMyExtension.pas` (Starter Pascal unit with sample functions)
- `package.json` (Pre-configured manifest)
- `README.md` (Documentation starter)
- `requirements.txt` (Empty template for Python dependencies)
- `examples/demo.bynb` (Sample notebook demonstrating unit usage)

---

## 🧪 2. Developing & Testing Locally

1. Write your Pascal implementation in `uMyExtension.pas`.
2. Start BlaiseNotebook in your workspace:
   ```bash
   bvnb run
   ```
3. Open your browser at `http://localhost:8090/`.
4. In any code cell, test your unit immediately:
   ```pascal
   uses
     BlaiseOutput,
     uMyExtension;

   begin
     Writeln(MyExtensionHello());
   end;
   ```
   The kernel compiler automatically resolves `./packages/my_extension/` and compiles seamlessly with zero setup!

---

## 📦 3. Preparing a Release Archive

When your package is ready for distribution:
1. Ensure `package.json` version is incremented (e.g. `1.0.0`).
2. Package the folder into a `.zip` archive:
   ```bash
   # Naming convention: <package-name>-<version>.zip
   zip -r my_extension-1.0.0.zip my_extension/
   ```

---

## 🚀 4. Publishing to `blaiseNotebook-ecosystem`

1. Fork the [`blaiseNotebook-ecosystem`](https://github.com/affonsoelias/blaiseNotebook-ecosystem) repository.
2. Place your package directory in `packages/my_extension/`.
3. Create a GitHub Release in your fork (or tag) attached to `my_extension-1.0.0.zip`.
4. Register your package in `ecosystem.json`:
   ```json
   "my_extension": {
     "name": "my_extension",
     "description": "Short summary of what your package does",
     "latest": "1.0.0",
     "versions": ["1.0.0"],
     "download": "https://github.com/affonsoelias/blaiseNotebook-ecosystem/releases/download/v1.0.0/my_extension-1.0.0.zip"
   }
   ```
5. Open a Pull Request to `main` on `affonsoelias/blaiseNotebook-ecosystem`. Once merged, your package becomes available to all BlaiseNotebook users worldwide!
