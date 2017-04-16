% To Plot graphs from each gesture
% among the same axis in single figure
figure;
plot(c1_gyro_x(50:600),'red');
hold on;
plot(p2_gyro_x(50:600),'blue');
hold on;
plot(t2_gyro_x(50:600),'black');
hold on;
title('Gyroscope along X axis');
legend('Circular','Palm to Palm','Thumb rotation');
xlabel('Time');
ylabel('X axis magnitude');


figure;
plot(c1_accel_y(50:600),'red');
hold on;
plot(p2_accel_y(50:600),'blue');
hold on;
plot(t2_accel_y(50:600),'black');
hold on;
title('Acceleration along Y axis');
legend('Circular','Palm to Palm','Thumb rotation');
xlabel('Time');
ylabel('Y axis magnitude');


figure;
plot(c1_gyro_y(50:600),'red');
hold on;
plot(p2_gyro_y(50:600),'blue');
hold on;
plot(t2_gyro_y(50:600),'black');
hold on;
title('Gyroscope along Y axis');
legend('Circular','Palm to Palm','Thumb rotation');
xlabel('Time');
ylabel('Y axis magnitude');

