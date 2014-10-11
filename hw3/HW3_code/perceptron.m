function [w,theta] = perceptron(x,y)
    eta = 1;
    [m,n] = size(x);
    w = zeros(1,n);
    theta = 0;
    for j = 1:20
       for i = 1:m
         if (dot(w,x(i,:))+theta) * y(i) <= 0
            w = w + eta*y(i)*x(i,:);
            theta = theta + eta*y(i);
         end
       end
    end    
end

