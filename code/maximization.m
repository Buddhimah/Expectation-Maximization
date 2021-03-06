function[ Param points_in_cluster0 percent_cluster0] = maximization(Data, Param)
%{ 
This function calculates the second step of the EM algorithm, Maximization.
It updates the parameters of the Normal distributions according to the new 
labled dataset.

Input: 
    Data : nx3 (number of data points , [x, y, label])
    Param: (mu, sigma, lambda)

Output: 
    Param: updated parameters 
%}
points_in_cluster0 = Data(Data(:,2) == 0,:);
points_in_cluster1 = Data(Data(:,2) == 1,:);
points_in_cluster2 = Data(Data(:,2) == 2,:);
points_in_cluster3 = Data(Data(:,2) == 3,:);
points_in_cluster4 = Data(Data(:,2) == 4,:);
points_in_cluster5 = Data(Data(:,2) == 5,:);
points_in_cluster6 = Data(Data(:,2) == 6,:);
points_in_cluster7 = Data(Data(:,2) == 7,:);
points_in_cluster8 = Data(Data(:,2) == 8,:);
points_in_cluster9 = Data(Data(:,2) == 9,:);


percent_cluster0 = size(points_in_cluster0,1) / size(Data,1);
percent_cluster1 = size(points_in_cluster1,1) / size(Data,1);
percent_cluster2 = size(points_in_cluster2,1) / size(Data,1);
percent_cluster3 = size(points_in_cluster3,1) / size(Data,1);
percent_cluster4 = size(points_in_cluster4,1) / size(Data,1);
percent_cluster5 = size(points_in_cluster5,1) / size(Data,1);
percent_cluster6 = size(points_in_cluster6,1) / size(Data,1);
percent_cluster7 = size(points_in_cluster7,1) / size(Data,1);
percent_cluster8 = size(points_in_cluster8,1) / size(Data,1);
percent_cluster9 = size(points_in_cluster9,1) / size(Data,1);

% calculate the weights
Param.lambda = [percent_cluster0, percent_cluster1,percent_cluster2,percent_cluster3,percent_cluster4,percent_cluster5,percent_cluster6,percent_cluster7,percent_cluster8,percent_cluster9];

% calculate the means
Param.mu0 = mean(points_in_cluster0(:,1));
Param.mu1 = mean(points_in_cluster1(:,1));
Param.mu2 = mean(points_in_cluster2(:,1));
Param.mu3 = mean(points_in_cluster3(:,1));
Param.mu4 = mean(points_in_cluster4(:,1));
Param.mu5 = mean(points_in_cluster5(:,1));
Param.mu6 = mean(points_in_cluster6(:,1));
Param.mu7 = mean(points_in_cluster7(:,1));
Param.mu8 = mean(points_in_cluster8(:,1));
Param.mu9 = mean(points_in_cluster9(:,1));


% calculate the variances
Param.sigma0 = std(points_in_cluster0(:,1));
Param.sigma1 = std(points_in_cluster1(:,1)) ;
Param.sigma2 = std(points_in_cluster2(:,1)) ;
Param.sigma3 = std(points_in_cluster3(:,1)) ;
Param.sigma4 = std(points_in_cluster4(:,1)) ;
Param.sigma5 = std(points_in_cluster5(:,1)) ;
Param.sigma6 = std(points_in_cluster6(:,1)) ;
Param.sigma7 = std(points_in_cluster7(:,1)) ;
Param.sigma8 = std(points_in_cluster8(:,1)) ;
Param.sigma9 = std(points_in_cluster9(:,1)) ;


end