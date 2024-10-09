x2 = x**2
xy = x*y #product of corresponding elements in x and y.

#Colculating means
x_mean = np.mean(x)
y_mean = np.mean(y)   #compute the mean (average)
x2_mean = np.mean(x2)
xy_mean = np.mean(xy) #products of x and y

#calculating the slope
a1 = (xy_mean - x_mean*y_mean)/(x2_mean - x_mean**2)

a0 = y_mean - a1*x_mean

#Predicting values
x_given = 70
y_pred = a0 + a1*x_given
