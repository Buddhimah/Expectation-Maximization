function cluster = find_cluster(number,Clustered_Data)

numbercontaining=Clustered_Data(Clustered_Data(:,1) == number,:);
    
    clusters  =numbercontaining(:,3);
    cluster = clusters(1);
    
    

