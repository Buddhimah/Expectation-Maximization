function [cluster,count] = get_cluster_ans(data_set,Clustered_Data)

count = zeros(10,1);
for i =1:size(data_set,2)
    temp=find_cluster(data_set(i),Clustered_Data);
    count(temp+1)=count(temp+1)+1;
end
  [M,I]= max(count);
  
  cluster = I;
  
    
    