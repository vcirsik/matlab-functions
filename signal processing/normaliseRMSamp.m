function [y] = normaliseRMSamp(x, RMSout)
%    

% x               vector of sound input
% RMSout          desired RMS of the output
%       
%
% Description:  This function changes the RMS of a sound.
% ----------------------------------------------------------------------
%  V. Irsik, Email: virsik@uwo.ca, 02.09.2020



% Calculate current RMS value of waveform
fileRMS = sqrt(mean(x.^2));

% Scale the waveform to match the desired RMS
rmsratio = RMSout / fileRMS;
y = x * rmsratio;

end
