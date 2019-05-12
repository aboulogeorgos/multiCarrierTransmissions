%%
% Copyright 2019, Alexandros-Apostolos A. Boulogeorgos, All rights reserved
% 
%%

function [ ] = histogramPlot( ht )

figure
    subplot(2,5,1)
        histogram(abs(ht(:,1)), 'normalization', 'pdf');
        axis tight
    subplot(2,5,2)
        histogram(abs(ht(:,2)), 'normalization', 'pdf');
        axis tight
    subplot(2,5,3)
        histogram(abs(ht(:,3)), 'normalization', 'pdf');
        axis tight
    subplot(2,5,4)
        histogram(abs(ht(:,4)), 'normalization', 'pdf');
        axis tight
    subplot(2,5,5)
        histogram(abs(ht(:,5)), 'normalization', 'pdf');
        axis tight
    subplot(2,5,6)
        histogram(abs(ht(:,1)), 'normalization', 'cdf');
        axis tight
    subplot(2,5,7)
        histogram(abs(ht(:,2)), 'normalization', 'cdf');
        axis tight
    subplot(2,5,8)
        histogram(abs(ht(:,3)), 'normalization', 'cdf');
        axis tight
    subplot(2,5,9)
        histogram(abs(ht(:,4)), 'normalization', 'cdf');
        axis tight
    subplot(2,5,10)
        histogram(abs(ht(:,5)), 'normalization', 'cdf');
        axis tight

figure
    subplot(2,5,1)
        histogram(abs(ht(:,6)), 'normalization', 'pdf');
        axis tight
    subplot(2,5,2)
        histogram(abs(ht(:,7)), 'normalization', 'pdf');
        axis tight
    subplot(2,5,3)
        histogram(abs(ht(:,8)), 'normalization', 'pdf');
        axis tight
    subplot(2,5,4)
        histogram(abs(ht(:,9)), 'normalization', 'pdf');
        axis tight
    subplot(2,5,5)
        histogram(abs(ht(:,10)), 'normalization', 'pdf');
        axis tight
    subplot(2,5,6)
        histogram(abs(ht(:,6)), 'normalization', 'cdf');
        axis tight
    subplot(2,5,7)
        histogram(abs(ht(:,7)), 'normalization', 'cdf');
        axis tight
    subplot(2,5,8)
        histogram(abs(ht(:,8)), 'normalization', 'cdf');
        axis tight
    subplot(2,5,9)
        histogram(abs(ht(:,9)), 'normalization', 'cdf');
        axis tight
    subplot(2,5,10)
        histogram(abs(ht(:,10)), 'normalization', 'cdf');
        axis tight
end

