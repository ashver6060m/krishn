import numpy as np
import pandas as pd

# Generate sample data
data = pd.DataFrame({
    'x': np.random.rand(100),
    'y': 3 * np.random.rand(100) ** 2 + 2 * np.random.rand(100) + 1
})

# Polynomial Regression Model (degree 2)
X = data['x'].values
y = data['y'].values

X_poly = np.vstack((X**2, X, np.ones(len(X)))).T
theta = np.linalg.inv(X_poly.T @ X_poly) @ X_poly.T @ y

print(f"Coefficients: {theta}")

# Prediction
y_pred = X_poly @ theta
