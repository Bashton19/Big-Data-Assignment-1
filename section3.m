% Section III: Regression Analysis (40%)

% Task 7

% Inputs acceleration and mpg from training data into a table

tbl7 = table(acceleration_train,mpg_train);

% Creates linear model of acceleration and mpg

lm7 = fitlm(tbl7, 'linear')

% Predicts mpg values

pred_mpg7 = 1.082*acceleration_train+4.304;

% Calculates mean squared error (31.2521) between the ground truth mpg values, and
% the predicted mpg values

mse_mpg7 = mean((pred_mpg7-mpg_train).^2)

% Task 8

% Inputs acceleration and mpg from test data into a table

tbl8 = table(acceleration_test,mpg_test);

% Creates linear model of acceleration and mpg

lm8 = fitlm(tbl8, 'linear')

% Predicts mpg values

pred_mpg8 = 0.22686*acceleration_test+27.981;

% Calculates mean squared error (34.1972) between the ground truth mpg values and
% the predicted mpg values

mse_mpg8 = mean((pred_mpg8-mpg_test).^2)

% Creates scatter plot of ground truth mpg values and predicted mpg values

figure()
scatter_lm8 = scatter(mpg_test,pred_mpg8);
xlabel('Ground Truth MPG Values')
ylabel('Predicted MPG Values')
title('MPG and Predicted MPG: Linear Regression between Acceleration and MPG')

% Task 9

% Inputs horsepower and mpg from training data into a table

tbl9 = table(horsepower_train,mpg_train);

% Creates linear model of horsepower and mpg

lm9 = fitlm(tbl9, 'linear')

% Predicts mpg values

pred_mpg9 = -0.1251*horsepower_train+34.777;

% Calculates mean squared error (14.2560) between the ground truth mpg values and
% the predicted mpg values

mse_mpg9 = mean((pred_mpg9-mpg_train).^2)

% Task 10

% Inputs horsepower and mpg from test data into a table

tbl10 = table(horsepower_test, mpg_test);

% Creates linear model of horsepower and mpg

lm10 = fitlm(tbl10, 'linear')

% Predicts mpg values

pred_mpg10 = -0.23069*horsepower_test+50.426;

% Calculates mean squared error (18.9761) between the ground truth mpg values and
% the predicted mpg values

mse_mpg10 = mean((pred_mpg10-mpg_test).^2)

% Creates scatter plot of ground truth mpg values and predicted mpg values

figure()
scatter_lm10 = scatter(mpg_test, pred_mpg10);
xlabel('Ground Truth MPG Values')
ylabel('Predicted MPG Values')
title('MPG and Predicted MPG: Linear Regression between Horsepower and MPG')

% Task 11 

% Inputs weight and horsepower from training data into a table

tbl11 = table(weight_train,horsepower_train);

% Creates linear model of weight and horsepower

lm11 = fitlm(tbl11, 'linear')

% Predicts horsepower values

pred_hp11 = 0.03922*weight_train-10.86;

% Calculates mean squared error (419.3040) between the ground truth
% horsepower values and the predicted horsepower values

mse_hp11 = mean((pred_hp11-horsepower_train).^2)

% Task 12

% Inputs weight and horsepower from the test data into a table

tbl12 = table(weight_test,horsepower_test);

% Creates a linear model of weight and horsepower

lm12 = fitlm(tbl12, 'linear')

% Predicts horsepower values

pred_hp12 = 0.024968*weight_test+18.746;

% Calculates mean squared error (162.0673) between the ground truth
% horsepower values and the predicted horsepower values

mse_hp12 = mean((pred_hp12-horsepower_test).^2)

% Creates scatter plot of ground truth horsepower values and predicted
% horsepower values

figure()
scatter_lm12 = scatter(horsepower_test, pred_hp12);
xlabel('Ground Truth Horsepower Values')
ylabel('Predicted Horsepower Values')
title('Horsepower and Predicted Horsepower Based on Linear Regression between Weight and Horsepower')

