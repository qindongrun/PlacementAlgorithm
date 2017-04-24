%% Figure Plot
clc
clear all
close all
eval('load .\DataContainer\FinalData.mat')
%%%%%%%%%%%%%%%%%%%%%%%%%%% 作图 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure(1)
b = bar([Opt_TotalTime(1:length(alpha))', TotalTime([3 5 4],:)']); hold on
set(gca, 'XTickLabel',{'\alpha = 0','\alpha = 0.35', '\alpha = 0.65', '\alpha = 1'})
% ch = get(b, 'children');
% set(ch, 'FaceVertexCData',[0 0 1; 0 1 1; 1 1 1; 1 0 1;]);
xlabel('场景');
ylabel('端到端时延');
legend('最优算法','遗传算法','启发算法','贪婪算法')
hold off

% figure(2)
% bar([Opt_ExcutionTime', ExcutionTime([3 5 4],:)']); hold on
% set(gca, 'XTickLabel',{'\alpha = 0','\alpha = 0.35', '\alpha = 0.65', '\alpha = 1'})
% xlabel('场景');
% ylabel('程序执行时延');
% legend('最优算法','遗传算法','启发算法','贪婪算法')
% hold off