# 📦 Extension Template for BlaiseNotebook

This template serves as a starting point for authoring community extensions for BlaiseNotebook.

## 🚀 Quick Usage in Notebook

```pascal
uses
  BlaiseOutput,
  uExtensionTemplate;

begin
  Writeln(ExtensionInfo());
  Writeln('Result: ', AddNumbers(10.5, 20.3):0:2);
end;
```
