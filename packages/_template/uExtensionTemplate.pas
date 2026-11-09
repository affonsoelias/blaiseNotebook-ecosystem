unit uExtensionTemplate;

{$mode objfpc}{$H+}

interface

uses
  SysUtils, Classes;

function ExtensionInfo: string;
function AddNumbers(A, B: Double): Double;

implementation

function ExtensionInfo: string;
begin
  Result := 'BlaiseNotebook Extension v1.0.0 (Ready)';
end;

function AddNumbers(A, B: Double): Double;
begin
  Result := A + B;
end;

end.
