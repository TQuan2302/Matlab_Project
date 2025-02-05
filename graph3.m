function [] = graph3()
    %A right horizontal line
    graph2();
    hold on;
    x3 = linspace(10,25); 
    y3 = 15.*ones(1,length(x3));
    plotMatrix = [x3;y3]; 
    plot(plotMatrix(1,:),plotMatrix(2,:),'LineWidth',4); 
    hold on;
end