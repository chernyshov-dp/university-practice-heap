from mpl_toolkits.mplot3d import Axes3D 
import matplotlib as mpl 
import matplotlib.pyplot as plt 
import numpy as np 


x = y = np.linspace(-1, 1, 100) 
X, Y = np.meshgrid(x,y) 
Z = X**3 + 9*(X**2) + 6*X*Y + 3*(y**2)

fig = plt.figure(1) 

ax=Axes3D(fig) 

norm = mpl.colors.Normalize(-abs(Z).max(), abs(Z).max()) 

p = ax.plot_surface(X, Y, Z, rstride = 1, cstride = 1, linewidth = 0, antialiased = False, norm = norm, cmap = plt.cm.jet) 

cb = fig.colorbar(p, ax = ax, shrink = 0.6) 

ax.set_xlabel("$x$", fontsize = 16) 
ax.set_ylabel("$y$", fontsize = 16) 
ax.set_zlabel("$z$", fontsize = 16) 

ax.contour(X, Y, Z, zdir = 'z', offset = -0.4, norm = norm, levels = 10, cmap = plt.cm.jet) 

plt.show()