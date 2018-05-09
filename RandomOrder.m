%Random Testing for OrderTotal

%随机生成n个人信息

%Person=15;  %定义有多少人
%
%for i=1:Person     %生成Person个随机信息
%	PersonAmount(i)=randi([0,50]);
%end
           
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%1.得到待订单信息顾客ID函数
%      [CustomId,amount]=GetCustomID
%2.得到操作路径设置为1-3的随机数（2个步骤5个长度）
%      OperationRout=getOperationRout
%   1--为创建订单    2--为查询订单
%3.得到查询id
%       restaurantId=getRestaurantId
%

clc;
clear;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%555
%%随机生成closeingTime & openingTime
rng shuffle;      %%产生随机数种子

OperationRout=getOperationRout  %获取才做路径

RoutLength=length(OperationRout);  %获取路径长度

for i=1:RoutLength
	switch OperationRout(i)
		case 1 %若为节点1进行创建路径
			[CustomId,amount]=GetCustomID;
			OrderInfo=[CustomId,amount] 
		case 2 %若为节点2进行订单查询
			QueryId=getRestaurantId
	end
end
