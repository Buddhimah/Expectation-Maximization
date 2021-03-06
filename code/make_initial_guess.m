function Param = make_initial_guess()
%{ 
This function makes an inital guess for the EM algorithm to start from
Here we make the initial parameters manually but they can be calculated 
using methods such as k-means.

Input: 

Output: 
    Param: a structure containing the parameters of the two Normal 
        Distributions mu1 (1x2), mu2 (1x2), sigma1 (2x2), sigma2 (1x2), 
        lambda1 (1x1), lambda2 (1x1)
%}

Param = struct();
Param.mu0 = 61;
Param.mu1 = 50;
Param.mu2 = 51;
Param.mu3 = 52;
Param.mu4 = 54;
Param.mu5 = 55;
Param.mu6 = 56;
Param.mu7 = 45;
Param.mu8 = 48;
Param.mu9 = 60;

Param.sigma0 = 0.1;
Param.sigma1 = 0.3;
Param.sigma2 = 0.5;
Param.sigma3 = 0.5;
Param.sigma4 = 0.5;
Param.sigma5 = 0.5;
Param.sigma6 = 0.5;
Param.sigma7 = 0.5;
Param.sigma8 = 0.5;
Param.sigma9 = 0.5;

Param.lambda = [0.1 0.2 0 0.1 0.1 0.1 0.3 0 0 0];
end