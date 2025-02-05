function [] =  graph11()
    graph10();
    x = linspace(15,20);
    y = zeros(1,length(x));
    plotMatrix = [x; y]; 
    plot(plotMatrix(1,:),plotMatrix(2,:),'LineWidth',4);
end