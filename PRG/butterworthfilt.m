function [y, tOut] = butterworthfilt(x, tIn, n, cuttoff, fe, type)

[b,a] = butter(n,cuttoff/(fe/2),type);  
y = filtfilt(b,a,x);
tOut = tIn;
end