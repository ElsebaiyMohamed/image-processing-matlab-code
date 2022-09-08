function [rgb_img] = rgblog(img,z)
    [r, c ,d]=size(img);
    img=im2double(img);
    rgb_img=im2double(zeros(r,c));
    for i=1:r
        for j = 1 : c
            
                for a =1:d
                    rgb_img(i,j,a)=log(img(i,j,a)+1)*z;
                end
        end
    end
    rgb_img=im2uint8(rgb_img);
    img=im2uint8(img);
    imshow(img),figure,imshow(rgb_img);
end

        
        

