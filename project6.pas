program project4;
uses
  classes, sysutils,StrUtils;

  var
    stringA, stringB, stringC, stringao: string;
       valor:integer;
       arquivo: textfile;
       linha:string;
       tamanho,soma,erro,posicao,i,j,k:integer;
       alfa: string;
       charigual:char;
       jaachei:array of char;
       jaachei2:array of char;
       achei:boolean;

  begin
        alfa:='abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';


   Assign(arquivo,'entrada3.txt');
     reset (arquivo);
     soma:=0;
     achei:=false;

     while not eof(arquivo)  do
     begin
          readln(arquivo,stringA );
          readln(arquivo,stringb );
          readln(arquivo,stringc);
          write(stringa, ' ', stringb, ' ',stringc);

          setlength(jaachei,0);
          for i:=1 to length(stringa) do
           begin
              charigual:=' ';
              for j:=1 to length(stringb) do
              begin
                if stringa[i]=stringb[j] then
                begin
                  charigual:=stringa[i];
                  writeln ('achei o caracter ',charigual,' posicao i',i,'  posicao j ',j);
                  achei:=false;
                  for k:=0 to length(jaachei) -1 do
                  begin
                        if jaachei[k] = charigual then
                        achei:=true;
                  end;
                  if (not achei) then
                  begin
                           setlength(jaachei, length(jaachei)+1);
                           jaachei[length(jaachei)-1]:=charigual;
                  end;
                end;
              end;
           end;

          setlength(jaachei2,0);

          for i:=0 to length(jaachei)-1 do
          begin
              achei:=false;
              charigual:=' ';
              for j:=1 to length(stringc) do
              begin
                if jaachei[i]=stringc[j] then
                begin

                  charigual:=stringc[j];
                  achei:=false;

                  for k:=0 to length(jaachei2) -1 do
                  begin
                        if jaachei2[k] = charigual then
                        achei:=true;
                  end;
                  if (not achei) then
                  begin
                           setlength(jaachei2, length(jaachei2)+1);
                           jaachei2[length(jaachei2)-1]:=charigual;

                    writeln('>>achei carcter ',charigual);
                    posicao:=pos(charigual,alfa);
                    writeln ('na posicao ',posicao);
                    soma:=soma+posicao;
                    writeln ('somei, soma = ',soma);
                  end;
               end;
              end;

          end;
     stringa:= '';
     stringb:='';
     stringc:='';
     end;
     writeln ('achei o valor ' , soma);

  end.


