# Companion data and code

This repository contains extra information and code for the article *Passive
and active colloidal chemotaxis in a microfluidic channel: mesoscopic and
stochastic models* by Pierre de Buyl and Laurens Deprez.

The license for the code in this repository is the 3-clause BSD, found in the
file LICENSE.

## Code and platform information for the mesoscopic simulations

The mesoscopic simulations are performed with the code RMPCDMD that is
implemented in Fortran 2008 with a C extension.

### Hardware

The simulations were run at the supercomputer ThinKing operated jointly by the
KU Leuven and Hasselt University.

The hardware specifications are summarized with the following command-line
programs:

```
user@hpc-p-login-2:~$ uname -mosv
Linux #1 SMP Mon Oct 24 10:22:33 EDT 2016 x86_64 GNU/Linux
user@hpc-p-login-2:~$ grep -E '(^model name|^vendor_id|^flags)' /proc/cpuinfo  | sort | uniq
flags           : fpu vme de pse tsc msr pae mce cx8 apic sep mtrr pge mca cmov pat pse36 clflush dts acpi mmx fxsr sse sse2 ss ht tm pbe syscall nx pdpe1gb rdtscp lm constant_tsc arch_perfmon pebs bts rep_good xtopology nonstop_tsc aperfmperf pni pclmulqdq dtes64 monitor ds_cpl vmx smx est tm2 ssse3 cx16 xtpr pdcm pcid dca sse4_1 sse4_2 x2apic popcnt tsc_deadline_timer aes xsave avx f16c rdrand lahf_lm ida arat epb xsaveopt pln pts dtherm tpr_shadow vnmi flexpriority ept vpid fsgsbase smep erms
model name      : Intel(R) Xeon(R) CPU E5-2680 v2 @ 2.80GHz
vendor_id       : GenuineIntel
```

### Compilers

The compilers used are, for C:
```
user@hpc-p-login-2:~$ gcc --version
gcc (GCC) 4.9.2
Copyright (C) 2014 Free Software Foundation, Inc.
This is free software; see the source for copying conditions.  There is NO
warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
```
with flags `-Wall -std=c99 -O3`.

For Fortran:
```
user@hpc-p-login-2:~$ gfortran --version
GNU Fortran (GCC) 4.9.2
Copyright (C) 2014 Free Software Foundation, Inc.

GNU Fortran comes with NO WARRANTY, to the extent permitted by law.
You may redistribute copies of GNU Fortran
under the terms of the GNU General Public License.
For more information about these matters, see the file named COPYING
```
with flags `-fopenmp -Wall -Wextra -Wconversion -std=f2008-pedantic -O3`.

## Platform information for the stochastic simulations and data analysis

The stochastic simulations and data analysis were run with Python 3.5 using the
interpreter and libraries listed below:
```
Platform: linux
Python: 3.4.3 (default, Nov 17 2016, 01:08:31) 
[GCC 4.8.4]
Machine and architecture x86_64 64bit ELF
NumPy: 1.12.0rc2
SciPy: 0.18.1
```

The Python code is provided in [Jupyter](http://jupyter.org/) notebooks.

## Information on running and analyzing the simulations

### Chemotaxis simulations

To reproduce the simulations of the paper, you need to install the software
[RMPCDMD](http://lab.pdebuyl.be/rmpcdmd/). After installation of RMPCDMD, with
the `rmpcdmd` command-line program available in your terminal, and of the
Python program `sftmpl` (`pip install --user sftmpl`, Python 2 and 3
compatible. This program is used to generate parameter files from a template),
you may run the command

```
make passive_sphere RUN=001 EPS=1.00
```

and repeat for required the number of realizations. This process should be
replicated with the values `active_sphere` and `nanomotor` replacing
`passive_sphere` and the values `0.25`, `0.50`, `2.00` and `4.00` replacing
`1.00`.

The data from these simulations can be analyzed with the notebook
`colloidal_chemotaxis.ipynb`.

### Diffusion simulations

To reproduce the equilibrium simulations used to calibrate the dimer nanomotor
model, run the RMPCDMD program `chemotactic_dimer` with the command

```
rmpcdmd run chemotactic_cell dimer_diffusion.p cceq_001.h5 auto
```

for the required number of realizations.

The data from these simulations can be analyzed with the notebook
`diffusion.ipynb`.
