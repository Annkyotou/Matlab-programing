img1=imread('F:\Test for Bubble concrete\Matlab\img1.png');    
%imshow(img1);

 lighter = 2 *img1;

  %  subplot(1,2,1);
  %  imshow(img1);
  %  title('Original');  % Display image

  %  subplot(1,2,2);
  %  imshow(lighter);
  %  title('Lighter');    % Display image

  % imwrite(lighter, 'mysaved.jpg');

 black = rgb2gray(img1);  %缩放
 imshow(black); zoom on ;

%imag_edge1=edge(img1,'sobel');       %sobel边缘提取算法
%subplot(121),imshow(imag_edge1)
%imag_edge2=edge(img1,'canny');       %canny边缘提取算法
%subplot(122),imshow(imag_edge2)

