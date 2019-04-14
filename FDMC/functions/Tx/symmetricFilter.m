function [ Hk, HkOneSided ] = symmetricFilter( K )

switch K
    case 2
        HkOneSided = sqrt(2)/2;
    case 3
        HkOneSided = [0.911438 0.411438];
    case 4
        HkOneSided = [0.971960 sqrt(2)/2 0.235147];
    otherwise
        return
end
% Build symmetric filter
Hk = [fliplr(HkOneSided) 1 HkOneSided];


end

