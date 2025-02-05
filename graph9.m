function [] = graph9()
    graph8();    
    %Draw a left leg 
    y = linspace(2,5); 
    x = linspace(15,17);
    plotMatrix = [x; y]; 
    plot(plotMatrix(1,:),plotMatrix(2,:),'LineWidth',4);
end