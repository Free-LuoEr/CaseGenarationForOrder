%Random Testing for OrderTotal

%�������n������Ϣ

%Person=15;  %�����ж�����
%
%for i=1:Person     %����Person�������Ϣ
%	PersonAmount(i)=randi([0,50]);
%end
           
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%1.�õ���������Ϣ�˿�ID����
%      [CustomId,amount]=GetCustomID
%2.�õ�����·������Ϊ1-3���������2������5�����ȣ�
%      OperationRout=getOperationRout
%   1--Ϊ��������    2--Ϊ��ѯ����
%3.�õ���ѯid
%       restaurantId=getRestaurantId
%

clc;
clear;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%555
%%�������closeingTime & openingTime
rng shuffle;      %%�������������

OperationRout=getOperationRout  %��ȡ����·��

RoutLength=length(OperationRout);  %��ȡ·������

for i=1:RoutLength
	switch OperationRout(i)
		case 1 %��Ϊ�ڵ�1���д���·��
			[CustomId,amount]=GetCustomID;
			OrderInfo=[CustomId,amount] 
		case 2 %��Ϊ�ڵ�2���ж�����ѯ
			QueryId=getRestaurantId
	end
end
