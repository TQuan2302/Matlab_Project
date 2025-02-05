function [] =  graph14()
    graph13();
    x = linspace(15,20);
    y = 2.*ones(1,length(x));
    plotMatrix = [x; y]; 
    plot(plotMatrix(1,:),plotMatrix(2,:),'LineWidth',4);
end