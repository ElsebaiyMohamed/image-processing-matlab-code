function [new_image] = uniform(img,a,b)
img=double(img);
[h ,w ,l]=size(img);
nom_of_pixel=round((1/(b-a))*w*h);
for i=1:255
    
     for x=1:nom_of_pixel
         row=ceil(rand(1,1)*h);
         colom=ceil(rand(1,1)*w);
         img(row,colom)= img(row,colom)+1;
     end
       
end
for k=1:1
   mn=min(min(img(:,:,k)));
   mx=max(max(img(:,:,k)));
   new_image(:,:,k)=((img(:,:,k)-mn)/(mx-mn))*255;  
end    

 new_image=uint8(new_image) ;
 img=uint8(img);
imshow(new_image),figure, imshow(img);
end