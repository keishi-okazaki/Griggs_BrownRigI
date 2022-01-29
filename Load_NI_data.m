clear
close all

addpath('/Users/okazakikeishi/Documents/MATLAB/Griggs_Rig1AE/TDMStoMATv2p5')
openfile= uigetfile('.tdms', 'Pick a File');
my_tdms_struct = TDMS_getStruct(openfile);
load = my_tdms_struct.Measured_Data_1.Load.Props.NI_Scale_0__Linear_Slope...
    * my_tdms_struct.Measured_Data_1.Load.data(2:end);
pressure = my_tdms_struct.Measured_Data_1.Pressure.Props.NI_Scale_0__Linear_Slope...
    * my_tdms_struct.Measured_Data_1.Pressure.data(2:end);
disp = -my_tdms_struct.Measured_Data_1.LVDT.Props.NI_Scale_0__Linear_Slope...
    * my_tdms_struct.Measured_Data_1.LVDT.data(2:end);
disp2 = -my_tdms_struct.Measured_Data_1.LVDT2.Props.NI_Scale_0__Linear_Slope...
    * my_tdms_struct.Measured_Data_1.LVDT2.data(2:end);
syncAE = my_tdms_struct.Measured_Data_1.Sync.Props.NI_Scale_0__Linear_Slope...
    * my_tdms_struct.Measured_Data_1.Sync.data(2:end);
AE_counts = my_tdms_struct.AE_counts.Cumulative_counts.data(2:end);
AE_voltage = my_tdms_struct.AE_counts.Cumulative_voltage.data(2:end);