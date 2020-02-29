# Installation of MPAS-Ocean on OSX

Installation of MPAS on OSX machines (MacBook, Mac)\
 (macOS Catalina, 10.15)

Visit https://github.com/pwolfram/homebrew-mpas.git 

- Comment out line 19 in `init.sh`
```
    #brew install pwolfram/mpas/pio --build-from-source
```
    
- Run `init.sh` in homebrew-mpas

- Install 'ParallelIO-pio1_9_23_reivsed_ver'

  Original PIO1.9.23 code causes 'ld 32bit RIP' problem on my MacBook Pro 2015 mid.

  (Don't need to do this - Already revised in 'revised_ver')\
  Revised: PIO1_9_23\
    cd $PIO/pio\
    vi pio_types.F90\
    !find MAX in vi    or Go to line 309, 328\
    change 'PIO_MAX_VAR_DIMS =nf_max_var_dims' to 'PIO_MAX_VAR_DIMS = 6'\
    go to build dir. and install


- In 'Makefile' for MPAS, Add this after line 427 (end of system configuration)
```
    NETCDF = /usr/local/Cellar/netcdf/4.6.3_1
    NETCDFF = /usr/local/Cellar/netcdf/4.6.3_1
    PNETCDF = /usr/local/Cellar/parallel-netcdf/1.7.0_2
    PIO = /Users/3hk/my_work/my_programs/ParallelIO-pio1_9_23/build/pio
```
- Install MPAS-O
```
    make gfortran CORE=ocean 
```
