function E = AEoutput(input,framerate,type)
%take in frame resolved input data, frame rate and keyframe type
%output excel writeable cell matrix formatted for AE keyframe
%This line is a test for GitHub
$test

%determine keyframe type (position, scale, rotation, value
[a,b] = size(input);
if (strcmp(type,'pos') == 1)
    %position keyframes
    fprintf('Processing Position Data\n');
    output = cell(a+13,5);
    %Standard output items
    output{1,1} = 'Adobe After Effects 8.0 Keyframe Data';
    output{3,2} = 'Units Per Second';
    output{4,2} = 'Source Width';
    output{5,2} = 'Source Height';
    output{6,2} = 'Source Pixel Aspect Ratio';
    output{7,2} = 'Comp Pixel Aspect Ratio';
    output{9,1} = 'Transform';
    output{a+13,1} = 'End of Keyframe Data';
    %source data info (still standard)
    output{3,3} = framerate;
    output{4,3} = 100;
    output{5,3} = 100;
    output{6,3} = 1;
    output{7,3} = 1;
    
    %position specific data
    output{9,2} = 'Position';
    output{10,2} = 'Frame';
    output{10,3} = 'X pixels';
    output{10,4} = 'Y pixels';
    output{10,5} = 'Z pixels';
    cellInput = num2cell(input);
    output(11:(a+10),2:5) = cellInput;
    E = output;    
    return
elseif (strcmp(type,'rot') == 1)
    %rotation keyframes
    fprintf('Rotation!\n')
    output = cell(a+13,3);
    %Standard output items
    output{1,1} = 'Adobe After Effects 8.0 Keyframe Data';
    output{3,2} = 'Units Per Second';
    output{4,2} = 'Source Width';
    output{5,2} = 'Source Height';
    output{6,2} = 'Source Pixel Aspect Ratio';
    output{7,2} = 'Comp Pixel Aspect Ratio';
    output{9,1} = 'Transform';
    output{a+13,1} = 'End of Keyframe Data';
    %source data info (still standard)
    output{3,3} = framerate;
    output{4,3} = 100;
    output{5,3} = 100;
    output{6,3} = 1;
    output{7,3} = 1;
    
    %Rotation Specific outputs
    output{9,2} = 'Rotation';
    output{10,2} = 'Frame';
    output{10,3} = 'degrees';
    cellInput = num2cell(input);
    output(11:(a+10),2:3) = cellInput;
    E =output;
    return
elseif (strcmp(type,'sca') == 1)
    %scale data
    fprintf('scale!\n')
    output = cell(a+13,5);
    %Standard output items
    output{1,1} = 'Adobe After Effects 8.0 Keyframe Data';
    output{3,2} = 'Units Per Second';
    output{4,2} = 'Source Width';
    output{5,2} = 'Source Height';
    output{6,2} = 'Source Pixel Aspect Ratio';
    output{7,2} = 'Comp Pixel Aspect Ratio';
    output{9,1} = 'Transform';
    output{a+13,1} = 'End of Keyframe Data';
    %source data info (still standard)
    output{3,3} = framerate;
    output{4,3} = 100;
    output{5,3} = 100;
    output{6,3} = 1;
    output{7,3} = 1;
    
    %position specific data
    output{9,2} = 'Scale';
    output{10,2} = 'Frame';
    output{10,3} = 'X percent';
    output{10,4} = 'Y percent';
    output{10,5} = 'Z percent';
    cellInput = num2cell(input);
    output(11:(a+10),2:5) = cellInput;
    E = output;    
    return
elseif (strcmp(type,'sli') == 1)
    %slider data
    fprintf('Slider Data\n')
    output = cell(a+13,3);
    %Standard output items
    output{1,1} = 'Adobe After Effects 8.0 Keyframe Data';
    output{3,2} = 'Units Per Second';
    output{4,2} = 'Source Width';
    output{5,2} = 'Source Height';
    output{6,2} = 'Source Pixel Aspect Ratio';
    output{7,2} = 'Comp Pixel Aspect Ratio';
    output{9,1} = 'Effects';
    output{a+13,1} = 'End of Keyframe Data';
    %source data info (still standard)
    output{3,3} = framerate;
    output{4,3} = 100;
    output{5,3} = 100;
    output{6,3} = 1;
    output{7,3} = 1;
    
    %Rotation Specific outputs
    output{9,2} = 'Slider Control #1';
    output{9,3} = 'Slider #2';
    output{10,2} = 'Frame';
    cellInput = num2cell(input);
    output(11:(a+10),2:3) = cellInput;
    E =output;
    return
else
    fprintf('ERROR: Unrecognized keyframe type\n')
    E = 0;
    return
end