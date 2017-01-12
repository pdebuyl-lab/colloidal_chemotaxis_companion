# simulation parameters
N_MD = 50
colloid_sampling = 50
N_loop = 1024
equilibration_loops = 0
probability = 1
alpha = 2.6

# number of initialisation steps
steps_fixed = 50

# cell parameters
g = 0.001
buffer_length = 20
store_rho_xy = F
store_rho_xy_z = 6 9

L = 90 60 15

# max speed from poiseuille profile (see poiseuille simulation)
max_speed = 0.093
 
# fluid parameters
rho = 10
T = 0.33333
tau = 0.5

# dimer parameters 
# T: 2 colloids as dimer, F: 1 ?-type colloid, 
dimer = F
#type of single colloid
N_type = F

sigma_C = 3
sigma_N = 3
d = 6.7
track_y_shift = 3.4

epsilon_C = 1 0.5 1
epsilon_N = 1 0.5 1 

# orientation of the dimer
N_in_front = F
