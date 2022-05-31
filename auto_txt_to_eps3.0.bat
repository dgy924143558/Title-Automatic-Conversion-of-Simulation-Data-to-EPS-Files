
chcp 65001
@echo off
del /F /S /Q epsprint_test.m
echo=>epsprint_test.m
echo clear>>epsprint_test.m
echo filename = '%~s1';>> epsprint_test.m
echo n=5     >>epsprint_test.m
echo M = readmatrix(filename);>>epsprint_test.m
echo tiledlayout(n,1)>>epsprint_test.m
echo for i=1:n>>epsprint_test.m
echo nexttile>>epsprint_test.m
echo plot(M(:,1),M(:,i+1),'-b','LineWidth',2)>>epsprint_test.m
echo  end>>epsprint_test.m
echo print('test','-deps','-r600')>>epsprint_test.m
echo clear>>epsprint_test.m
matlab -nosplash -nodesktop -r "run('epsprint_test.m');exit"  
