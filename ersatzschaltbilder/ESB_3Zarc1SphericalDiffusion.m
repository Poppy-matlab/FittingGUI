function [ ModellZeile ] = ESB_1Zarc1SphericalDiffusion(Implementierung)

%% Funktion zur Erstellung von Ersatzschaltbildern. 
% Bitte zuerst die schnellen Elemente, dann die Langsamen eintragen

Name = '3Zarc1SphericalDiffusion';

ModellZeile={Name,'','',{},{},{},{},{}};

%Rser 
Modell = Implementierung.Rser;
Modell.Name = 'Rser';
Appendix = 'ser';
HFMFLF = 'HF' ; % entweder 'Auto' oder 'HF' oder 'MF' oder 'LF'
Modell.Plot = 0;
Startwerte = {  1e-3    };
Minimum = {     1e-7    };
Maximum = {     100     };
Fix = {         0       };
ModellZeile = AddESBElement(ModellZeile,Modell,Appendix,HFMFLF,Startwerte,Minimum,Maximum,Fix);

% RL-Glied mit CPE statt L 
% Modell = Implementierung.RL_CPE;
% Modell.Name = 'RL_CPE';
% Appendix = 'ind';
% HFMFLF = 'HF' ; % entweder 'Auto' oder 'HF' oder 'MF' oder 'LF'
% Modell.Plot = 1;
%               R       L       Phi
% Startwerte = {  1e-3    1e-8    1   };
% Minimum = {     0       0       0   };
% Maximum = {     100     inf     1   };
% Fix = {         0       0       0   };
% ModellZeile = AddESBElement(ModellZeile,Modell,Appendix,HFMFLF,Startwerte,Minimum,Maximum,Fix);
% 



% Zarc A 
Modell = Implementierung.Zarc3RCTau;
Modell.Name = 'Zarc_A';
Appendix = '_A';
HFMFLF = 'MF' ; % entweder 'Auto' oder 'HF' oder 'MF' oder 'LF'
Modell.Plot = 1;
%               R_z     Tau_z   Phi_z 
Startwerte = {  1e-3    1e-4    1       };
Minimum = {     1e-7    1e-5    0.6     };
Maximum = {     100     1    1       };
Fix = {         0       0       0       };
ModellZeile = AddESBElement(ModellZeile,Modell,Appendix,HFMFLF,Startwerte,Minimum,Maximum,Fix);

% Zarc B 
Modell = Implementierung.Zarc3RCTau;
Modell.Name = 'Zarc_B';
Appendix = '_B';
HFMFLF = 'MF' ; % entweder 'Auto' oder 'HF' oder 'MF' oder 'LF'
Modell.Plot = 1;
%               R_z     Tau_z   Phi_z 
Startwerte = {  1e-3    1e-4    1       };
Minimum = {     1e-7    1      0.8     };
Maximum = {     100     100     1       };
Fix = {         0       0       1       };
ModellZeile = AddESBElement(ModellZeile,Modell,Appendix,HFMFLF,Startwerte,Minimum,Maximum,Fix);


% Zarc C 
Modell = Implementierung.Zarc3RCTau;
Modell.Name = 'Zarc_C';
Appendix = '_C';
HFMFLF = 'MF' ; % entweder 'Auto' oder 'HF' oder 'MF' oder 'LF'
Modell.Plot = 1;
%               R_z     Tau_z   Phi_z 
Startwerte = {  0    1000    1       };
Minimum = {     1e-7    100    0.8     };
Maximum = {     100     10000    1       };
Fix = {         1       1       1       };
ModellZeile = AddESBElement(ModellZeile,Modell,Appendix,HFMFLF,Startwerte,Minimum,Maximum,Fix);





Modell = Implementierung.DiffKugel;
Modell.Name = 'SphericalParticleDiffusion';
HFMFLF = 'LF' ; % entweder 'Auto' oder 'HF' oder 'MF' oder 'LF'
Modell.Plot = 0;
Modell.NewParName= { 'R_D_B' ,'Tau_D_B'};  
%               (R_D,    Tau_D     )
Startwerte = {    1e-3      100     };
Minimum = {       1e-7      1      };
Maximum = {       1        1000      };
Fix = {           0         0        };
ModellZeile = AddESBElement(ModellZeile,Modell,Appendix,HFMFLF,Startwerte,Minimum,Maximum,Fix);




% 
% % Por�se Elektrode -> Elektrolytdiffusion
% Modell = Implementierung.RC_Tau;
% Modell.Name = 'RC_PorousElectrode_ElectrolyteDiffusion';
% Appendix = '_DP';
% HFMFLF = 'LF' ; % entweder 'Auto' oder 'HF' oder 'MF' oder 'LF'
% Modell.Plot = 1;
% %               R       Tau  
% Startwerte = {  1e-3    40  };
% Minimum =    {  1e-7    1   };
% Maximum =    {  100     150 };
% Fix =        {  0       0   };
% ModellZeile = AddESBElement(ModellZeile,Modell,Appendix,HFMFLF,Startwerte,Minimum,Maximum,Fix);


% 
% % Ausgleichsprozesse
% Modell = Implementierung.RC_Tau;
% Modell.Name = 'RC_';
% Appendix = '_slow';
% HFMFLF = 'LF' ; % entweder 'Auto' oder 'HF' oder 'MF' oder 'LF'
% Modell.Plot = 1;
% %               R       Tau  
% Startwerte = {  0    2000  };
% Minimum =    {  1e-7    500   };
% Maximum =    {  100     5000 };
% Fix =        {  1      1   };
% ModellZeile = AddESBElement(ModellZeile,Modell,Appendix,HFMFLF,Startwerte,Minimum,Maximum,Fix);



end

