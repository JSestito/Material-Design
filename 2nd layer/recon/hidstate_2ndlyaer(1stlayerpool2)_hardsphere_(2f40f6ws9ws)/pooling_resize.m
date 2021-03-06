% load 2nd layer hidden state
load('hidstate_2ndlayer(1stp2)_hardsphere_(24f40f6ws9ws)');
% 1st layer hidenstate pooling 
temp=[];temp2=[];temp3=[];
%pooling ratio
C=2;
%pool part
for i = 1:60
    for j = 1:40
    temp = xtr(i,:);
    temp = reshape(temp,[89*89,40]);
    temp = reshape(temp(:,j),[sqrt(size(temp,1)),sqrt(size(temp,1))]);
    temp = imresize(temp,[44 44]);
    temp = double(im2bw(temp));
    
    temp2(:,j) = temp(:);
    
   
    end
    hidstate=temp2;
%     fname = sprintf('hidstate_2ndlayer(1stp2)_POOL2(hardsphere)_(2f40f6ws9ws12rP20P10Pb01)_%d',i);
%     save(sprintf('%s.mat',fname),'hidstate', '-v7.3');

    temp3(i,:) = temp2(:);
end
pool = temp3;