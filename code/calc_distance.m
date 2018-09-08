function d = calc_distance(Param, Param_)
%{ 
This function calculates the distance between two sets of parameters. 

Input: 
    Param : old parameters
    Param_: new parameters

Output: 
    d: semi-Euclidean distance
%}

d = norm(Param.mu0 - Param_.mu0) + norm(Param.mu1 - Param_.mu1)

+norm(Param.mu2 - Param_.mu2)
+norm(Param.mu3 - Param_.mu3)
+norm(Param.mu4 - Param_.mu4)
+norm(Param.mu5 - Param_.mu5)
+norm(Param.mu6 - Param_.mu6)
+norm(Param.mu7 - Param_.mu7)
+norm(Param.mu8 - Param_.mu8)
+norm(Param.mu9 - Param_.mu9);

% d= sqrt((Param.mu1(1,1) - Param_.mu1(1,1))^2 + (Param.mu1(1,2) - Param_.mu1(1,2))^2 + ...
%     (Param.mu2(1,1) - Param_.mu2(1,1))^2 + (Param.mu2(1,2) - Param_.mu2(1,2))^2);
end