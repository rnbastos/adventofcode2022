program project7;
uses
  classes, sysutils,StrUtils;

  var
       arquivo: textfile;
       linha:string;
       range1, range2:string;
       ini1,fin1,ini2,fin2:integer;
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

          val(copy(range1,1,pos('-',range1)-1),ini1,erro);
          val(copy(range1,pos('-',range1)+1,length(range1)),fin1,erro);

          val(copy(range2,1,pos('-',range2)-1),ini2,erro);
          val(copy(range2,pos('-',range2)+1,length(range2)),fin2,erro);

          if ((ini1 <= ini2) and( fin1>= ini2))
          or ((ini2<=ini1) and (fin2 >= ini1))
          then
          begin
                writeln ('esse �');
                i:=i+1;
          end;
          writeln ('achei total de conteudos',i);
     end;
  end.


