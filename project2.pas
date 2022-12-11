program project2;
uses
  classes, sysutils,StrUtils;

procedure bsort(var lista: array of longint);
var n, i,temp: longint;
begin
n:=length(lista)-1;
while n>0 do
begin
   for i:=0 to n-2 do
   begin
        if lista[i]<lista[i+1] then
        begin
          temp:= lista[i];
          lista[i]:=lista[i+1];
          lista[i+1]:=temp;
        end;

   end;
n:=n-1;
end;
end;






  var i, j,numero, erro:longint;
    arquivo: textfile;
    lista: array of longint;
    linha:string;
    caracter:char;
    maior, nummaior:longint;
    maior2, maior3, nummaior2, nummaior3, total:longint;

begin
    i:=0;
    Assign(arquivo,'entrada.txt');
    reset (arquivo);
    while not eof(arquivo)  do
     begin
          setlength (lista,i+1);
          readln(arquivo,linha );
          val (linha, numero, erro);
          if erro=0 then
          begin
            lista[i]:=lista[i] + numero;
          end
          else
          begin
            if lista[i] <> 0 then
                i:=i+1;
          end;
    end;
    maior:=0;
    maior2:=0;

    maior3:=0;
    for j:=0 to length(lista)-1 do
    begin
        if nummaior<lista[j] then
        begin
            nummaior:= lista[j];
            maior:=j;
        end
        else
          if nummaior2<lista[j] then
          begin
            nummaior2:= lista[j];
            maior2:=j;
          end
          else
            if nummaior3 < lista[j] then
            begin
             nummaior3:= lista[j];
             maior3:=j;
            end;


        writeln ('Elfo numero ',j+1,' possui ',lista[j]);
    end;
    bsort(lista);

    writeln ('Os maiors Elfos ',lista[0], ' ',lista[1],' ',lista[2]);
    writeln ('TOTAL >>>  ',lista[0]+lista[1]+lista[2]);


end.



    writeln ('Os maiors Elfos ',lista[0], ' ',lista[1],' ',lista[2]);
