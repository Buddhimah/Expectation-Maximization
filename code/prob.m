function p = prob(point, mu, sigma, lambda)
%{
%% calculate probability / likelihood
% Probability that given a set of parameters \theta for the PDFs the data X can be
% observed.; this is equivalent of the likelihood of the parameters \theta
% given data points X
%
% point = [x]
% mu = 1x1
% sigma = 1
% lambda = 1x2
% sigma has to be square (actually semi definite positive)
% TODO: check sigma for that and fix it if it is not.
%}
p = lambda;
for ii = 1:length(point)
    p = p * normpdf(point, mu, sigma);
end
end