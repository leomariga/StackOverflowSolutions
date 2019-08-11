datenum('30/07/2017 12:00:00','dd/mm/yyyy HH:MM:SS')
datenum('31/07/2017','dd/mm/yyyy')




a = '31/07/2017'
na = length(a)

b = '30/07/2017 12:00:00'
nb = length(b)

if na < 19
   a = strcat(a,' 00:00:00')
end


if nb < 19
   b = strcat(b,' 00:00:00')
end


DateSTr = {'30/07/2017 12:00:00', '31/07/2017'}

for k=1:length(DateSTr)
    if length(DateSTr{k}) < 19    % If date string is not complete 
        DateSTr{k} = strcat(DateSTr{k},' 00:00:00') % Concatenate time to correct the string
    end
end