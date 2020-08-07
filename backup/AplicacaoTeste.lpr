program AplicacaoTeste;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}
  cthreads,
  {$ENDIF}
  Classes, SysUtils, TestePessoa, pessoas,mORMot, CustApp, SynTests, SynLog, SynCommons;
begin
  TSynLogTestLog := TSQLLog; // share the same log file with the whole mORMot
  TTestConsole.RunAsConsole('EKON Automated Tests', LOG_VERBOSE);


end.


