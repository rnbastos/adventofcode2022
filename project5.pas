program project4;
uses
  classes, sysutils,StrUtils;

  var
    stringA, stringB, stringC: string;
       valor:integer;
       arquivo: textfile;
       linha:string;
       tamanho,soma,erro,posicao,i,j,k:integer;
       alfa: string;
       charigual:char;
       jaachei:array of char;
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
          setlength(jaachei,0);
          tamanho:=length(stringa);
          stringb:=copy(stringA,1,round(tamanho /2));
          stringc:=copy(stringA,round(tamanho/2)+1, round(tamanho/2));
          writeln (stringa,' ',stringb,' ',stringc);
          for i:=1 to length(stringb) do
          begin
          charigual:=' ';
              for j:=1 to length(stringc) do
              begin
                if stringb[i]=stringc[j] then
                begin
                  charigual:=stringb[i];
                  write ('achei o caracter ',charigual);
                  posicao:=pos(charigual, alfa);
                  writeln ('na posicao ',posicao);
                  achei:=false;
                  for k:=0 to length(jaachei) -1 do
                  begin
                        if jaachei[k] = charigual then
                        achei:=true;
                  end;
                  write ('achei',achei);
                  if (not achei) then
                  begin
                        write ('entrei');
                           setlength(jaachei, length(jaachei)+1);
                           jaachei[length(jaachei)-1]:=charigual;
                           soma:=soma+posicao;
                           writeln ('somei. soma atual', soma);
                  end;

                end;
              end;

          end;
     end;
     writeln ('achei o valor ' , soma);

  end.


