program project4;
uses
  classes, sysutils,StrUtils;

  var
   X, Y, Z, stringA, stringB, stringC: string;
       valor:integer;
       arquivo: textfile;
       linha:string;
       posicao:integer;

  begin
       stringA:='ZXY';
       stringB:='XYZ';
       stringC:='YZX';


      Assign(arquivo,'entrada2.txt');
     reset (arquivo);
     while not eof(arquivo)  do
     begin
          readln(arquivo,linha );
          if linha[3]='X' then
            if linha[1]='A' then
              valor:=valor+3
              else if linha[1]='B' then
                valor:=valor+1
                else valor:=valor+2;

          if linha[3]='Y' then
          begin
            if linha[1]='A' then
              valor:=valor+1
              else if linha[1]='B' then
                valor:=valor+2
                else valor:=valor+3;
             valor:=valor+3;
            end;

          if linha[3]='Z' then
          begin
            if linha[1]='A' then
              valor:=valor+2
              else if linha[1]='B' then
                valor:=valor+3
                else valor:=valor+1;
             valor:=valor+6;
            end;

     end;

     writeln ('achei o valor ' , valor);
  end.


