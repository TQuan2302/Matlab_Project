function [] = graph12()
    graph11(); 
    y = linspace(0,2);
    x = 15.*ones(1,length(y));
    plotMatrix = [x; y]; 
    plot(plotMatrix(1,:),plotMatrix(2,:),'LineWidth',4);
end