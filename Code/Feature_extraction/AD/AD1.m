function [MBA]=AD1(proteinA,OriginData,lag)

AAindex = 'ACDEFGHIKLMNPQRSTVWY';
proteinA= strrep(proteinA,'X','');  % omit 'X' 
L1=length(proteinA); 
AAnum1= [];
for i=1:L1
AAnum1 = [AAnum1,OriginData(:,findstr(AAindex,proteinA(i)))];%findstr(str,sub)strΪ�����ҵ��ַ�����subΪ�Ӵ��������ķ���ֵ��һ�����飬�����������Ӵ������ַ����г��ֵ�λ�á�
end

% Matrix1=[];
% Matrix2=[];
% bsxfun(@times,H(:,data),[H(:,shuju(i,i:end)),zeros(1,i-1)])
%bsxfun��@���ж���ĺ������� ����1������2��
%bsxfun��@������1������2����������ʽ������1������2��
for i=1:lag
sum_term=bsxfun(@times,AAnum1(:,1:end-i),AAnum1(:,i+1:end));% times(A,B)=A.*B 
MBA1(:,i)=(1/(L1-i)).*sum(sum_term,2);%S = sum(A,dim) ��ά�� dim �����ܺ͡����磬��� A Ϊ������ sum(A,2) �ǰ���ÿһ���ܺ͵���������
end
MBA1=MBA1';
MBA=reshape(MBA1,1,lag*13);
