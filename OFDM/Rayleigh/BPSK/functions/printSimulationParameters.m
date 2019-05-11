%%
% Copyright 2019, Alexandros-Apostolos A. Boulogeorgos, All rights reserved
% 
%%

%% 
% Description: This script prints the simmulation parameters.
%%
fprintf('____________________________________________________________________________________\n')
fprintf(' Copyright 2019, Alexandros-Apostolos A. Boulogeorgos, All rights reserved. \n')
fprintf('____________________________________________________________________________________\n')
fprintf('____________________________________________________________________________________\n')
fprintf('____________________________________________________________________________________\n')
fprintf('| Simulation title: \t %s  | \n', simulationTitle)
fprintf('|__________________________________________________________________________________|\n')
fprintf('| Number of samples: \t \t %d \t \t \t \t \t \t   |\n', nSym)
fprintf('| Number of data subcarriers: \t %d \t\t\t\t\t\t   |\n', nDSC)
fprintf('| Number of virtual subcarriers: %d \t\t\t\t\t\t   |\n', nVSC) 
fprintf('| Number of total subcarriers: \t %d \t\t\t\t\t\t   |\n', nFFT)
fprintf('| CP Length: \t %d \t\t\t\t\t\t\t\t   |\n', nCP)
fprintf('|__________________________________________________________________________________|\n')
fprintf('| Modulation type: \t %s  \t \t \t \t \t \t \t   | \n', modulationType)
fprintf('|__________________________________________________________________________________|\n')
fprintf('| Channel type: \t %s  \t \t \t \t \t \t   | \n', channelType)
fprintf('| Number of channel taps: \t %d  \t \t \t \t \t \t   | \n', nTap)
fprintf('|__________________________________________________________________________________|\n')
fprintf('| Channel state information: \t %s  \t \t \t \t \t   |   \n', CSItype)
fprintf('|__________________________________________________________________________________|\n')
