function [] = endGame()
    %Create a figure witth black color at point x = 0.5, y = 0.5 with
    %yellow color text and the text is put at the middle of the figure.
    figure('Color','black','Menu','none');
    text(0.5, 0.5,"Thank you for playing",'Rotation',0,'FontSize',35,'Color','y','HorizontalAlignment','Center','VerticalAlignment','Middle');
    axis off; 
end 