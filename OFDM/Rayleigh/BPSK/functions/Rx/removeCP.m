function [ yt ] = removeCP( yt )
    yt = yt(:,[17:80]); % removing cyclic prefix
end

