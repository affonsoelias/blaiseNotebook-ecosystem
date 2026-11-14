# 🛠️ Tool Template

Template for authoring BlaiseNotebook developer and auxiliary tools.

## CLI Execution
```bash
bvnb tools run tool-template --help
```

## Notebook Usage
```pascal
uses
  BlaiseOutput,
  uToolTemplate;

begin
  Writeln(ToolTemplateInfo());
  ToolTemplateExecute('sample-run');
end;
```
