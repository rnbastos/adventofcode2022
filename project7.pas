program project7;
uses
  classes, sysutils,StrUtils;

  var
       arquivo: textfile;
       linha:string;
       range1, range2:string;
       val1,val2,val3,val4:integer;
       i:integer;
       erro:integer;
  begin
        i:=0;
     Assign(arquivo,'entrada4.txt');
     reset (arquivo);
     while not eof(arquivo)  do
     begin
          readln(arquivo,linha);
          range1 := copy(linha,1,pos(',',linha)-1);
          range2 := copy(linha,pos(',',linha)+1,length(linha));
          writeln ('linha: ',linha,' r1: ',range1,' r2: ',range2);

          val(copy(range1,1,pos('-',range1)-1),val1,erro);
          val(copy(range1,pos('-',range1)+1,length(range1)),val2,erro);

          val(copy(range2,1,pos('-',range2)-1),val3,erro);
          val(copy(range2,pos('-',range2)+1,length(range2)),val4,erro);

          if ((val1 <= val3) and( val2 >= val4)) or ((val3<=val1) and (val4>=val2)) then
          begin
                writeln ('esse �');
                i:=i+1;
          end;
          writeln ('achei total de conteudos',i);
     end;
  end.


