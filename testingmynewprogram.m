function testingmynewprogram(myvariable)

if (myvariable == 1)
    figure(1);
    plot([1 2 3 4],[10 100 300 -22]);
    title('Plot 1:user input 1');
elseif (myvariable == 2)
    figure(1);
    plot([10 20 30 40],[40 50 60 80]);
    title('Plot 2:user input 2');
else
    disp('error');
end 

end

