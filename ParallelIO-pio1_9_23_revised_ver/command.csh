#!/bin/csh

setenv CC mpicc
setenv FC mpif90

cmake  -DCMAKE_INSTALL_PREFIX=/Users/3hk/my_work/my_programs/ParallelIO  \
       -DPNETCDF_INCLUDE_DIR=/usr/local/Cellar/pnetcdf/1.11.2/include \
       -DPNETCDF_LIBRARY=/usr/local/Cellar/pnetcdf/1.11.2/lib \
       -DNETCDF_C_INCLUDE_DIR=/usr/local/Cellar/netcdf/4.6.3_1/include \
       -DNETCDF_C_LIBRARY=/usr/local/Cellar/netcdf/4.6.3_1/lib \
       -DNETCDF_Fortran_INCLUDE_DIR=/usr/local/Cellar/netcdf/4.6.3_1/include \
       -DNETCDF_Fortran_LIBRARY=/usr/local/Cellar/netcdf/4.6.3_1/lib \
       -DCMAKE_C_FLAGS=-O3 -mcmodel=medium \
       -DCMAKE_Fortran_FLAGS=-O3 -mcmodel=medium \
       ../

#cmake -DNETCDF_C_INCLUDE_DIR=/usr/local/include \
#      -DNETCDF_C_LIBRARY=/opt/cray/pe/netcdf/4.6.1.3/gnu/8.2/lib \
##      -DNETCDF_Fortran_INCLUDE_DIR=/opt/cray/pe/netcdf/4.6.1.3/gnu/8.2/include \
##      -DNETCDF_Fortran_LIBRARY=/opt/cray/pe/netcdf/4.6.1.3/gnu/8.2/lib \
#      -DPNETCDF_INCLUDE_DIR=/opt/cray/pe/parallel-netcdf/1.8.1.4/gnu/8.2/include \
#      -DPNETCDF_LIBRARY=/opt/cray/pe/parallel-netcdf/1.8.1.4/gnu/8.2/lib \
#      -DHDF5_C_INCLUDE_DIR=/opt/cray/pe/hdf5/1.10.2.0/gnu/8.2/include \
#      -DHDF5_C_LIBRARY=/opt/cray/pe/hdf5/1.10.2.0/gnu/8.2/include \
#      -DHDF5_HL_INCLUDE_DIR=/opt/cray/pe/hdf5/1.10.2.0/gnu/8.2/include \
#      -DHDF5_HL_LIBRARY=/opt/cray/pe/hdf5/1.10.2.0/gnu/8.2/lib \
##      -DPIO_ENABLE_TESTS=OFF ../
#      -DCMAKE_Fortran_FLAGS=-mcmodel=medium \
