% Uncomment to see how raw input data looks
% plotting_graphs;

% Generating the feature vectors
% i/p: raw data values in range 20:600 (filtering data at begining of gesture and at the end.)
% o/p: single column, with variance or standard deviation as feature. with
% one gesture after the other linearly arranged.

feature1 = generateFeature(c1_gyro_x,p2_gyro_x,t2_gyro_x,20,600,'Gyroscope X axis');
feature2 = generateFeature(c1_accel_y,p2_accel_y,t2_accel_y,20,600,'Accel Y axis'); 
feature3 = generateFeature(c1_gyro_y,p2_gyro_y,t2_gyro_y,20,600,'Gyroscope Y axis');
feature4 = generateFeature(c1_accel_z,p2_accel_z,t2_accel_z,20,600,'Accel Z axis');


feature5 = generateFeature(c2_gyro_x,p1_gyro_x,t1_gyro_x,20,200,'Gyroscope X axis');
feature6 = generateFeature(c2_accel_y,p1_accel_y,t1_accel_y,20,200,'Accel Y axis'); 
feature7 = generateFeature(c2_gyro_y,p1_gyro_y,t1_gyro_y,20,200,'Gyroscope Y axis');
feature8 = generateFeature(c2_accel_z,p1_accel_z,t1_accel_z,20,200,'Accel Z axis');




cv_X = [feature5,feature6,feature7,feature8];

[q, r] = size(cv_X);

cv_X = [ones(q, 1) cv_X];

cv_feature_size = size(feature5);
% labeling the actual output matrix.
cv_target_matrix = zeros(cv_feature_size);

cv_gesture_size = cv_feature_size(1)/3;

% One vs All classifier, identifying circular as gesture, and remaining non
% circular gestures with zero matrix.
cv_target_matrix(1:cv_gesture_size,:)= zeros(cv_gesture_size,1);

cv_target_matrix(cv_gesture_size+1:(2*cv_gesture_size),:)= ones(cv_gesture_size,1);

cv_target_matrix((2*cv_gesture_size)+1:(3*cv_gesture_size),:)=zeros(cv_gesture_size,1);


feature_size = size(feature1);
% labeling the actual output matrix.
target_matrix = zeros(feature_size);

gesture_size = feature_size(1)/3;

% One vs All classifier, identifying circular as gesture, and remaining non
% circular gestures with zero matrix.
target_matrix(1:gesture_size,:)= ones(gesture_size,1);

target_matrix(gesture_size+1:(2*gesture_size),:)= zeros(gesture_size,1);

target_matrix((2*gesture_size)+1:(3*gesture_size),:)=zeros(gesture_size,1);


%Generating Theta values

X = [feature1,feature2,feature3,feature4];
% ============ Part 2: Compute Cost and Gradient ============
%  In this part of the exercise, you will implement the cost and gradient
%  for logistic regression. You neeed to complete the code in
%  costFunction.m

%  Setup the data matrix appropriately, and add ones for the intercept term
[m, n] = size(X);

% Add intercept term to x and X_test
X = [ones(m, 1) X];


% Initialize fitting parameters
initial_theta = zeros(n + 1, 1);

% Compute and display initial cost and gradient
[cost, grad] = costFunction(initial_theta, X, target_matrix);

fprintf('Cost at initial theta (zeros): %f\n', cost);
fprintf('Gradient at initial theta (zeros): \n');
fprintf(' %f \n', grad);

fprintf('\nProgram paused. Press enter to continue.\n');
pause;


% ============= Part 3: Optimizing using fminunc  =============
%  In this exercise, you will use a built-in function (fminunc) to find the
%  optimal parameters theta.

%  Set options for fminunc
options = optimset('GradObj', 'on', 'MaxIter', 400);

%  Run fminunc to obtain the optimal theta
%  This function will return theta and the cost
[theta, cost] = ...
	fminunc(@(t)(costFunction(t, X, target_matrix)), initial_theta, options);

% Print theta to screen
fprintf('Cost at theta found by fminunc: %f\n', cost);
fprintf('theta: \n');
fprintf(' %f \n', theta);
%
% Cost at theta found by fminunc: 0.016498 for circular = 1
% theta: 
%  -0.683134 
%  -5.415604 
%  3.107873 
%  40.690133 
%  -3.423158 

% palm to palm

% Cost at theta found by fminunc: -7.053224
% theta: 
%  0.873900 
%  -0.393622 
%  -0.926411 
%  32.397109 
%  0.452698 

%thumb rotation.
% Cost at theta found by fminunc: -9.869411
% theta: 
%  -0.187224 
%  0.238418 
%  0.167352 
%  -1.097563 
%  0.101743 

% ============== Part 4: Predict and Accuracies ==============
%  After learning the parameters, you'll like to use it to predict the outcomes
%  on unseen data. In this part, you will use the logistic regression model
%  to predict the probability that a student with score 45 on exam 1 and
%  score 85 on exam 2 will be admitted.
%
%  Furthermore, you will compute the training and test set accuracies of
%  our model.
%
%  Your task is to complete the code in predict.m

%  Predict probability for a student with score 45 on exam 1
%  and score 85 on exam 2
% 
prob = sigmoid([1 0.0469729272224528 2.85693591656568 0.162277744626729 0.508253096618543] * theta);
fprintf(['For circular ' ...
         'probability of %f\n\n'], prob);

% 
% % Compute accuracy on our different cross validation. set
% p = predict(theta, cv_X);
% 
% fprintf('Testing Accuracy: %f\n', mean(double(p == cv_target_matrix)) * 100);
% 
% fprintf('\nProgram paused. Press enter to continue.\n');
% pause;
% 
% 
