function [new] = gamma_correction(img,ga)
img=im2uint8(img);

r=0:255;

s=r.^ga;

s=(s/max(s))*255;

figure;plot(r,s);title('gamma function');

new=s(img+1);

new=uint8(new);

imshow(img),figure,imshow(new);

end