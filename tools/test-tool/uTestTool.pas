unit uTestTool;

{$mode objfpc}{$H+}

interface

uses
  SysUtils, Classes;

function TestToolInfo: string;
procedure TestToolExecute(const AParam: string);

implementation

function TestToolInfo: string;
begin
  Result := 'test-tool v1.0.0 (BlaiseNotebook Ecosystem Verification)';
end;

procedure TestToolExecute(const AParam: string);
begin
  Writeln('[test-tool] Verified pipeline execution with param: ', AParam);
end;

end.
