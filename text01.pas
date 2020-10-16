uses crt;
uses Math;
var s,p:string;
    a:array[0..255] of string[16]; //цыфра 16 отвечает за максимальную длинну кода, поддержка русского идет со значения 13
    i,j,gi,n,x:byte;
begin
Repeat
writeln('Введите текст');
readln(s);
n:=0;
for i:=1 to length(s) do
 begin
  x:=ord(s[i]);
  n:=n+1;
  a[n]:='';
  while x>0 do
   begin
    a[n]:=chr(x mod 2+48)+a[n];
    x:=x div 2;
   end;
  while length(a[n])<8 do a[n]:='0'+a[n]; //цыфра 8 отвечает за минимальную длинну кода 
 end;
for i:=1 to n do
write(a[i],' ');
writeln;
      
      {------------------------------}
      
writeln('Дешифрование');
s:='';
for i:=1 to n do
 begin
   n:=0;
   for j:=length(a[i] ) downto 1 do
   if a[i][j]='1' then inc(n,round (power(2,length(a[i])-j)));
 write(chr(n));
 End;
 readln;
 until KeyPressed;
End. 
