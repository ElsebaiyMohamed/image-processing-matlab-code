function [new_image] = Gaussian_low_pass(old_image)
    [r,c] = size(old_image);
    f_image = zeros(r,c);
    z=complex(0,-2*pi);
    for i = 1 : r
        for a = 1 : c
            f=0;
            for x = 1 : r 
                for y = 1 : c
                    f = f + old_image(x,y) * exp(z*(((i*x)/r))+((a*y)/c));
                end
            end
            f_image(i,a) = f ;
        end
    end
    imshow(f_image);

end