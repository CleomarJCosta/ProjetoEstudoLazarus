program TesteApp;
    {$I Synopse.inc} ;


uses
  {$IFDEF UNIX}

  cthreads,
  {$ENDIF}
  Classes, SysUtils, CustApp, mORMot,SynTests, SynLog;

begin

  TSynLogTestLog := TSQLLog; // share the same log file with the whole mORMot
  TTestConsole.RunAsConsole('EKON Automated Tests', LOG_VERBOSE);


end.

