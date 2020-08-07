unit TPessoa;

{$mode objfpc}{$H+}

interface
uses classes;
type
  TPessoa = class(TObject)
     private
           FnNome : string
           FSobrenome:string;
           FIdade: integer;
     protected
     public
           property Nome: string read FNome write SetNome ;
           property Sobrenome:string read FSobrenome write SetSobrenome ;
           property Idade:integer read FSobrenome write SetIdade;


     published
 end;
uses
  Classes, SysUtils;

implementation

{TPessoa}
 procedure TPessoa.SetNome(valor:string);
 begin
   FNome:= valor;
 end;

 procedure TPessoa.SetSobrenome(valor:string);
 begin
   FSobrenome:=valor;
 end;
 procedure TPessoa.SetIdade(valor:integer);
 begin
   FIdade:= valor;
 end;

 function TPessoa.NomeCompeleto(nome:string; sobrnome:string);
 begin
   result:= nome + sobrnome;
 end

 function TPessoa,AnoNascimento(ano:integer; idade:integer);
 begin
   result:= ano - idade;
 end

      // teste esse classe













end.

