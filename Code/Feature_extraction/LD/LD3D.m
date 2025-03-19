
function ld3po=LD3D(numberpo)
num=numel(numberpo);
number=numberpo;
out=[];
Ssign=[];
for j=1:num
set=number{j};
for i=1:7
A{i}=length(find(set==i));
Asign{i}=find(set==i);
end
M=cell2mat(A);
N=length(set);
N1=1;
sign1=[];
sign2=[];
for k=1:7
N2=ceil(M(k)*0.25);
N3=ceil(M(k)*0.5);
N4=ceil(M(k)*0.75);
N5=M(k)*1;
if (M(k)==0);
    sign2=[sign2,zeros(1,5)];
    continue;
end
sign1=[Asign{k}(:,N1),Asign{k}(:,N2),Asign{k}(:,N3),Asign{k}(:,N4),Asign{k}(:,N5)];
sign2=[sign2,sign1/N];
end
Ssign{j}=sign2;
end
NUM=numel(Ssign);
for k=1:num
    out=[out,Ssign{k}];
end
ld3po=out;






