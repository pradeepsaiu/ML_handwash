function temp = dev_feature(inp_data)
     
%     a = inp_data(25:600);
%     inp_data = t2_gyro_x(20:600);

    [a_size,~] = size(inp_data);

    temp = zeros(a_size,1);

    i = 1;

    %using a sliding window of ten seconds and accumilating the deviation.
    while( i < a_size - 14)
%         updating each value with standard deviation value of next 10
%         samples
%             temp(i) =  std(inp_data(i:i+10))  ;
        

%         Using vairance instead of standard deviation.
        temp(i) =  var(inp_data(i:i+10))  ;
               
        i=i+1 ;
    end 
    
    
%     To verify how it works      
%     figure;
%     plot(a);
%     plot(temp);
%ending function body
% end
