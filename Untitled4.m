figure(1);
patch([0 3 3 2 2 1 1 0],[0 0 0 0 0 0 0 0],[0 0 3 3 1 1 2 2],'r','FaceAlpha',0.5)
patch([3 3 3 3 3 3 ],[0 0 1 1 2 2],[0 3 3 1 1 0],'g','FaceAlpha',0.5)
patch([0 0 0 0],[0 0 2 2],[0 2 2 0],'b','FaceAlpha',0.5)
patch([0 3 3 2 2 0],[2 2 2 2 2 2],[0 0 1 1 2 2],'y','FaceAlpha',0.5)
patch([0 1 1 2 2 0],[0 0 1 1 2 2],[2 2 2 2 2 2],'c','FaceAlpha',0.5)
patch([1 2 2 1],[0 0 1 1],[1 1 1 1],'c','FaceAlpha',0.5)
patch([2 3 3 2],[0 0 1 1],[3 3 3 3],'c','FaceAlpha',0.5)
patch([2 3 3 2],[1 1 2 2],[1 1 1 1],'c','FaceAlpha',0.5)
patch([1 1 1 1],[0 0 1 1],[1 2 2 1],'m','FaceAlpha',0.5)
patch([1 3 3 2 2 1],[1 1 1 1 1 1],[1 1 3 3 2 2],'m','FaceAlpha',0.5)
patch([2 2 2 2 2 2],[0 2 2 1 1 0],[1 1 2 2 3 3],'m','FaceAlpha',0.5)
patch([0 0 3 3],[0 2 2 0],[0 0 0 0],'k','FaceAlpha',0.5)

figure(2);
hold on;
plot([2 4 5 3 1 2],[0 0 2 4 2 0],':og')
plot([ 6 8 8 6 6],[0 0 4 4 0],'--g')

