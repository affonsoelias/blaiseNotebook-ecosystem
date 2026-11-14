unit uToolTemplate;

{$mode objfpc}{$H+}

interface

uses
  SysUtils, Classes;

function ToolTemplateInfo: string;
procedure ToolTemplateExecute(const ACommand: string);

implementation

function ToolTemplateInfo: string;
begin
  Result := 'ToolTemplate v1.0.0 (BlaiseNotebook Developer Tool)';
end;

procedure ToolTemplateExecute(const ACommand: string);
begin
  Writeln('[ToolTemplate] Executing action: ', ACommand);
end;

end.
