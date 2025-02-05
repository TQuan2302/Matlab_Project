function [] = graph6()
    graph5(); 
    %Draw a body 
    y = linspace(5,9); 
    x = 17.*ones(1,length(y));
    plotMatrix = [x; y]; 

    plot(plotMatrix(1,:),plotMatrix(2,:),'LineWidth',4); 

end