function [gray_img]=inverse_log(img,sca)
    [r,c,d]=size(img);
    rgb_img=zeros(r,c);
    gray_img=zeros(r,c);
    img=im2double(img);
    for i = 1 : r
        for j = 1 : c
            if d == 3
                for a = 1 : d
                    rgb_img(i,j,a) = (exp(img(i,j,a) + 1)) * sca ;
                end
            else
                gray_img(i,j) = (exp(img(i,j)) + 1) * sca ;
            end
        end
    end
    %rgb_img=im2uint8(rgb_img);
    gray_img=im2uint8(gray_img);
    img=im2uint8(img);
    imshow(img),figure,imshow(gray_img);
end