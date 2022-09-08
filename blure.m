function [final_img] = blure(old_img,m_row,m_col)
    [old_rows,old_col]=size(old_img);
    row_padding=m_row-ceil(m_row/2);
    col_padding=m_col-ceil(m_col/2);
    mask=ones(m_row,m_col)/(m_row * m_col);
    final_img=double(zeros(old_rows,old_col));
    padding_img=zeros(old_rows + 2 * row_padding , old_col + 2 * col_padding );
    padding_img( row_padding + 1 : old_rows + row_padding , col_padding + 1 : old_col + col_padding ) = old_img;
    padding_img=double(padding_img);
    for i = row_padding + 1 : old_rows + row_padding 
        for j = col_padding + 1 : old_col + col_padding
            %padding_img(i,j)=old_img()
            empty_mask=mask .* padding_img( i - row_padding : i + row_padding , j - col_padding : j + col_padding ); 
            final_img(i - row_padding ,j - col_padding )= sum(sum(empty_mask));
        end
    end
    final_img=uint8(final_img);
    imshow(old_img),figure,imshow(final_img);
end