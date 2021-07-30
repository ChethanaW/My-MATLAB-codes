function neatfuntion(variable)

if (neatfuntion == 1)
    plot([5 3 3 5],[0 0 5 5]);
elseif (neatfuntion == 2)
    patch([0 0 1 1 0 0 1 1],[0 0 0 0 1 1 1 1],[1 0 1 0 1 0 1 0])
elseif (neatfuntion == 3)
    for i = 1:1:(variable+11)
        if (i\2 == 0)
            patch([0 0 1 1 0 0 1 1],[0 0 0 0 1 1 1 1],[1 0 1 0 1 0 1 0]);
            pause(0.5);
        else
            plot([5 3 3 5],[0 0 5 5]);
            pause(0.5);
        end
    end
else
    disp('error')
end

end

        
           
        
