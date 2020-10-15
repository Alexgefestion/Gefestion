
uses crt;
var s,ss,sss,v:string;
    i, c:integer;
begin
clrscr;
Repeat
Write('слово: ');
  ReadLn(s);
ss:='вывод: ';
V:=' ';
for i:=1 to length(s) do
begin
 C:=(ord(s[i]));
 If c < 1071 then
 C := c + 32;
 C := c - 1071;
 If c < -900 then
 C := c + 943;
 If c < 0 then 
 C := c + 32;
 str(ord(c) ,sss);
 ss:=ss + sss + v;
end; 
writeln(ss);
WriteLn('Нажмите enter что бы продолжить:');
readln;
 until KeyPressed;
 echo "# Gefestion" >> README.md 
git init 
git add README.md 
git commit -m "first commit" 
git branch -M main 
git remote add origin https://github.com/Alexgefestion/Gefestion.git
 git push - u origin main
                
end . 
