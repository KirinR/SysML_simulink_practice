clear all
Ra = 2.581;% 电枢电阻
La = 0.028; % 电枢电感
Rf = 281.3; % 励磁电阻
Lf = 156; % 励磁电感
Vf = 250; % 励磁电压
Laf = 0.9483; % 励磁电枢互感
J = 0.02215; % 转动惯量

Ka = 1 / Ra; % 电枢回路放大倍数
Ta = La / Ra; % 电枢回路电磁时间常数
If = Vf / Rf; % 励磁电流
Ce_phi = (Laf*If)*2*pi/60;
Ct_phi = Laf*If;
Tm = J*Ra/(Ce_phi*Ct_phi); % 机电时间常数
Tfn = 1e-3; % 速度反馈回路时间常数=1ms
Tfi = 200e-6; %电流反馈回路时间常数=200us
TB = Tfi; % 电流反馈延时环节时间常数
K0 = 1;
T0 = 200e-6; % pwm频率=1/200us
alpha = 1; % 速度反馈系数
belta = 1;% 电流反馈系数


% 电机额定值
Udc = 300;
n0 = Udc / Ce_phi;
nN = 0.8*n0;
TN = ((Udc-nN*Ce_phi)*Ct_phi)/Ra;
IaN = TN / Ct_phi;





