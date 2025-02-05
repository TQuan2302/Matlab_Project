function [] = graph8()
    graph7(); 
    
    %Draw a right hand 
    y = linspace(6,8); 
    x = linspace(17,19);
    plotMatrix = [x; y]; 

    
    plot(plotMatrix(1,:),plotMatrix(2,:),'LineWidth',4);

end