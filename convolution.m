function [G] = convolution(F, H)
  % Convolution of image F with kernel H
  % H must have odd height and width
  % Result : image G

  [height_f, width_f] = size(F);
  [height_h, width_h] = size(H);

  m2 = floor(height_h/2);
  n2 = floor(width_h/2);
  F2=double(F);

  for y=m2+1 : height_f-m2
    for x=n2+1 : width_f-n2
      % Process convolution F(row, column)
      total = 0;
      for p=-m2 : m2
        for q=-n2 : n2
          total = total + H(p+m2+1,q+n2+1) * F2(y-p, x-q);
        endfor
      endfor

      G(y-m2, x-n2) = total;
     endfor
  endfor
end

