%% Import data from text file (Oscilaciones.txt)

%% Set up the Import Options and import the data
opts = delimitedTextImportOptions("NumVariables", 5);

% Specify range and delimiter
opts.DataLines = [1, Inf];
opts.Delimiter = " ";

% Specify column names and types
opts.VariableNames = ["VarName1", "f1_v1_", "f2_v2_", "f3Dv1", "f4Dv2"];
opts.VariableTypes = ["double", "double", "double", "double", "double"];

% Specify file level properties
opts.ExtraColumnsRule = "ignore";
opts.EmptyLineRule = "read";
opts.ConsecutiveDelimitersRule = "join";
opts.LeadingDelimitersRule = "ignore";

% Import the data
tbl = readtable("/Users/emaholinaty/Desktop/Oscilaciones.txt", opts);

%% Convert to output type
VarName1 = tbl.VarName1;
f1_v1_ = tbl.f1_v1_;
f2_v2_ = tbl.f2_v2_;
f3Dv1 = tbl.f3Dv1;
f4Dv2 = tbl.f4Dv2;
figure()
plot(VarName1,f1_v1_)
title('Elongación 1')
xlabel('Tiempo (s)')
ylabel('Elongación 1 (m)')
figure()
plot(VarName1,f2_v2_)
title('Elongación 2')
xlabel('Tiempo (s)')
ylabel('Elongación 2 (m)')
figure()
plot(VarName1,f3Dv1)
title('velocidad 1')
xlabel('Tiempo (s)')
ylabel('Velocidad 1 (m/s)')
figure()
plot(VarName1,f4Dv2)
title('velocidad 2')
xlabel('Tiempo (s)')
ylabel('Elongación 1 (m/s)')

%% Clear temporary variables
clear opts tbl
