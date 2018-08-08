function neat(variable)

if (variable == 1)
    plot([5 3 3 5],[0 0 5 5],'--r*')
elseif (variable == 2)
        x_southwall=[0 3 3 1 1 0];
        y_southwall=[0 0 0 0 0 0];
        z_southwall=[0 0 1 1 2 2];
        patch(x_southwall,y_southwall,z_southwall,'r','Facealpha',0.5)

        x_westwall=[3 3 3 3 3 3];
        y_westwall=[0 2 2 1 1 0];
        z_westwall=[0 0 2 2 1 1];
        patch(x_westwall,y_westwall,z_westwall,'y','Facealpha',0.5)

        x_eastwall=[0 0 0 0];
        y_eastwall=[0 0 2 2];
        z_eastwall=[0 2 2 0];
        patch(x_eastwall,y_eastwall,z_eastwall,'g','Facealpha',0.5)

        x_northwall=[3 3 2 2 1 1 0 0];
        y_northwall=[2 2 2 2 2 2 2 2];
        z_northwall=[0 2 2 1 1 2 2 0];
        patch(x_northwall,y_northwall,z_northwall,'b','Facealpha',0.5)

        x_firstroof=[3 3 2 2 1 1];
        y_firstroof=[0 1 1 2 2 0];
        z_firstroof=[1 1 1 1 1 1];
        patch(x_firstroof,y_firstroof,z_firstroof,'m','Facealpha',0.5)

        x_secondroof=[0 0 1 1];
        y_secondroof=[0 2 2 0];
        z_secondroof=[2 2 2 2];
        patch(x_secondroof,y_secondroof,z_secondroof,'c','Facealpha',0.5)
    
        x_thirdroof=[2 3 3 2];
        y_thirdroof=[2 2 1 1];
        z_thirdroof=[2 2 2 2];
        patch(x_thirdroof,y_thirdroof,z_thirdroof,'c','Facealpha',0.5)

        x_roofwallone=[3 3 2 2];
        y_roofwallone=[1 1 1 1];
        z_roofwallone=[1 2 2 1];
        patch(x_roofwallone,y_roofwallone,z_roofwallone,'c','Facealpha',0.5)

        x_roofwalltwo=[2 2 2 2];
        y_roofwalltwo=[1 1 2 2];
        z_roofwalltwo=[1 2 2 1];
        patch(x_roofwalltwo,y_roofwalltwo,z_roofwalltwo,'c','Facealpha',0.5)

        x_roofwallthree=[1 1 1 1];
        y_roofwallthree=[0 0 2 2];
        z_roofwallthree=[1 2 2 1];
        patch(x_roofwallthree,y_roofwallthree,z_roofwallthree,'c','Facealpha',0.5);

        x_base=[0 3 3 0];
        y_base=[0 0 2 2];
        z_base=[0 0 0 0];
        patch(x_base,y_base,z_base,'k','Facealpha',0.5);
