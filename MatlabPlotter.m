% ode to plot the streamflow determined from nonlinear codes

fid=('NoTile0.dat');
fidTile=('Tile0.dat');

ThisStruct=ReadDataDimNew(fid);
SimData=ThisStruct{1}.data;
Time=SimData(:,1); 
Flow=SimData(:,2);
Ponded=SimData(:,3);
Soil=SimData(:,4);
% fifth column?

ThisStructTile=ReadDataDimNew(fidTile);
SimDataTile=ThisStructTile{1}.data;
TimeTile=SimDataTile(:,1); 
FlowTile=SimDataTile(:,2);
PondedTile=SimDataTile(:,3);
SoilTile=SimDataTile(:,4);
% fifth column?
a=figure();

plot(Time,Flow,TimeTile,FlowTile)

xlabel('Time (min)','FontSize',14);

ylabel('Flow (m^3/sec[?])','FontSize',14);
set(gca,'FontSize',14)

legend('No Tile','Tile')

saveas(a,sprintf('TileAndNoTile0.eps'),'epsc')
