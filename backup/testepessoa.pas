unit TestePessoa;

{$mode objfpc}{$H+}

interface
uses classes, pessoas,mORMot,SynTests,SynLog;


type TTestNomeCompleto = class(TSynTestCase)
published
         procedure TestStringNome;

end;





type TTestAnoNascimento = class(TSynTestCase)
published
          procedure TestIntegerAno;
end;

{ TTestConsole }

TTestConsole = class(TSynTestsLogged)
private
    //procedure TestePessoa;
published
    procedure Domain;
end;


implementation

{ TTestConsole }

procedure TTestConsole.Domain;
begin
     AddCase([TTestNomeCompleto,TTestAnoNascimento]);
end;

procedure TTestAnoNascimento.TestIntegerAno;
var ano:integer;
testeAno:TPessoa;

begin
     testeAno := TPessoa.Create;
     testeAno.Idade:=23;
     ano:=2020;
     Check((ano-testeAno.Idade) = testeAno.ANasc(ano, testeAno.Idade) );

end;

procedure TTestNomeCompleto.TestStringNome;
var VetorNome: array[0..9] of string = ('joao', 'carlos', 'marcelo','maria','ana','paulo', 'francisco', 'artur', 'eduardo', 'manoel');
var VetorSobrenome:array[0..9] of string = ('rodrigues','costa','silva', 'aveiro', 'santos', 'perreira', 'ferreira', 'xavier', 'alves', 'bolonha');
var index1,index2: integer;
var testeNome:TPessoa;

begin
     testeNome:= TPessoa.Create;
     index1:=Random( 9);
     index2:=Random(9);
     testeNome.Nome:=VetorNome[index1];
     testeNome.Sobrenome:=VetorSobrenome[index2];

     Check((testeNome.Nome + testeNome.Sobrenome) = testeNome.NComplete(testeNome.Nome,testeNome.Sobrenome));





end;


















end.

