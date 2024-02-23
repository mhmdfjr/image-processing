# image-processing
## How to use filter files in Octave
- Open this clone repositori as working folder
- Open command window
- Define image for input using imread()
  - I = imread('input/doll.tif');
- Define filtered image with filter file
  - I_meanFilter = meanFilter(I);
- Show filtered image using imshow()
  - imshow(I_meanFilter);
  - imshow(I), figure, imshow(I_meanFilter);
  - subplot(2,2,1), imshow(I_meanFilter), title('mean filter image');
