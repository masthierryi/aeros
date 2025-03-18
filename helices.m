clear,clc, close all

file = fileread('.\helices\PER3_11x10.dat');
content = splitlines(file);

% 1. pega certas linhas do arquivo
interval = [23,1,29+7,29+4];
% antes da linha desejada, ela, entre as proximas linhas, depois da ultima linha pega
nlines = 18; % numero de linhas a pegar

contl = 0;
for i = 1:nlines
    if i == 1
        lines(i) = content(interval(1)+interval(2));
        contl = interval(1)+ interval(2)+interval(3);
    elseif i > 1 && i < nlines
        lines(i) = content(interval(1)+contl);
        contl = interval(3)+ contl;
    end
end

%2.
