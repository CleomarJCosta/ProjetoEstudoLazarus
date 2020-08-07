unit pessoas;

{$mode objfpc}{$H+}

interface
uses classes;
type

  { TPessoa }

  TPessoa = class(TObject)
     private
       FNome: string;
       FSobrenome: string;
       FIdade:integer;
       procedure SetIdade(AValue: integer);
       procedure SetNome(AValue: string);
       procedure SetSobrenome(AValue: string);


     protected
     public
           property Nome: string read FNome write SetNome ;
           property Sobrenome:string read FSobrenome write SetSobrenome ;
           property Idade:integer read FIdade write SetIdade;

           function NComplete(name:string; sobrname:string):string;
           function ANasc(ano:integer; age:integer):integer;



 end;


implementation

{TPessoa}


 procedure TPessoa.SetNome(AValue:string);
 begin
   FNome:= AValue;
 end;

 procedure TPessoa.SetSobrenome(AValue:string);
 begin
   FSobrenome:=AValue;
 end;
 procedure TPessoa.SetIdade(AValue:integer);
 begin
   FIdade:= AValue;
 end;

 function TPessoa.NComplete(name:string; sobrname:string): string;
 begin
    result:= name + sobrname;
 end;

 function TPessoa.ANasc(ano:integer; age:integer):integer;
 begin
   result:= ano - age;
 end;

      // teste esse classe













end.

