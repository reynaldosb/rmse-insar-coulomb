clear all
close all
clc

a = imread('asc_atmo_clip_501-501.tif');
d = imread('desc_atmo_clip_501-501.tif');

hua = imread('hu_1_asc.tif');
hud = imread('hu_1_desc.tif');

difa = a - hua;
SQEa  = difa.^2;
sqeav = SQEa(:);
sqeat = sqeav';

suma = 0;

for j=1:numel(sqeat)
   
    suma = suma + sqeat(j);

end 

difd = d - hud;
SQEd  = difd.^2;
sqedv = SQEd(:);
sqedt = sqedv';

sumd = 0;

for j=1:numel(sqedt)
   
    sumd = sumd + sqedt(j);

end 

%xlswrite('/home/reynaldo/Documents/tesis_escrito_mapas-sig/mapas/insumos/forward_modeling/rmse_models/sqeav.xls', sqeav);	 


rmsea = sqrt(suma/numel(sqteat)); % es el RMSE para el paso ascendente

rmsed = sqrt(sumd/numel(sqtedt)); % es el RMSE para el paso descendente


