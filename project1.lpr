

program project1;


uses
  classes, sysutils;
type s = record
    num:integer;
    proximo:^s;
    end;

var i:integer;
    raiz:^s;

begin
    i:=0111;
    write (i);
    readln;
end.


