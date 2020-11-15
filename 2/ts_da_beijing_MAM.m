%2020-04-12�� by kou
clc;clear;close all
dir0='.';
fname1='ts_2016da_beijing_MAM.txt';
fname2='ts_2017da_beijing_MAM.txt';
fname3='ts_2018da_beijing_MAM.txt';
fname4='ts_2019da_beijing_MAM.txt';

infile1=strcat(dir0,'\',fname1);
fprintf('%s\n',infile1)
fid1 = fopen(infile1);
ndata0 = [];
line = [];
line = fgetl(fid1);   %read head:Date, PM25, PBLH, PBLHm, T2, SPD, RAIN
fprintf('%s\n',line)
%ndata0 = textscan(fid1,'%s  %8.4f %8.4f %8.4f %8.4f %8.4f %8.4f'); 
ndata0 = textscan(fid1,'%s%f%f%f%f%f%f'); 
ndays1 = numel(ndata0{1});
ndata1 = [];
 ndate1 = [];       
 ndate1 = [ndata1 ndata0{1}];
 npm251 = [];
 npm251 = [ndata1 ndata0{2}];
 npblh1 = [];
 npblh1 = [ndata1 ndata0{3}];
 npblhm1 = [];
 npblhm1 = [ndata1 ndata0{4}];
 nt21 = [];
 nt21 = [ndata1 ndata0{5}];
 nspd1 = [];
 nspd1 = [ndata1 ndata0{6}];
 nrain1 = [];
 nrain1 = [ndata1 ndata0{7}];
 fclose(fid1);
 
 %L=npm251(:)<35.0
 class11(1:ndays1)=0.0;
 class12(1:ndays1)=0.0;
 class13(1:ndays1)=0.0;
 class14(1:ndays1)=0.0;
 class15(1:ndays1)=0.0;
 class16(1:ndays1)=0.0;
 for iday = 1: ndays1
    if npm251(iday)<35.0
        class11(iday)= npm251(iday); 
    elseif npm251(iday)>35.0&npm251(iday)<75.0
        class12(iday)= npm251(iday); 
    elseif npm251(iday)>75.0&npm251(iday)<115.0
        class13(iday)= npm251(iday); 
    elseif npm251(iday)>115.0&npm251(iday)<150.0
        class14(iday)= npm251(iday);         
    elseif npm251(iday)>150.0&npm251(iday)<250.0
        class15(iday)= npm251(iday); 
    elseif npm251(iday)>250.0&npm251(iday)<350.0
        class16(iday)= npm251(iday);
    end  
 end

nclass1(1)=sum(class11~=0)
nclass1(2)=sum(class12~=0)
nclass1(3)=sum(class13~=0)
nclass1(4)=sum(class14~=0)
nclass1(5)=sum(class15~=0)
nclass1(6)=sum(class16~=0)


 infile2=strcat(dir0,'\',fname2);
fprintf('%s\n',infile2)
fid2 = fopen(infile2);
ndata0 = [];
line = [];
line = fgetl(fid2);   %read head:Date, PM25, PBLH, PBLHm, T2, SPD, RAIN
fprintf('%s\n',line)
%ndata0 = textscan(fid1,'%s  %8.4f %8.4f %8.4f %8.4f %8.4f %8.4f'); 
ndata0 = textscan(fid2,'%s%f%f%f%f%f%f'); 
ndays2 = numel(ndata0{1});
ndata2 = [];
 ndate2 = [];       
 ndate2 = [ndata2 ndata0{1}];
 npm252 = [];
 npm252 = [ndata2 ndata0{2}];
 npblh2 = [];
 npblh2 = [ndata2 ndata0{3}];
 npblhm2 = [];
 npblhm2 = [ndata2 ndata0{4}];
 nt22 = [];
 nt22 = [ndata2 ndata0{5}];
 nspd2 = [];
 nspd2 = [ndata2 ndata0{6}];
 nrain2 = [];
 nrain2 = [ndata2 ndata0{7}];
 fclose(fid2);
 
 class21(1:ndays2)=0.0;
 class22(1:ndays2)=0.0;
 class23(1:ndays2)=0.0;
 class24(1:ndays2)=0.0;
 class25(1:ndays2)=0.0;
 class26(1:ndays2)=0.0;
 for iday = 1: ndays2
    if npm252(iday)<35.0
        class21(iday)= npm252(iday); 
    elseif npm252(iday)>35.0&npm252(iday)<75.0
        class22(iday)= npm252(iday); 
    elseif npm252(iday)>75.0&npm252(iday)<115.0
        class23(iday)= npm252(iday); 
    elseif npm252(iday)>115.0&npm252(iday)<150.0
        class24(iday)= npm252(iday);         
    elseif npm252(iday)>150.0&npm252(iday)<250.0
        class25(iday)= npm252(iday); 
    elseif npm252(iday)>250.0&npm252(iday)<350.0
        class26(iday)= npm252(iday);
    end  
 end

nclass2(1)=sum(class21~=0)
nclass2(2)=sum(class22~=0)
nclass2(3)=sum(class23~=0)
nclass2(4)=sum(class24~=0)
nclass2(5)=sum(class25~=0)
nclass2(6)=sum(class26~=0)
 
infile3=strcat(dir0,'\',fname3);
fprintf('%s\n',infile3)
fid3 = fopen(infile3);
ndata0 = [];
line = [];
line = fgetl(fid3);   %read head:Date, PM25, PBLH, PBLHm, T2, SPD, RAIN
fprintf('%s\n',line)
%ndata0 = textscan(fid1,'%s  %8.4f %8.4f %8.4f %8.4f %8.4f %8.4f'); 
ndata0 = textscan(fid3,'%s%f%f%f%f%f%f'); 
ndays3 = numel(ndata0{1});
ndata3 = [];
 ndate3 = [];       
 ndate3 = [ndata3 ndata0{1}];
 npm253 = [];
 npm253 = [ndata3 ndata0{2}];
 npblh3 = [];
 npblh3 = [ndata3 ndata0{3}];
 npblhm3 = [];
 npblhm3 = [ndata3 ndata0{4}];
 nt23 = [];
 nt23 = [ndata3 ndata0{5}];
 nspd3 = [];
 nspd3 = [ndata3 ndata0{6}];
 nrain3 = [];
 nrain3 = [ndata3 ndata0{7}];
 fclose(fid3);
 
 class31(1:ndays3)=0.0;
 class32(1:ndays3)=0.0;
 class33(1:ndays3)=0.0;
 class34(1:ndays3)=0.0;
 class35(1:ndays3)=0.0;
 class36(1:ndays3)=0.0;
 for iday = 1: ndays3
    if npm253(iday)<35.0
        class31(iday)= npm253(iday); 
    elseif npm253(iday)>35.0&npm253(iday)<75.0
        class32(iday)= npm253(iday); 
    elseif npm253(iday)>75.0&npm253(iday)<115.0
        class33(iday)= npm253(iday); 
    elseif npm253(iday)>115.0&npm253(iday)<150.0
        class34(iday)= npm253(iday);         
    elseif npm253(iday)>150.0&npm253(iday)<250.0
        class35(iday)= npm253(iday); 
    elseif npm253(iday)>250.0&npm253(iday)<350.0
        class36(iday)= npm253(iday);
    end  
 end

nclass3(1)=sum(class31~=0)
nclass3(2)=sum(class32~=0)
nclass3(3)=sum(class33~=0)
nclass3(4)=sum(class34~=0)
nclass3(5)=sum(class35~=0)
nclass3(6)=sum(class36~=0)
nclass=[nclass1;nclass2;nclass3]

infile4=strcat(dir0,'\',fname4);
fprintf('%s\n',infile4)
fid4 = fopen(infile4);
ndata0 = [];
line = [];
line = fgetl(fid4);   %read head:Date, PM25, PBLH, PBLHm, T2, SPD, RAIN
fprintf('%s\n',line)
%ndata0 = textscan(fid1,'%s  %8.4f %8.4f %8.4f %8.4f %8.4f %8.4f'); 
ndata0 = textscan(fid4,'%s%f%f%f%f%f%f'); 
ndays4 = numel(ndata0{1});
ndata4 = [];
 ndate4 = [];       
 ndate4 = [ndata4 ndata0{1}];
 npm254 = [];
 npm254 = [ndata4 ndata0{2}];
 npblh4 = [];
 npblh4 = [ndata4 ndata0{3}];
 npblhm4 = [];
 npblhm4 = [ndata4 ndata0{4}];
 nt24 = [];
 nt24 = [ndata4 ndata0{5}];
 nspd4 = [];
 nspd4 = [ndata4 ndata0{6}];
 nrain4 = [];
 nrain4 = [ndata4 ndata0{7}];
 fclose(fid4);
 
 class41(1:ndays4)=0.0;
 class42(1:ndays4)=0.0;
 class43(1:ndays4)=0.0;
 class44(1:ndays4)=0.0;
 class45(1:ndays4)=0.0;
 class46(1:ndays4)=0.0;
 for iday = 1: ndays4
    if npm254(iday)<35.0
        class41(iday)= npm254(iday); 
    elseif npm254(iday)>35.0&npm254(iday)<75.0
        class42(iday)= npm254(iday); 
    elseif npm254(iday)>75.0&npm254(iday)<115.0
        class43(iday)= npm254(iday); 
    elseif npm254(iday)>115.0&npm254(iday)<150.0
        class44(iday)= npm254(iday);         
    elseif npm254(iday)>150.0&npm254(iday)<250.0
        class45(iday)= npm254(iday); 
    elseif npm254(iday)>250.0&npm254(iday)<350.0
        class46(iday)= npm254(iday);
    end  
 end

nclass4(1)=sum(class41~=0)
nclass4(2)=sum(class42~=0)
nclass4(3)=sum(class43~=0)
nclass4(4)=sum(class44~=0)
nclass4(5)=sum(class45~=0)
nclass4(6)=sum(class46~=0)
nclass=[nclass1;nclass2;nclass3;nclass4]

pnclass1=nclass1/ndays1*100;
pnclass2=nclass2/ndays2*100;
pnclass3=nclass3/ndays3*100;
pnclass4=nclass4/ndays4*100;
pnclass=[pnclass1;pnclass2;pnclass3;pnclass4]

figure(1)
h1=bar(pnclass,'stacked'); %barwidth 0.5
set(h1(1),'facecolor',[0,1,0])   %green
set(h1(2),'facecolor',[1,1,0])   %yelllow
set(h1(3),'facecolor',[1,0.64706,0]) %orange
set(h1(4),'facecolor',[1,0,0])  %red
%set(h(5),'facecolor',[1,0,1])  %magenta
set(h1(5),'facecolor',[0.6902,0.18824,0.37647])  %marron
set(h1(6),'facecolor',[0.69804,0.13333,0.13333])  %Firebrick
set(gca,'Fontsize',20);
leg1=legend('1','2','3','4','5','6','Location','EastOutSide')
set(leg1,'Orientation','vertical')
%set(leg1,'Orientation','horizontal')
set(leg1,'Box','off')
xlim([0.5,4.5])
ylim([0,100])
set(gca,'xtick',1:1:11)
set(gca, 'xticklabel', {'2016','2017','2018','2019'})
%strlabel=strcat('\fontsize{13} O_{3}');
%ylabel({strlabel});
%ylabel({'\fontsize{15} days'});
ylabel({'\fontsize{25} Frequency of Occurence (%)'});
strg=strcat('print -dpng da_beijing_2016_2017_2018_2019_MAM.png');
strg1=[strg];
eval(strg1)




  