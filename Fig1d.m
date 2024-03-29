clear;clc;close 
%Load the data
load('Data for Fig1d.mat')
%draw Fig1d
set(groot, 'DefaultAxesFontName', 'Times New Roman');
set(groot, 'DefaultTextFontName', 'Times New Roman');
lon=-179.75:0.5:179.75;
lat=89.75:-0.5:-89.75;
figure(1)
set (gcf,'Position',[300,300,600,300]);  % [left bottom width height]
ax = axes;
ax.Position = [0.1 0.35 0.8 0.6]; % [left bottom width height]
[Lon1,Lat1]=meshgrid(lon,lat);
pcolor(Lon1,Lat1,Data');
set(pcolor(Lon1,Lat1,Data'),'linestyle','none');
set(gca,'xtick',-179.75:59.91666:179.75,'xticklabel',{'180^o','120^oW','60^oW','0^o','60^oE','120^oE','180^o'});
set(gca,'ytick',-80:40:90,'yticklabel',{'80^oS','40^oS','0^o','40^oN','80^oN'});
ylim([-90 90]);
shading interp;
load('CustomColormap for Fig1d.mat');  
colormap(CustomColormap); 
h = colorbar('Location', 'southoutside','Ylim',[-0.08 0.08],'YTick',[-0.08 -0.04 0 0.04 0.08]);
h.Position = [0.1 0.12 0.8 0.05]; %[left bottom width height]
caxis([-0.08 0.08]);
x =0;  
y = -60;  
text(x, y, 'Future LAI trend under SSP585', 'FontSize', 11, 'HorizontalAlignment', 'center');
x = 0;  
y = -75;  
text(x, y, '(m^2 m^-^2 decade^-^1)', 'FontSize', 11, 'HorizontalAlignment', 'center');
newFontSize = 11;
set(gca, 'FontSize', newFontSize);