elseif (variable == 3)
    for i = 1:1:(variable+11)
        x_southwall=[0 3 3 1 1 0];
        y_southwall=[0 0 0 0 0 0];
        z_southwall=[0 0 1 1 2 2];
        patch(x_southwall,y_southwall,z_southwall,'r','Facealpha',0.5)

        x_westwall=[3 3 3 3 3 3];
        y_westwall=[0 2 2 1 1 0];
        z_westwall=[0 0 2 2 1 1];
        patch(x_westwall,y_westwall,z_westwall,'y','Facealpha',0.5)

        x_eastwall=[0 0 0 0];
        y_eastwall=[0 0 2 2];
        z_eastwall=[0 2 2 0];
        patch(x_eastwall,y_eastwall,z_eastwall,'g','Facealpha',0.5)

        x_northwall=[3 3 2 2 1 1 0 0];
        y_northwall=[2 2 2 2 2 2 2 2];
        z_northwall=[0 2 2 1 1 2 2 0];
        patch(x_northwall,y_northwall,z_northwall,'b','Facealpha',0.5)

        x_firstroof=[3 3 2 2 1 1];
        y_firstroof=[0 1 1 2 2 0];
        z_firstroof=[1 1 1 1 1 1];
        patch(x_firstroof,y_firstroof,z_firstroof,'m','Facealpha',0.5)

        x_secondroof=[0 0 1 1];
        y_secondroof=[0 2 2 0];
        z_secondroof=[2 2 2 2];
        patch(x_secondroof,y_secondroof,z_secondroof,'c','Facealpha',0.5)
    
        x_thirdroof=[2 3 3 2];
        y_thirdroof=[2 2 1 1];
        z_thirdroof=[2 2 2 2];
        patch(x_thirdroof,y_thirdroof,z_thirdroof,'c','Facealpha',0.5)

        x_roofwallone=[3 3 2 2];
        y_roofwallone=[1 1 1 1];
        z_roofwallone=[1 2 2 1];
        patch(x_roofwallone,y_roofwallone,z_roofwallone,'c','Facealpha',0.5)

        x_roofwalltwo=[2 2 2 2];
        y_roofwalltwo=[1 1 2 2];
        z_roofwalltwo=[1 2 2 1];
        patch(x_roofwalltwo,y_roofwalltwo,z_roofwalltwo,'c','Facealpha',0.5)

        x_roofwallthree=[1 1 1 1];
        y_roofwallthree=[0 0 2 2];
        z_roofwallthree=[1 2 2 1];
        patch(x_roofwallthree,y_roofwallthree,z_roofwallthree,'c','Facealpha',0.5);

        x_base=[0 3 3 0];
        y_base=[0 0 2 2];
        z_base=[0 0 0 0];
        patch(x_base,y_base,z_base,'k','Facealpha',0.5);

        shg;
        pause(0.5)

        x_front = [0 3 3 2 2 1 1 0];
        y_front = [0 0 0 0 0 0 0 0];
        z_front = [0 0 1 1 2 2 3 3];
        patch(x_front,y_front,z_front,'r','FaceAlpha',0.5);

        x_right = [3 3 3 3];
        y_right = [0 2 2 0];
        z_right = [0 0 1 1];
        patch(x_right,y_right,z_right,'b','FaceAlpha',0.5);

        x_left = [0 0 0 0 0 0];
        y_left = [0 0 1 1 2 2];
        z_left = [0 3 3 2 2 0];
        patch(x_left,y_left,z_left,'b','FaceAlpha',0.5);

        x_back = [3 3 2 2 0 0];
        y_back = [2 2 2 2 2 2];
        z_back = [0 1 1 2 2 0];
        patch(x_back,y_back,z_back,'b','FaceAlpha',0.5);

        x_top1 = [0 0 1 1];
        y_top1 = [0 1 1 0];
        z_top1 = [3 3 3 3];
        patch(x_top1,y_top1,z_top1,'b','FaceAlpha',0.5);

        x_top2 = [1 1 0 0 2];
        y_top2 = [0 1 1 2 2];
        z_top2 = [2 2 2 2 2];
        patch(x_top2,y_top2,z_top2,'b','FaceAlpha',0.5);

        x_top3 = [2 2 3 3];
        y_top3 = [0 2 2 0];
        z_top3 = [1 1 1 1];
        patch(x_top3,y_top3,z_top3,'b','FaceAlpha',0.5);

        x_side1 = [1 1 1 1];
        y_side1 = [0 0 1 1];
        z_side1 = [3 2 2 3];
        patch(x_side1,y_side1,z_side1,'b','FaceAlpha',0.5);

        x_side2 = [1 1 0  0];
        y_side2 = [1 1 1 1 ];
        z_side2 = [2 3 3 2];
        patch(x_side2,y_side2,z_side2,'b','FaceAlpha',0.5);

        x_side3 = [2 2 2 2];
        y_side3 = [0 2 2 0];
        z_side3 = [1 1 2 2];
        patch(x_side3,y_side3,z_side3,'b','FaceAlpha',0.5);

        x_base = [0 3 3 0];
        y_base = [0 0 2 2 ];
        z_base = [0 0 0 0];
        patch(x_base,y_base,z_base,'b','FaceAlpha',0.5);

       pause(0.5);

    end
else
    disp('error')
end

end