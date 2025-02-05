function [] = graph10()
    graph9();    
    %Draw a right leg 
    y = linspace(5,2); 
    x = linspace(17,19);
    plotMatrix = [x; y]; 
    plot(plotMatrix(1,:),plotMatrix(2,:),'LineWidth',4);
end