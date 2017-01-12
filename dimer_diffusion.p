# simulation parameters
N_MD = 50
N_loop = 4194304
colloid_sampling = 50
probability = 0 
alpha = 2.6 

# number of initialisation steps
steps_fixed = 0
equilibration_loops = 100

# cell parameters
g = 0.0
buffer_length = 0
store_rho_xy = F
store_rho_xy_z = 6 9

L = 32 32 15

# max speed from poiseuille profile (see poiseuille simulation)
max_speed = 0.0
 
# fluid parameters
rho = 10
T = 0.3333333
tau = 0.5

# dimer parameters 
# T: 2 colloids as dimer, F: 1 ?-type colloid, 
dimer = T 
#type of single colloid
N_type = F

sigma_C = 3
sigma_N = 3 
d = 6.7
track_y_shift = 0 

epsilon_C = 1 1 1
epsilon_N = 1 1 1

# orientation of the dimer
N_in_front = F
