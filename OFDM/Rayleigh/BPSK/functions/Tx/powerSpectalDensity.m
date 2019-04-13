% Need to be corrected.
function [ specOFDM,fOFDM ] = powerSpectalDensity( xF,nFFT )
    sumOFDMSpec = zeros(nFFT*2, 1);
    xF=reshape(xF,size(xF,1)*size(xF,2),1).'; 
    for symIdx = 1:size(xF,2)
        [specOFDM,fOFDM] = periodogram(xF, rectwin(size(xF,2)), ...
                                        nFFT*2, 1, 'centered');
        sumOFDMSpec = sumOFDMSpec + specOFDM;
    end


end

