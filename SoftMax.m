function output = SoftMax(input)
    
	alpha = max(input(1,1,:));
	s = sum(exp(input(1,1,:)-alpha));
	output = exp(input(1,1,:)-alpha)/s;


end

