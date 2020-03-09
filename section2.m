% Section II: Statistical Analysis and Data Visualisation (30%)

% Task 5

mpg_train = data_train2(:,1);
horsepower_train = data_train2(:,4);
weight_train = data_train2(:,5);
acceleration_train = data_train2(:,6);

mpg_test = data_test2(:,1);
horsepower_test = data_test2(:,4);
weight_test = data_test2(:,5);
acceleration_test = data_test2(:,6);

% Estimates mean, median, min, max and standard deviation of mpg

mpg_mean = mean(mpg_train);
mpg_median = median(mpg_train);
mpg_min = min(mpg_train);
mpg_max = max(mpg_train);
mpg_std = std(mpg_train);

% Estimates mean, median, min, max and standard deviation of acceleration

acc_mean = mean(acceleration_train);
acc_median = median(acceleration_train);
acc_min = min(acceleration_train);
acc_max = max(acceleration_train);
acc_std = std(acceleration_train);

% Estimates mean, median, min, max and standard deviation of horsepower

hp_mean = mean(horsepower_train);
hp_median = median(horsepower_train);
hp_min = min(horsepower_train);
hp_max = max(horsepower_train);
hp_std = std(horsepower_train);

% Estimates mean, median, min, max and standard deviation of weight

weight_mean = mean(weight_train);
weight_median = median(weight_train);
weight_min = min(weight_train);
weight_max = max(weight_train);
weight_std = std(weight_train);

% Display the statistics in a table

Variable = categorical(["mpg";"acceleration";"horsepower";"weight"]);
Mean = [mpg_mean;acc_mean;hp_mean;weight_mean];
Median = [mpg_median;acc_median;hp_median;weight_median];
Min = [mpg_min;acc_min;hp_min;weight_min];
Max = [mpg_max;acc_max;hp_max;weight_max];
StandardDeviation = [mpg_std;acc_std;hp_std;weight_std];
T = table(Variable, Mean, Median, Min, Max, StandardDeviation);

% Task 6
%a
% Creates box plot for mpg

mpg_box = boxplot(mpg_train);
ylabel('Miles per Gallon')
title('Miles per Gallon')

figure()

%b
% Creates box plot for acceleration

acc_box = boxplot(acceleration_train);
ylabel('Acceleration')
title('Acceleration')

figure()

%c
% Creates box plot for horsepower

hp_box = boxplot(horsepower_train);
ylabel('Horsepower')
title('Horsepower')

figure()

%d
% Creates box plot for weight

weight_box = boxplot(weight_train);
ylabel('Weight')
title('Weight')

figure()

%e
% Creates scatter plot of acceleration vs mpg

acc_mpg_scatter = scatter(acceleration_train, mpg_train);
xlabel('Acceleration')
ylabel('Miles per Gallon')
title('Acceleration vs. Miles per Gallon')

figure()

%f
% Creates scatter plot of horsepower vs mpg

hp_mpg_scatter = scatter(horsepower_train, mpg_train);
xlabel('Horsepower')
ylabel('Miles per Gallon')
title('Horsepower vs. Miles per Gallon')

figure()

%g
% Creates scatter plot of weight vs mpg

weight_mpg_scatter = scatter(weight_train, horsepower_train);
xlabel('Weight')
ylabel('Horsepower')
title('Weight vs. Horsepower')


