




Modellliste.Implementierung.TwoElectrodes.Funktionsname = 'TwoElectrodes';
Modellliste.Implementierung.TwoElectrodes.inputs = {'R_ct_A','Tau_dl_A','Phi_HN_A','R_ct_B','Tau_dl_B','Phi_HN_B','R_D_B','Tau_D_B','R_MP'};
Modellliste.Implementierung.TwoElectrodes.Zfun = [ ...
    '(R_MP.*(R_ct_A./(1+1i.*w.*Tau_dl_A).^Phi_HN_A)).^0.5'...
    '.*coth((R_MP./(R_ct_A./(1+1i.*w.*Tau_dl_A).^Phi_HN_A)).^0.5)'...
    '+'...
    '(R_MP.*(Z_parallel((R_ct_B==0).*10^9+1./((Tau_dl_B./R_ct_B).*(1i.*w)), R_ct_B + ' ...
    '10* R_D_B .* tanh((1i.*w.*Tau_D_B*20).^0.5)./((1i.*w.*Tau_D_B*20).^0.5-tanh((1i.*w.*Tau_D_B*20).^0.5))' ...
    ')' ...
        '-R_ct_B./(1+1i.*w.*Tau_dl_B)' ...
        '+R_ct_B./(1+1i.*w.*Tau_dl_B).^Phi_HN_B' ...
    ')).^0.5.*coth((R_MP./(Z_parallel((R_ct_B==0).*10^9+1./((Tau_dl_B./R_ct_B).*(1i.*w)), R_ct_B + ' ...
    '10* R_D_B .* tanh((1i.*w.*Tau_D_B*20).^0.5)./((1i.*w.*Tau_D_B*20).^0.5-tanh((1i.*w.*Tau_D_B*20).^0.5))'  ...
    ')' ...
        '-R_ct_B./(1+1i.*w.*Tau_dl_B)' ...
        '+R_ct_B./(1+1i.*w.*Tau_dl_B).^Phi_HN_B'  ...
    ')).^0.5) '...
    ];
Modellliste.Implementierung.TwoElectrodes.Zfun_HF = [...
    '(R_MP.*(R_ct_A./(1+1i.*w.*Tau_dl_A).^Phi_HN_A)).^0.5'...
    '.*coth((R_MP./(R_ct_A./(1+1i.*w.*Tau_dl_A).^Phi_HN_A)).^0.5)'...
    '-R_ct_A./(1+1i.*w.*Tau_dl_A).^Phi_HN_A'...
    '+'...
    '(R_MP.*(R_ct_B./(1+1i.*w.*Tau_dl_B).^Phi_HN_B)).^0.5'...
    '.*coth((R_MP./(R_ct_B./(1+1i.*w.*Tau_dl_B).^Phi_HN_B)).^0.5)'...
    '-R_ct_B./(1+1i.*w.*Tau_dl_B).^Phi_HN_B'...
    ];
Modellliste.Implementierung.TwoElectrodes.Zfun_MF = 'R_ct_A./(1+1i.*w.*Tau_dl_A).^Phi_HN_A+R_ct_B./(1+1i.*w.*Tau_dl_B).^Phi_HN_B';
Modellliste.Implementierung.TwoElectrodes.Zfun_LF = [...
    '(R_MP.*(R_ct_A./(1+1i.*w.*Tau_dl_A).^Phi_HN_A)).^0.5'...
    '.*coth((R_MP./(R_ct_A./(1+1i.*w.*Tau_dl_A).^Phi_HN_A)).^0.5)'...
    '+'...
    '(R_MP.*(Z_parallel((R_ct_B==0).*10^9+1./((Tau_dl_B./R_ct_B).*(1i.*w)), R_ct_B + ' ...
    '10* R_D_B .* tanh((1i.*w.*Tau_D_B*20).^0.5)./((1i.*w.*Tau_D_B*20).^0.5-tanh((1i.*w.*Tau_D_B*20).^0.5))' ...
    ')' ...
        '-R_ct_B./(1+1i.*w.*Tau_dl_B)' ...
        '+R_ct_B./(1+1i.*w.*Tau_dl_B).^Phi_HN_B' ...
    ')).^0.5.*coth((R_MP./(Z_parallel((R_ct_B==0).*10^9+1./((Tau_dl_B./R_ct_B).*(1i.*w)), R_ct_B + ' ...
    '10* R_D_B .* tanh((1i.*w.*Tau_D_B*20).^0.5)./((1i.*w.*Tau_D_B*20).^0.5-tanh((1i.*w.*Tau_D_B*20).^0.5))'  ...
    ')' ...
        '-R_ct_B./(1+1i.*w.*Tau_dl_B)' ...
        '+R_ct_B./(1+1i.*w.*Tau_dl_B).^Phi_HN_B'  ...
    ')).^0.5) '...    
    '-('...
    '+R_ct_A./(1+1i.*w.*Tau_dl_A).^Phi_HN_A+R_ct_B./(1+1i.*w.*Tau_dl_B).^Phi_HN_B' ...
    ')' '-(' ...
    '(R_MP.*(R_ct_A./(1+1i.*w.*Tau_dl_A).^Phi_HN_A)).^0.5'...
    '.*coth((R_MP./(R_ct_A./(1+1i.*w.*Tau_dl_A).^Phi_HN_A)).^0.5)'...
    '-R_ct_A./(1+1i.*w.*Tau_dl_A).^Phi_HN_A'...
    '+'...
    '(R_MP.*(R_ct_B./(1+1i.*w.*Tau_dl_B).^Phi_HN_B)).^0.5'...
    '.*coth((R_MP./(R_ct_B./(1+1i.*w.*Tau_dl_B).^Phi_HN_B)).^0.5)'...
    '-R_ct_B./(1+1i.*w.*Tau_dl_B).^Phi_HN_B' ...
    ')'];