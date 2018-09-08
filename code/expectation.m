function Data = expectation(Data, Param)
%{ 
This function calculates the first step of the EM algorithm, Expectation.
It calculates the probability of each specific data point belong to each
cluster or class

Input: 
    Data : nx3 (number of data points , [x, y, label])
    Param: (mu, sigma, lambda)

Output: 
    Data: the dataset with updated labels
%}

for ii = 1: size(Data,1)
    x = Data(ii);
    p_cluster0 = prob(x, Param.mu0, Param.sigma0, Param.lambda(1));
    p_cluster1 = prob(x, Param.mu1, Param.sigma1, Param.lambda(2));
    p_cluster2 = prob(x, Param.mu2, Param.sigma2, Param.lambda(3));
    p_cluster3 = prob(x, Param.mu3, Param.sigma3, Param.lambda(4));
    p_cluster4 = prob(x, Param.mu4, Param.sigma4, Param.lambda(5));
    p_cluster5 = prob(x, Param.mu5, Param.sigma5, Param.lambda(6));
    p_cluster6 = prob(x, Param.mu6, Param.sigma6, Param.lambda(7));
    p_cluster7 = prob(x, Param.mu7, Param.sigma7, Param.lambda(8));
    p_cluster8 = prob(x, Param.mu8, Param.sigma8, Param.lambda(9));
    p_cluster9 = prob(x, Param.mu9, Param.sigma9, Param.lambda(10));
    [M,I] = max([p_cluster0 p_cluster1 p_cluster2 p_cluster3 p_cluster4 p_cluster5 p_cluster6 p_cluster7 p_cluster8 p_cluster9]) ;
    
    
        Data(ii, 3) = I-1;
    
        
    
end
end