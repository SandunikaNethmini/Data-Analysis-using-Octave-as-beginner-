% 1.Carrying capacity calculation
surface_area=100
depth=1.5
carrying_capacity=250*surface_area*depth
disp(['Carrying Capacity of the Pond: ' num2str(carrying_capacity) ' Tilapia fish']);

% 3.Find growth rate
n=[0:1:23];
an=[0.30 0.36 0.44 0.54 0.66 0.80 0.98 1.18 1.44 1.74 2.11 2.54 3.06 3.67 4.39 5.23 6.19 7.29 8.55 9.94 11.47 13.12 14.87 16.70];

dan=zeros(1,23);
for i=1:23
  dan(i)=an(i+1)-an(i);
endfor
dan

an_new =(37500-an).*an;
x = an_new(1:23);
y = dan;

r = sum(x.*y) / sum(x.*x)

% 4. Plot the Predicted population vs time up to December 2026
pan=zeros(1,60);
pan(1)=0.30;
for i=1:59;
  pan(i+1) = pan(i) + r*(37500-pan(i))*pan(i);
endfor
pan

n_new=[0:1:59]
plot(n_new,pan,'r*');
xlabel('Time (months)');
ylabel('Tilapia Fish Population (in thousands)');
title('Tilapia Fish Population in Bluewater Fishery Pond');


