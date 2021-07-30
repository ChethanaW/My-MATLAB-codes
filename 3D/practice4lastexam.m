%zerovector=zero(:,1);
word= input ('A word cantaning numbers between xs: ','s');
longness = length(word);
vx = strfind(word,'x');
[r,c] = size(vx);
n1 = str2double(word (1: vx(1)-1));
disp(n1);
sum = n1;
for i =1:(c-1)
   number = str2double(word(vx(i)+1:vx(i+1)-1));
   disp(number);
   sum = sum + number;
end
nL = str2double(word (vx(i+1)+1:longness));
disp(nL);
sum = sum + nL;
fprintf('the sum is %5d\n',sum);

%vectorofx(i-1)
