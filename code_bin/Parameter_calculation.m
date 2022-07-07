clear all
Ra = 2.581;% �������
La = 0.028; % ������
Rf = 281.3; % ���ŵ���
Lf = 156; % ���ŵ��
Vf = 250; % ���ŵ�ѹ
Laf = 0.9483; % ���ŵ��໥��
J = 0.02215; % ת������

Ka = 1 / Ra; % �����·�Ŵ���
Ta = La / Ra; % �����·���ʱ�䳣��
If = Vf / Rf; % ���ŵ���
Ce_phi = (Laf*If)*2*pi/60;
Ct_phi = Laf*If;
Tm = J*Ra/(Ce_phi*Ct_phi); % ����ʱ�䳣��
Tfn = 1e-3; % �ٶȷ�����·ʱ�䳣��=1ms
Tfi = 200e-6; %����������·ʱ�䳣��=200us
TB = Tfi; % ����������ʱ����ʱ�䳣��
K0 = 1;
T0 = 200e-6; % pwmƵ��=1/200us
alpha = 1; % �ٶȷ���ϵ��
belta = 1;% ��������ϵ��


% ����ֵ
Udc = 300;
n0 = Udc / Ce_phi;
nN = 0.8*n0;
TN = ((Udc-nN*Ce_phi)*Ct_phi)/Ra;
IaN = TN / Ct_phi;





