% 5. Calculate the population in the reservoir in June 2025  using the harvesting model
pan_new=zeros(1,60);
pan_new(1)=0.30;
for i=1:59;
  pan_new(i+1) = pan_new(i) + 0.4*(37500-pan_new(i))*pan_new(i)/37500 - 0.42*pan_new(i);
endfor
pan_new

estimated_population_in_June_2025 = pan_new(42);
disp(['Population in June 2025:', num2str(estimated_population_in_June_2025)]);

