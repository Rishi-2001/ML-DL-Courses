   % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %
num_iters=1;
m=length(y);
J_history=zeros(num_iters,1);
gradient=zeros(2,1);  % stores the slope of cost function w.r.t the parameters
for iter=1:num_iters,
  prediction=X*theta;   % calculate the hypothesis h(theta)
  w=prediction-y;
  for j=1:2,
    gradient(j)=(1/m)*((X(:,j))'*w);
  end
  
  
  % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);
    
    
  
  % simultaneous update of the parameters in vector theta
  theta-=alpha*gradient;
    
  % ============================================================

    

end

end