%Function to draw a platform
function [] = graph1()
            %Draw a platform
            %A vertical line
            y1 = linspace(0,15); 
            x1 = 10.*ones(1,length(y1));
            plotMatrix = [x1;y1]; 
            plot(plotMatrix(1,:),plotMatrix(2,:),'LineWidth',4); 
            hold on;
end