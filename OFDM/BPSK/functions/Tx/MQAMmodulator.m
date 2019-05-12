%%
% Copyright 2019, Alexandros-Apostolos A. Boulogeorgos, All rights reserved
% 
%%

function [ bitsP, symbols ] = MQAMmodulator( bits,M, symbolOrder )

    k = log2(M); % number of bits per symbols
    
    if k-ceil(k)~=0
        error('The value of M is only acceptable if log2(M) is an integer');
    end
    
    if mod(length(bits),k)~=0
        error('The number of bits needs to be a multiple of log2(M)'); 
    end
    
    bitsP = reshape(bits,  k, length(bits)/k); % bits mapping to symbols
    
    symbols = qammod(bitsP, M, symbolOrder, 'InputType', 'bit', ...
                'UnitAveragePower',1);
end

