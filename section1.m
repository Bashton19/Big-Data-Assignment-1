% Section I: Data Loading and Pre-Processing (30%)

% Task 1

% Reads the training dataset into the workspace

data_train = xlsread('data_train.xlsx');

% 1: mpg, 2: cylinders, 3: displacement, 4: horsepower, 5: weight, 6:
% acceleration, 7: model year, 8: origin, 9: car name

% Finds size of dataset, which is 305 rows, 8 columns

size(data_train)

% Task 2

% Looks for missing values, and removes the rows where they are found

data_train2 = data_train(all(~isnan(data_train),2),:);

% Task 3

% Writes the cleaned dataset into a new file

xlswrite('data_train2.xlsx', data_train2);

% Finds size of dataset, which is 296 rows, 8 columns

size(data_train2)

% Task 4

% Reads the testing dataset into the workspace

data_test = xlsread('data_test.xlsx', 1);

% Finds size of dataset, which is 101 rows, 8 columns

size(data_test)

% Looks for missing values, and removes the rows where they are found

data_test2 = data_test(all(~isnan(data_test),2),:);

% Writes the cleaned dataset into a new file

xlswrite('data_test2.xlsx', data_test2);

% Finds size of dataset, which is 96 rows, 8 columns

size(data_test2)


