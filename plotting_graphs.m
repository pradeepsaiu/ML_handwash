% To Plot graphs from each gesture
% among the same axis in single figure
figure;
plot(c1_gyro_x(50:600),'red');
hold on;
plot(p2_gyro_x(50:600),'blue');
hold on;
plot(t2_gyro_x(50:600),'black');
hold on;
plot(cw1_gyro_x(50:600),'green');
hold on;
plot(o_gyro_x(50:600),'yellow');
hold on;
plot(idle2_gyro_x(50:600),'magenta');
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
plot(cw1_accel_y(50:600),'green');
hold on;
plot(o_accel_y(50:600),'yellow');
hold on;
plot(idle2_gyro_y(50:600),'magenta');
hold on;

title('Acceleration along Y axis');
legend('Circular','Palm to Palm','Thumb rotation');
xlabel('Time');
ylabel('Y axis magnitude');

figure;
plot(c1_accel_x(50:600),'red');
hold on;
plot(p2_accel_x(50:600),'blue');
hold on;
plot(t2_accel_x(50:600),'black');
hold on;
plot(cw1_accel_x(50:600),'green');
hold on;
plot(o_accel_x(50:600),'yellow');
hold on;
plot(idle2_accel_x(50:600),'magenta');
hold on;

title('Acceleration along X axis');
legend('Circular','Palm to Palm','Thumb rotation','Closed Wrist','over the hand');
xlabel('Time');
ylabel('X axis magnitude');

figure;
plot(c1_accel_z(50:600),'red');
hold on;
plot(p2_accel_z(50:600),'blue');
hold on;
plot(t2_accel_z(50:600),'black');
hold on;
plot(cw1_accel_z(50:600),'green');
hold on;
plot(o_accel_z(50:600),'yellow');
hold on;
plot(idle2_accel_z(50:600),'magenta');
hold on;

title('Acceleration along Z axis');
legend('Circular','Palm to Palm','Thumb rotation','Closed Wrist','Over the hand');
xlabel('Time');
ylabel('Z axis magnitude');


figure;
plot(c1_gyro_y(50:600),'red');
hold on;
plot(p2_gyro_y(50:600),'blue');
hold on;
plot(t2_gyro_y(50:600),'black');
hold on;
plot(cw1_gyro_y(50:600),'green');
hold on;
plot(o_gyro_y(50:600),'yellow');
hold on;
plot(idle2_gyro_y(50:600),'magenta');
hold on;

title('Gyroscope along Y axis');
legend('Circular','Palm to Palm','Thumb rotation');
xlabel('Time');
ylabel('Y axis magnitude');

figure;
plot(c1_gyro_z(50:600),'red');
hold on;
plot(p2_gyro_z(50:600),'blue');
hold on;
plot(t2_gyro_z(50:600),'black');
hold on;
plot(cw1_gyro_z(50:600),'green');
hold on;
plot(o_gyro_z(50:600),'yellow');
hold on;
plot(idle2_gyro_z(50:600),'magenta');
hold on;

title('Gyroscope along Z axis');
legend('Circular','Palm to Palm','Thumb rotation','Closed Wrist','Over teh hand');
xlabel('Time');
ylabel('Z axis magnitude');

