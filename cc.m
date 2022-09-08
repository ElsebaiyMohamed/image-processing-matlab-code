function [x]=cc(old_img)
    m_row=3;
    m_col=3;
    [old_rows,old_col,dim]=size(old_img);
    row_padding=m_row-ceil(m_row/2);
    col_padding=m_col-ceil(m_col/2);
    mask=[1 2 1 ; 2 4 2 ;1 2 1]/16;
    im=double(zeros(old_rows,old_col,dim));
    padding_img=zeros(old_rows + 2 * row_padding , old_col + 2 * col_padding ,dim);
    
    for d = 1 :dim
        padding_img( row_padding + 1 : old_rows + row_padding , col_padding + 1 : old_col + col_padding , d ) = old_img(:,:,d);
    end
    padding_img=double(padding_img);
    for i = row_padding + 1 : old_rows + row_padding 
        for j = col_padding + 1 : old_col + col_padding
            for d = 1 : dim 
           
            %padding_img(i,j)=old_img()
            empty_mask=mask .* padding_img( i - row_padding : i + row_padding , j - col_padding : j + col_padding ,d); 
            im(i - row_padding ,j - col_padding ,d)= sum(sum(empty_mask(:,:)));
            end
        end
    end
    im=uint8(im);
    imshow(im);
end