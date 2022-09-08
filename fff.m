function [x]=fff(im)
    fftImage = fft2(im);
    fftImageRealPart = real(fftImage);
    [rows, columns] = size(fftImageRealPart);
    lineNumber = floor(rows/2); % Middle row
    oneLine = fftImageRealPart(lineNumber, :);
    plot(oneLine, 'r-', 'LineWidth', 2);
    grid on;
end