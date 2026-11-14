# 🛠️ test-tool

Verification and testing tool for the BlaiseNotebook ecosystem.

## CLI Execution
```bash
bvnb tools run test-tool hello world
```

## Notebook Usage
```pascal
uses
  BlaiseOutput,
  uTestTool;

begin
  Writeln(TestToolInfo());
  TestToolExecute('test-param');
end;
```
