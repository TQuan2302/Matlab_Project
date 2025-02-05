function [] = graph7()
    graph6(); 
    %Draw a left hand 
    y = linspace(8,6); 
    x = linspace(15,17);
    plotMatrix = [x; y]; 

    
    plot(plotMatrix(1,:),plotMatrix(2,:),'LineWidth',4);
end