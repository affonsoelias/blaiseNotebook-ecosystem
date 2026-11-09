# 🧪 BlaiseNotebook Ecosystem Test Package

Official verification package for testing the BlaiseNotebook package management system (`bvnb pkg`).

## 🚀 Quick Test in Notebook

```pascal
uses
  BlaiseOutput,
  uTestPackage;

begin
  Writeln(GetTestEcosystemStatus());
  Writeln('Checksum: ', ComputeEcosystemChecksum(10));
end;
```
