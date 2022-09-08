function [gray_img]=graylog(img,z)
    [r,c]=size(img);
    gray_img=im2double(zeros(r,c));
    img=im2double(img);
    
    for i = 1 : r
        for j = 1 : c
            gray_img(i,j)=log(img(i,j)+1)*z;
        end
    end
    
    gray_img=im2uint8(gray_img);
    img=im2uint8(img);
    imshow(img),figure,imshow(gray_img);
end
