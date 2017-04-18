%takes raw data, size of vector to be used and 'std' for standard
%deviation, 'var' for variance
function ret = generateFeature(raw_data1,raw_data2,raw_data3,raw_data4,raw_data5,raw_data6,lower_bound,upper_bound,title_desc,type)
    
%     
%     c1_feature1 = dev_feature( raw_data1(20:600));
%     p2_feature1 = dev_feature( raw_data2(20:600));
%     t2_feature1 = dev_feature( raw_data3(20:600));
    
    c1_feature1 = dev_feature( raw_data1(lower_bound:upper_bound),type);
    p2_feature1 = dev_feature( raw_data2(lower_bound:upper_bound),type);
    t2_feature1 = dev_feature( raw_data3(lower_bound:upper_bound),type);
    cw1_feature1 = dev_feature( raw_data4(lower_bound:upper_bound),type);
    o1_feature1 = dev_feature( raw_data5(lower_bound:upper_bound),type);
    idle_feature1 = dev_feature( raw_data6(lower_bound:upper_bound),type);
    % Each feature should exist inside a column
    % Each column represents a different feature
    % Corresponding to each row number should be target matrix


    ret = [c1_feature1(:);p2_feature1(:);t2_feature1(:);cw1_feature1(:);o1_feature1;idle_feature1];
%     To verify how different the features look from each other on graph.
%     persistent count1;
%     if(isempty(count1))
%        count1=0; 
%     end
%     disp(count1);
%     count1= count1+1;
%     if(count1 == 7)
%         subplot(7,1,count1);
%         count1=0;
%     else
%         subplot(7,1,count1);
%     end
%     figure;
%     plotData(c1_feature1,p2_feature1,t2_feature1,cw1_feature1,o1_feature1,idle_feature1);
%     title(title_desc);
%     legend('Circular','Palm to Palm','Thumb rotation','Closed Wrist','over the hand');
%     xlabel('Time');
%     ylabel('Standard deviation along X axis ');
end