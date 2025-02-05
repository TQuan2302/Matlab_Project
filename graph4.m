function [] = graph4()
    
    %Call graph1
    graph3();
    %Draw a rope
    y = linspace(13,15); 
    x = 17.*ones(1,length(y));
    plotMatrix = [x;y]; 
    plot(plotMatrix(1,:),plotMatrix(2,:),'LineWidth',4); 
    

end