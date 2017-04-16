function ret = generateFeature(raw_data1,raw_data2,raw_data3,lower_bound,upper_bound,title_desc)
    
%     
%     c1_feature1 = dev_feature( raw_data1(20:600));
%     p2_feature1 = dev_feature( raw_data2(20:600));
%     t2_feature1 = dev_feature( raw_data3(20:600));
    
    c1_feature1 = dev_feature( raw_data1(lower_bound:upper_bound));
    p2_feature1 = dev_feature( raw_data2(lower_bound:upper_bound));
    t2_feature1 = dev_feature( raw_data3(lower_bound:upper_bound));
    % Each feature should exist inside a column
    % Each column represents a different feature
    % Corresponding to each row number should be target matrix


    ret = [c1_feature1(:);p2_feature1(:);t2_feature1(:)];
%     To verify how different the features look from each other on graph.
    persistent count;
    if(isempty(count))
       count=0; 
    end
    disp(count);
    count= count+1;
    if(count == 4)
        subplot(4,1,count);
        count=0;
    else
        subplot(4,1,count);
    end
   
    plotData(c1_feature1,p2_feature1,t2_feature1);
    title(title_desc);
    legend('Circular','Palm to Palm','Thumb rotation');
    xlabel('Time');
    ylabel('Standard deviation along X axis ');
end