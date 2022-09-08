%for rgb pictures 
function [] =histogramrgb(img)
    [H W L] =size(img);
%create new array
    histo=zeros(256,1);
    for i=1:H
        for j=1:W
            histo(img(i,j,1)+1)=histo(img(i,j,1)+1)+1;
            histo(img(i,j,2)+1)=histo(img(i,j,2)+1)+1;
            histo(img(i,j,3)+1)=histo(img(i,j,3)+1)+1;
        end
    end  
    imshow(img),figure,bar(histo);
end

%a=imread('peppers.png');
%histogramrgb(a);