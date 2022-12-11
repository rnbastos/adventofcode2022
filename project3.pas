program project3;
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
            valor:=valor+1

          else if linha[3]='Y' then
                 valor:= valor + 2
                 else
                 valor:=valor+3;

          if linha[1]='A' then
          begin
              posicao:=pos(linha[3],stringa);
              write (linha, ' achei' , posicao);
              valor:=valor+ (3 * (posicao-1));
          end;
          if linha[1]='B' then
          begin
              posicao:=pos(linha[3],stringb);
              write (linha, ' achei' , posicao);
              valor:=valor+ (3 * (posicao-1));
          end;
          if linha[1]='C' then
          begin
              posicao:=pos(linha[3],stringc);
              write (linha, ' achei' , posicao);
              valor:=valor+ (3 * (posicao-1));
          end;


     end;

     writeln ('achei o valor ' , valor);
  end.

