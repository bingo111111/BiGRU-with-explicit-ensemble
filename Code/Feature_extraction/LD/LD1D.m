function [ld1po]=LD1D(xulie)

num=numel(xulie);
out=[];
for j=1:num
    set=xulie{j};
    N=length(set);
for i=1:7
    a{i}=length(find(set==i));
end
M=cell2mat(a);%cell2mat()��һ���ɶ�����󹹳ɵ�Ԫ������ת����һ������
%�⼴��Ԫ�������еĶ������ϲ���һ������
%��Ҫע����ǲ����κ�����¶��ܵõ���ȷ�Ľ����Ҫ�õ���ȷ�Ľ����
%һ������Ҫ���ǣ���Ԫ�������У�����ͬ�еľ���Ҫ����ȵ�����������ͬ�еľ���Ҫ����ȵ�������
MC1{j}=M/N;
a=[];
set=[];
end

for k=1:num
    out=[out,[MC1{k}]];
end
ld1po=out;
