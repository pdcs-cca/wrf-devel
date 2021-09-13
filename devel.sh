#!/bin/bash 

alias SPACK-configure="logsave \$(date +%s).CONFIGURE /usr/bin/time -v ./configure " 

alias SPACK-make="logsave \$(date +%s).MAKE /usr/bin/time -v make " 

alias SPACK-check="logsave \$(date +%s).MAKE.CHECK /usr/bin/time -v make check "

alias SPACK-test="logsave \$(date +%s).MAKE.TEST /usr/bin/time -v make test "

alias SPACK-install="logsave \$(date +%s).MAKE.INSTALL /usr/bin/time -v make install "

export APPS_ROOT=/opt/software/apps
export LMOD_ROOT=/opt/software/modulesfiles
export COMPFLAGS_OPT="-xAVX -axCORE-AVX2 -ip -mcmodel=medium -shared-intel -fma -fp-model precise"
export COMPFLAGS="-axSSE4.2,AVX,CORE-AVX2,CORE-AVX512 -ip"

export SPACK_CFLAGS="-axSSE4.2,AVX,CORE-AVX2,CORE-AVX512 -ip"
export SPACK_CXXFLAGS="-axSSE4.2,AVX,CORE-AVX2,CORE-AVX512 -ip"
export SPACK_FFLAGS="-axSSE4.2,AVX,CORE-AVX2,CORE-AVX512 -ip"
export SPACK_FCFLAGS="-axSSE4.2,AVX,CORE-AVX2,CORE-AVX512 -ip"
export SPACK_COMPILERS="CC=icc FC=ifort F77=ifort F90=ifort CXX=icpc"
export SPACK_COMPILERS_MPI="CC=mpiicc FC=mpiifort F77=mpiifort F90=mpiifort CXX=mpiicpc"
export SPACK_MPI_COMPILERS="MPICC=mpiicc MPICXX=mpiicpc MPIF77=mpiifort MPIF90=mpiifort"

alias SPACK-base='$SPACK_COMPILERS CFLAGS="$SPACK_CFLAGS" CXXFLAGS="$SPACK_CXXFLAGS"  FFLAGS="$SPACK_FFLAGS" FCFLAGS="$SPACK_FCFLAGS" '
alias SPACK-mpi-base='$SPACK_MPI_COMPILERS CFLAGS="$SPACK_CFLAGS" CXXFLAGS="$SPACK_CXXFLAGS"  FFLAGS="$SPACK_FFLAGS" FCFLAGS="$SPACK_FCFLAGS" '
alias SPACK-base-mpi='$SPACK_COMPILERS_MPI CFLAGS="$SPACK_CFLAGS" CXXFLAGS="$SPACK_CXXFLAGS"  FFLAGS="$SPACK_FFLAGS" FCFLAGS="$SPACK_FCFLAGS" '
alias SPACK-build-hdf5='--enable-fortran --enable-build-mode=production --with-szlib=$SZIP_ROOT --with-zlib=$ZLIB_ROOT '
alias SPACK-build-phdf5='--enable-parallel --enable-fortran --enable-build-mode=production --with-szlib=$SZIP_ROOT --with-zlib=$ZLIB_ROOT '
alias SPACK-build-netcdf-C='CPPFLAGS="$HDF5_CPPFLAGS $ZLIB_CPPFLAGS $SZIP_CPPFLAGS" LDFLAGS="$HDF5_LDFLAGS $ZLIB_LDFLAGS $SZIP_LDFLAGS" '
alias SPACK-build-pnetcdf-C='CPPFLAGS="$PHDF5_CPPFLAGS $ZLIB_CPPFLAGS $SZIP_CPPFLAGS" LDFLAGS="$PHDF5_LDFLAGS $ZLIB_LDFLAGS $SZIP_LDFLAGS" '
alias SPACK-build-netcdf-F='CPPFLAGS="$HDF5_CPPFLAGS $NETCDF_CPPFLAGS $ZLIB_CPPFLAGS $SZIP_CPPFLAGS" LDFLAGS="$HDF5_LDFLAGS $NETCDF_LDFLAGS $ZLIB_LDFLAGS $SZIP_LDFLAGS" '

alias SPACK-build-ncview='CPPFLAGS="$ZLIB_CPPFLAGS $LIBPNG_CPPFLAGS $UDUNITS_CPPFLAGS $NETCDF_CPPFLAGS"  LDFLAGS="$ZLIB_LDFLAGS $LIBPNG_LDFLAGS $UDUNITS_LDFLAGS $NETCDF_LDFLAGS" '


