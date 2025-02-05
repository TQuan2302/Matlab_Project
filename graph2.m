function [] = graph2()
    %A left horizontal line 
    graph1(); 
    hold on;
    x2 = linspace(0,10); 
    y2 = zeros(length(x2));
    plotMatrix = [x2;y2]; 
    plot(plotMatrix(1,:),plotMatrix(2,:),'LineWidth',4); 
    hold on;
    
end