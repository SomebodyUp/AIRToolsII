%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% AIR Tools II
% Version 2.0 of AIR Tools
% 2017-03-08
% 
% Per Christian Hansen and Jakob Sauer Jorgensen
% Dept. Applied Mathematics and Computer Science (DTU Compute)
% Technical University of Denmark
%
% Contact: pcha@dtu.dk
% 
% COPYRIGHT NOTICE HERE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Info:
%   CONTENTS.m          - This file with overview of available files.
%   CHANGES.txt         - List of changes made in code since last version.
%
% Iterative ART Methods:
%   art                 - General interface for all Kaczmarz/ART methods.
%   kaczmarz            - Kaczmarz's method (often referred to as ART).
%   randkaczmarz        - Randomized Kaczmarz method.
%   symkaczmarz         - Symmetric Kaczmarz method.
%
% Iterative CART Methods:
%   cart                - General interface for all column-action methods.
%   columnaction        - Column-action method with cyclic column sweeps.
%
% Iterative SIRT Methods:
%   sirt                - General interface for all SIRT methods.
%   cav                 - Component Averaging (CAV) method.
%   cimmino             - Cimmino's method.
%   drop                - Diagonally Relaxed Orthogonal Projections (DROP)
%                         method.
%   landweber           - The classical Landweber method.
%   sart                - Simultaneous Algebraic Reconstruction Technique
%                         (SART) method.
%
% Training Routines:
%   train_dpme          - Training method for the stopping rules DP and ME.
%   train_relaxpar      - Training to find optimal relaxation parameter
%                         for SIRT/ART/CART methods.
%
% Test Problems:
%   fancurvedtomo       - 2D tomography test problem, fan beam, arc detector.
%   fanlineartomo       - 2D tomography test problem, fan beam, linear detector.
%   paralleltomo        - 2D tomography test problem, parallel beam.
%   phantomgallery      - A collection of different 2D phantoms.
%   purge_rows          - Remove empty or very sparse rows of A and the
%                         corresponding elements of b.
%   seismictomo         - 2D seismic travel-time tomography test problem.
%   seismicwavetomo     - Similar to seismictomo but without a ray assumption.
%   show_tomo           - Illustrate tomographic test problems from matrix.
%   sphericaltomo       - 2D spherical Radon tomography test problem.
%
% Demonstration Scripts:
%   demo_art            - Demonstrates the use of, and the results from,
%                         the ART methods.
%   demo_astra_2d       - Demonstrates interfacing to ASTRA Toolbox.
%   demo_cart           - Demonstrates the use of, and the results from,
%                         the CART method.
%   demo_constraints    - Demonstrates the use of nonnegativity and other
%                         constraints.
%   demo_custom_all     - Demonstrates how to specify custom ART and SIRT
%                         methods.
%   demo_custom_sirt    - Demonstrates how the custom SIRT interface can be
%                         used to implement the symmetric Kaczmarz method.
%   demo_matrixfree     - Demonstrates the matrix-free mode for test problems
%                         and reconstruction methods.
%   demo_relaxpar       - Demonstrates how to use various relaxation 
%                         parameter selection strategies.
%   demo_show_tomo      - Demonstrates tomography test problems.
%   demo_sirt           - Demonstrates the use of, and the results from,
%                         the SIRT methods.
%   demo_stoprules      - Demonstrates how to use different stopping rules.
%   demo_training       - Demonstrates the use of the training methods.
%
% Auxiliary Routines:
%   afun_matrix         - Wrap a matrix into a "matrix-free" function handle.
%   afun_astra_2d_gpu   - Wraps ASTRA projectors for calling using function 
%                         handle.
%   calc_relaxpar       - Computes the relaxation parameter for all methods.
%   check_inputs        - Checks inputs and sets default values.
%   check_stoprules     - Checks if stopping rule criteria are met.
%   get_mfun_dfun       - Computes matrices M and D for SIRT methods.