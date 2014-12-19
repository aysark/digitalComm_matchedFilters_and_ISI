function [  ] = p3(  )
    
    X = [230 36 0 0;
        97 230 36 0;
        37 97 230 36;
        18 37 97 230;];
    z = [0; 1; 0; 0];
    c = inv(X) * z
    c_ls = inv(transpose(X)*X)*transpose(X)*z
    
    I = [1 0 0 0;
         0 1 0 0;
         0 0 1 0;
         0 0 0 1] / 5
    c_mmse = inv(I + transpose(X)*X)*transpose(X)*z
end

