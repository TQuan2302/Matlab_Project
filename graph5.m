function [] = graph5()
    graph4(); 
    
    %Call graph 2
    graph2(); 
    %Define a center for a circle; 
    RADIUS = 2; 
    
    %Theta from 0 to 2*pi which is 1 revolution
    thetaArray = linspace(0,2*pi,200);
   
    %Generate x coordinate for the circle by shift right the graph 17 units: 
    xCoordinateArray = RADIUS*cos(thetaArray) + 17;
    
    %Generate y coordinate for the circle by shift up the fraph 10 units : 
    yCoordinateArray = RADIUS*sin(thetaArray) + 11; 

    plotMatrix = [xCoordinateArray; yCoordinateArray]; 

    %Plot the circle
    plot(plotMatrix(1,:),plotMatrix(2,:),'LineWidth',4); 

end