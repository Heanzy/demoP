%2020-01-14， by kou
clc;clear;close all

dir0='.';
fname1='lamb_index_BTH_2016hr_JJA.txt';
fname2='lamb_index_BTH_2017hr_JJA.txt';
fname3='lamb_index_BTH_2018hr_JJA.txt';
fname4='lamb_index_BTH_2019hr_JJA.txt';
infile1=strcat(dir0,'\',fname1);
infile2=strcat(dir0,'\',fname2);
infile3=strcat(dir0,'\',fname3);
infile4=strcat(dir0,'\',fname4);
outfile1=strcat(dir0,'\sta_',fname1)
outfile2=strcat(dir0,'\sta_',fname2)
outfile3=strcat(dir0,'\sta_',fname3)
outfile4=strcat(dir0,'\sta_',fname4)

cat={'N';'NE';'E';'SE';'S';'SW';'W';'NW';'A';'C';...
     'CN';'CNE';'CE';'CSE';'CS';'CSW';'CW';'CNW';...
     'AN';'ANE';'AE';'ASE';'AS';'ASW';'AW';'ANW';'UD'};

%%%%%%% BTH 2016%%%%%%
fprintf('%s\n',infile1)
fid1 = fopen(infile1);
ndata0 = [];
line = [];
line = fgetl(fid1);   %read head: Date,Type,Dir,SF,WF,ZS,ZW,F,Z 
fprintf('%s\n',line)
ndata0 = textscan(fid1,'%s  %s  %8.4f %8.4f %8.4f %8.4f %8.4f %8.4f %8.4f'); 
ndays1 = numel(ndata0{1});
ndata1 = [];
 ndate1 = [];       
 ndate1 = [ndata1 ndata0{1}];
 ntype1 = [];
 ntype1 = [ndata1 ndata0{2}];                  
 for i_n = 3:9 %7
     ndata1 = [ndata1 ndata0{i_n}];  %ndata(:,1-7)Dir,SF,WF,ZS,ZW,F,Z 
 end
 fclose(fid1);

 cnt1 = nan;
 for i = 1:27
     L = 0;
     %da = [];
     L = strcmp(ntype1(:),cat{i}); 
     da1{i} = ndate1(L);
     cnt1(i) = length(da1{i});  %Frequency of days
     pcnt1(i) = cnt1(i)/ndays1; %Frequency of Occurence (%)
 end
 cnt10 = sum(cnt1(11:27));
 pcnt10 =cnt10/ndays1;
 
 
 
%%%%%%% BTH 2017%%%%%%
fprintf('%s\n',infile2)
fid2 = fopen(infile2);
ndata0 = [];
line = [];
line = fgetl(fid2);   %read head: Date,Type,Dir,SF,WF,ZS,ZW,F,Z 
fprintf('%s\n',line)
ndata0 = textscan(fid2,'%s  %s  %8.4f %8.4f %8.4f %8.4f %8.4f %8.4f %8.4f'); 
ndays2 = numel(ndata0{1});
ndata2 = [];
 ndate2 = [];       
 ndate2 = [ndata2 ndata0{1}];
 ntype2 = [];
 ntype2 = [ndata2 ndata0{2}];                  
 for i_n = 3:9 %7
     ndata2 = [ndata2 ndata0{i_n}];  %ndata(:,1-7)Dir,SF,WF,ZS,ZW,F,Z 
 end
 fclose(fid2);

 cnt2 = nan;
 for i = 1:27
     L = 0;
     %da = [];
     L = strcmp(ntype2(:),cat{i}); 
     da2{i} = ndate2(L);
     cnt2(i) = length(da2{i});  %Frequency of days
     pcnt2(i) = cnt2(i)/ndays2; %Frequency of Occurence (%)
 end
 cnt20 = sum(cnt2(11:27)); 
 pcnt20 =cnt20/ndays2;

 %%%%%%% BTH 2018%%%%%%
fprintf('%s\n',infile3)
fid3 = fopen(infile3);
ndata0 = [];
line = [];
line = fgetl(fid3);   %read head: Date,Type,Dir,SF,WF,ZS,ZW,F,Z 
fprintf('%s\n',line)
ndata0 = textscan(fid3,'%s  %s  %8.4f %8.4f %8.4f %8.4f %8.4f %8.4f %8.4f'); 
ndays3 = numel(ndata0{1});
ndata3 = [];
 ndate3 = [];       
 ndate3 = [ndata3 ndata0{1}];
 ntype3 = [];
 ntype3 = [ndata3 ndata0{2}];                  
 for i_n = 3:9 %7
     ndata3 = [ndata3 ndata0{i_n}];  %ndata(:,1-7)Dir,SF,WF,ZS,ZW,F,Z 
 end
 fclose(fid3);

 cnt3 = nan;
 for i = 1:27
     L = 0;
     %da = [];
     L = strcmp(ntype3(:),cat{i}); 
     da3{i} = ndate3(L);
     cnt3(i) = length(da3{i});  %Frequency of days
     pcnt3(i) = cnt3(i)/ndays3; %Frequency of Occurence (%)
 end
 cnt30 = sum(cnt3(11:27)); 
 pcnt30 =cnt30/ndays3;
 
 
  %%%%%%% BTH 2019%%%%%%
fprintf('%s\n',infile4)
fid4 = fopen(infile4);
ndata0 = [];
line = [];
line = fgetl(fid4);   %read head: Date,Type,Dir,SF,WF,ZS,ZW,F,Z 
fprintf('%s\n',line)
ndata0 = textscan(fid4,'%s  %s  %8.4f %8.4f %8.4f %8.4f %8.4f %8.4f %8.4f'); 
ndays4 = numel(ndata0{1});
ndata4 = [];
 ndate4 = [];       
 ndate4 = [ndata4 ndata0{1}];
 ntype4 = [];
 ntype4 = [ndata4 ndata0{2}];                  
 for i_n = 3:9 %7
     ndata4 = [ndata4 ndata0{i_n}];  %ndata(:,1-7)Dir,SF,WF,ZS,ZW,F,Z 
 end
 fclose(fid4);

 cnt4 = nan;
 for i = 1:27
     L = 0;
     %da = [];
     L = strcmp(ntype4(:),cat{i}); 
     da4{i} = ndate4(L);
     cnt4(i) = length(da4{i});  %Frequency of days
     pcnt4(i) = cnt4(i)/ndays4; %Frequency of Occurence (%)
 end
 cnt40 = sum(cnt4(11:27)); 
 pcnt40 =cnt40/ndays4;
 
 %%%%%%%%%%%%2016\2017\2018\2019%%%%%%%%%%%%%%%%%%
 ocnt1=[cnt1(1:10),cnt10];
 ocnt2=[cnt2(1:10),cnt20];
 ocnt3=[cnt3(1:10),cnt30];
 ocnt4=[cnt4(1:10),cnt40];
 
 pocnt1=[pcnt1(1:10),pcnt10];
 pocnt2=[pcnt2(1:10),pcnt20];
 pocnt3=[pcnt3(1:10),pcnt30];
 pocnt4=[pcnt4(1:10),pcnt40];
 
cnt = [cnt1;cnt2;cnt3;cnt4]';  %27 types
ocnt = [ocnt1;ocnt2;ocnt3;ocnt4]'; %10+1 other types
pcnt = [pcnt1;pcnt2;pcnt3;pcnt4]';
pocnt = [pocnt1;pocnt2;pocnt3;pocnt4]';

[B1,index1]=sort(pcnt1,'descend'); %in descending order  %cnt or pcnt
cat1 = cat(index1);
[B2,index2]=sort(pcnt2,'descend'); %in descending order 
cat2 = cat(index2);
[B3,index3]=sort(pcnt3,'descend'); %in descending order 
cat3 = cat(index3);
[B4,index4]=sort(pcnt4,'descend'); %in descending order 
cat4 = cat(index4);

%fprintf('%8.2f\n',B1*100)
%%%write statistic %%%

fidw1 = fopen(outfile1,'wt');
 for i = 1:27
      %if (cnt1(i)>0)
        fprintf(fidw1,'%s,%i,',cat{i},cnt1(i));
      for j= 1:cnt1(i)
            aa = da1{i};
            bb = aa{j};
            if(j==cnt1(i))
                %fprintf(fidw1,'%s\n',bb); %换行
                fprintf(fidw1,'%s,\n',bb); %换行
            else 
                fprintf(fidw1,'%s,',bb); %tab（多个空格）
            end

      end
      if (cnt1(i)==0)
      fprintf(fidw1,'\n');  %
      end
 end
 fclose(fidw1);
 
fidw2 = fopen(outfile2,'wt'); 
 for i = 1:27
      %if (cnt1(i)>0)
        fprintf(fidw2,'%s,%i,',cat{i},cnt2(i));
      for j= 1:cnt2(i)
            aa = da2{i};
            bb = aa{j};
            if(j==cnt2(i))
                %fprintf(fidw1,'%s\n',bb); %换行
                fprintf(fidw2,'%s,\n',bb); %换行
            else 
                fprintf(fidw2,'%s,',bb); %tab（多个空格）
            end

      end
      if (cnt2(i)==0)
      fprintf(fidw2,'\n');  %
      end
 end
 fclose(fidw2);

 fidw3 = fopen(outfile3,'wt'); 
 for i = 1:27
      %if (cnt1(i)>0)
        fprintf(fidw3,'%s,%i,',cat{i},cnt3(i));
      for j= 1:cnt3(i)
            aa = da3{i};
            bb = aa{j};
            if(j==cnt3(i))
                %fprintf(fidw1,'%s\n',bb); %换行
                fprintf(fidw3,'%s,\n',bb); %换行
            else 
                fprintf(fidw3,'%s,',bb); %tab（多个空格）
            end

      end
      if (cnt3(i)==0)
      fprintf(fidw3,'\n');  %
      end
 end
 fclose(fidw3);
 
  fidw4 = fopen(outfile4,'wt'); 
 for i = 1:27
      %if (cnt1(i)>0)
        fprintf(fidw4,'%s,%i,',cat{i},cnt4(i));
      for j= 1:cnt4(i)
            aa = da4{i};
            bb = aa{j};
            if(j==cnt4(i))
                %fprintf(fidw1,'%s\n',bb); %换行
                fprintf(fidw4,'%s,\n',bb); %换行
            else 
                fprintf(fidw4,'%s,',bb); %tab（多个空格）
            end

      end
      if (cnt4(i)==0)
      fprintf(fidw4,'\n');  %
      end
 end
 fclose(fidw4);
 
figure(1)
h1=bar(pcnt*100,'stacked');
leg1=legend('2016','2017','2018','2019')
set(leg1,'Orientation','horizontal')
set(leg1,'Box','off')
xlim([0.5,27.5])
set(gca,'xtick',1:1:27)
set(gca, 'xticklabel', {'N','NE','E','SE','S','SW','W','NW','A','C','CN','CNE','CE','CSE','CS','CSW','CW','CNW','AN','ANE','AE','ASE','AS','ASW','AW','ANW','UD'})
%strlabel=strcat('\fontsize{13} O_{3}');
%ylabel({strlabel});
set(gca,'Fontsize',13);
%ylabel({'\fontsize{15} days'});
ylabel({'\fontsize{15} Frequency of Occurence (%)'});
set(gca,'Fontsize',14);
strg=strcat('print -dpng lamb_type_27hr_stacked_JJA.png');
strg1=[strg];
eval(strg1)
 

figure(2)
h1=bar(pcnt*100);
leg1=legend('2016','2017','2018','2019')
set(leg1,'Orientation','horizontal')
set(leg1,'Box','off')
xlim([0.5,27.5])
ylim([0,60])
set(gca,'xtick',1:1:27)
set(gca, 'xticklabel', {'N','NE','E','SE','S','SW','W','NW','A','C','CN','CNE','CE','CSE','CS','CSW','CW','CNW','AN','ANE','AE','ASE','AS','ASW','AW','ANW','UD'})
%strlabel=strcat('\fontsize{13} O_{3}');
%ylabel({strlabel});
set(gca,'Fontsize',13);
%ylabel({'\fontsize{15} days'});
ylabel({'\fontsize{20} Frequency of Occurence (%)'});
set(gca,'Fontsize',14);
strg=strcat('print -dpng lamb_type_27hr_JJA.png');
strg1=[strg];
eval(strg1)

 figure(3)
h1=bar(pocnt*100,'stacked');
leg1=legend('2017','2018','2019')
set(leg1,'Orientation','horizontal')
set(leg1,'Box','off')
xlim([0.5,11.5])
set(gca,'xtick',1:1:11)
set(gca, 'xticklabel', {'N','NE','E','SE','S','SW','W','NW','A','C','O'})
%strlabel=strcat('\fontsize{13} O_{3}');
%ylabel({strlabel});
set(gca,'Fontsize',13);
%ylabel({'\fontsize{15} days'});
ylabel({'\fontsize{15} Frequency of Occurence (%)'});
set(gca,'Fontsize',14);
strg=strcat('print -dpng lamb_type_11hr_JJA.png');
strg1=[strg];
eval(strg1)
 
 