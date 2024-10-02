%% 1.load pic (A) extract red component (R) and 
% complement colors to have objects with positive intensity values
clear all
close all
clc
A=imread('plasma.jpg');
gray=im2gray(A);
R=A(:,:,1);
% 3. isolate healthy red component circles
R0=R<115;
%R0 contains the white areas of healthy cells
% 4. Perform closure
SE=strel('disk',5);
R00=imopen(R0,SE);
figure;imshowpair(A,R00);
% 5. compute metrics
[Values,L,NR,labeled]=bwboundaries(R00, 8, 'noholes');
STATS = regionprops(L,'all');
figure;imshow(A);hold on
visboundaries(Values)
% 6. Area and eccentricity (mean+/-SD)
clc
mean_area=mean([STATS.Area]);
std_area=std([STATS.Area]);
sprintf('area: %g +/- %g',mean_area,std_area)
mean_ecc=mean([STATS.Eccentricity]);
std_ecc=std([STATS.Eccentricity]);
sprintf('eccentricity: %g +/- %g',mean_ecc,std_ecc) 
gray_cells=struct('cdata',zeros((size(gray,1)),(size(gray,2)),max(max(L)),"double"));
for i=1:max(max(L))
    gray_cells(:,:,i).cdata=gray(L==i);
    std_cells(i)=std2(gray_cells(:,:,i).cdata);
end
mean_vid=mean(std_cells);
std_vid=std(std_cells);
sprintf('videointensity: %g +/- %g',mean_vid,std_vid)