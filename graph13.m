function [] = graph13()
    graph12(); 
    y = linspace(0,2);
    x = 20.*ones(1,length(y));
    plotMatrix = [x; y]; 
    plot(plotMatrix(1,:),plotMatrix(2,:),'LineWidth',4);
end