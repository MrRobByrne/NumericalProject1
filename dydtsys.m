function [dy] = dydtsys()
%this functions stores the differential equation and passes it to the
%equation solver "Colpitts"
C1=2e-12;C2=2e-12; Cc=400e-12; Ce=100e-12;L=1e-6;R1=8000;R2=2000;Re=1300;
Rc=2400;Vcc=12;
T=25; alphaF=0.9900;alphaR=0.5;Is=0.01e-12;
k=1.3806488e-23;q=1.602176e-19;
VT=(k*T)/q;
Ics=Is/alphaR;
Ies=Is/alphaF;
If=Ies*(exp((Vb-Ve)/VT)-1);
IR=Ics*(exp((Vb-Vc)/VT)-1);
IE=If-alphaR*IR;
IB=(1-alphaF)*If+(1-alphaR)*IR;
IC=IE-IB;
dy=[Vc-Vb-Vcc;(Vcc-Vc)/Rc-Il;IE-Ve/Re;(Vcc-Vb)/R1+Vb/R2+Ib;Il-(Vcc-Vb)/R1-Vb/R2-Ib];


end

