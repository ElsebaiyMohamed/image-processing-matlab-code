function [stImg] = contrastStrerting(img,new_min,new_max)
    l=255;    
    old_min=min(min(img));
    old_max=max(max(img));
   % 1-> Calculate the slope of the straight line
    %a=new_min/old_min;
    b=(new_max-new_min)/(old_max-old_min);
    g=(l-new_max)/(l-new_max);
    % 2-> define and show original picture
    [x, y]=size(img);
    stImg=zeros(x,y);
    stImg=double(stImg);
    subplot(2,2,1);imshow(img);title("original picture");
    subplot(2,2,2);imhist(img);title("histagram of original picture"); 
    % 3-> loop in img if pixel is in any line-> apply law >>> [stImg(i,j)= ( ( img(i,j) - old_min )/(old_max - old_min) )*(new_max - new_min) + new_min ;] 
    for i=1:x
       for j=1:y
           if img(i,j)<=old_min
               %r=img(i,j);
           elseif img(i,j)>=old_min &&  img(i,j)<=150
               r=img(i,j);
               img(i,j)=(b*(r-old_min)+new_min);
           else
               r=img(i,j);
               img(i,j)=(g*(r-old_max))+new_max;
           end

       end
    end
    
   % 4-> show original picture after loop
   subplot(2,2,3);imshow(img);title("new picture"); 
   subplot(2,2,4);imhist(img);title("histagram of new picture");
end