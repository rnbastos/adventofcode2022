program project7;
uses
  classes, sysutils,StrUtils;

  type
       tmyarray = array of string;

  var
       arquivo: textfile;
       linha:string;
       nmitens, i,pos1,pos2,pos3, lista1,lista2,quantidade,codeerr:integer;
       listaitens:tmyarray;
       mmove,ffrom,tto:string;

procedure move (var a:string; var b:string; quantos:integer);
var i:integer;
tam:integer;
begin

     if (a<>'') then
     begin
        b:=copy(a,1,quantos)+b;
        tam:=length(a) -1;
        a:=copy(a,quantos+1,tam);
     end;

end;

procedure preenche(linha:string; var lista:tmyarray);
var i,posicao:integer;
begin
   for i:=1 to (length(linha) div 4)+1 do
   begin
      if (i=1) then
        posicao:=2
      else
        posicao:=2+(4*(i-1));

      if linha[posicao] <> ' ' then
        lista[i-1]:=lista[i-1]+linha[posicao];
   end;
end;




begin
        i:=0;
     Assign(arquivo,'c:\projetos\advent\entrada5.txt');
     reset (arquivo);

          readln(arquivo,linha);
          while linha[2] <> '1' do
          begin
            nmitens := (length(linha)+1) div 4;
            setlength(listaitens,nmitens);

             preenche(linha, listaitens);
             readln(arquivo,linha);
          end;

     while not eof(arquivo)  do
     begin
       readln(arquivo,linha);
       if linha[1] <> ' ' then
       begin
        mmove:='move';
        ffrom:='from';
        tto:='to';
          pos1:=pos(mmove,linha)+5;
          pos2:=pos(ffrom,linha);
          pos3:=pos(tto,linha);

          val(copy(linha,(pos2+5),(pos3-pos2-6)),lista1,codeerr);
          val(copy(linha,pos3+3,length(linha)-pos3),lista2,codeerr);
          val(copy(linha,pos1,pos2-pos1-1),quantidade,codeerr);
          writeln('movendo ',quantidade, ' de ',listaitens[lista1 -1],' a ',listaitens[lista2 -1]);
          for i:=0 to length(listaitens)-1 do
          writeln(listaitens[i]);
          writeln('---');
          move(listaitens[lista1 -1], listaitens[lista2-1],quantidade);
          for i:=0 to length(listaitens)-1 do
          writeln(listaitens[i]);
          writeln ('----------');
       end;
      end;
      for i:=0 to length(listaitens)-1 do
      begin
        writeln (listaitens[i]);
      end;
      write('final');
      for i:=0 to length(listaitens)-1 do
        write(listaitens[i][1]);
end.


