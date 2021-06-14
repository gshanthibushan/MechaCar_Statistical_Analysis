# MechaCar_Statistical_Analysis
Statistics in R programming language

## Linear Regression to Predict MPG

Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
![image](https://user-images.githubusercontent.com/79486450/121827275-69a5ee00-cc89-11eb-9e02-3d264e1b82f0.png)

Is the slope of the linear model considered to be zero? Why or why not?
![image](https://user-images.githubusercontent.com/79486450/121827322-90fcbb00-cc89-11eb-9502-c50e3092d7aa.png)

Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
![image](https://user-images.githubusercontent.com/79486450/121827362-ad005c80-cc89-11eb-97a8-9ec4f107772a.png)

## Summary Statistics on Suspension Coils

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

![image](https://user-images.githubusercontent.com/79486450/121831105-ac20f800-cc94-11eb-843e-a0260cd2d41b.png)

![image](https://user-images.githubusercontent.com/79486450/121831131-b93de700-cc94-11eb-94d8-4e36c680d1da.png)


## T-Tests on Suspension Coils 

![image](https://user-images.githubusercontent.com/79486450/121831769-4fbed800-cc96-11eb-875a-659130389608.png)

![image](https://user-images.githubusercontent.com/79486450/121831806-6ebd6a00-cc96-11eb-80b8-63f6759773d8.png)


## Study Design: MechaCar vs Competition
In order quantify how the MechaCar performs against the competition, we need to create a statistical design experiment.
In this statical study, following will be addressed:

### Metrics:
Need to collect following data for the past years and social media survey on customer preference when trying to purchase new car:
Price of the multiple cars of the same model (MechaCar)
Fuel Efficiency mileage claims of MechaCar vs the multiple cars of the same model
Safety Rating
Maintenance cost
Customer purchase of electric vs Hybrid vs fuel

### Null hypothesis or alternative hypothesis
Null Hypothesis: MechaCar is priced correctly based on the metrics collected and when compared to the competitors
Alternative Hypothesis: MechaCar is priced incorrectly based on the metrics collected and compare to the competitors

### Statistical Tests
Multiple linear regression model would be ideal for the statistical test on the collected dataset; the reason is, it will indicate how the dependent variable change the independent variable. Furthermore, it allows to identify the important factors of the dependent variable.

### Run the statistical test
Price - Dependent Variable
Fuel Efficiency - Independent Variable
Safety Rating - Independent Variable
Maintenance cost - Independent Variable

