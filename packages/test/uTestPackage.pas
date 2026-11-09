unit uTestPackage;

{$mode objfpc}{$H+}

interface

uses
  SysUtils, Classes;

function GetTestEcosystemStatus: string;
function ComputeEcosystemChecksum(AVal: Integer): Integer;

implementation

function GetTestEcosystemStatus: string;
begin
  Result := 'BlaiseNotebook Ecosystem Package [test] Active v1.0.0';
end;

function ComputeEcosystemChecksum(AVal: Integer): Integer;
begin
  Result := (AVal * 42) + 7;
end;

end.
