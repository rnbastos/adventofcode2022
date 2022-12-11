program project1;
uses
  classes, sysutils,StrUtils;

  var i, j,numero, erro:longint;
    arquivo: textfile;
    lista: array of longint;
    linha:string;
    caracter:char;
    maior, nummaior:longint;

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
    for j:=0 to length(lista)-1 do
    begin
        if nummaior<lista[j] then
        begin
            nummaior:= lista[j];
            maior:=j;
        end;
        writeln ('Elfo numero ',j+1,' possui ',lista[j]);
    end;

    writeln ('O maior ‚ o Elfo ',maior+1,' que possui ',nummaior);

end.


