function output = Model(imrgb)
    % imrgb - 32x32x3 uint8, RGB image matrix
    load('CNNparameters');
    imrgb = double(imrgb);
    
    %Layer 1
    output{1} = Normalize(imrgb);

    %layer 2 
    output{2} = Convolve(output{1},filterbanks{2},biasvectors{2});

    %Layer 3
    output{3} = ReLU(output{2});

    %layer 4 
    output{4} = Convolve(output{3}, filterbanks{4},biasvectors{4});

    %Layer 5
    output{5} = ReLU(output{4});

    %Layer 6
    output{6} = MaxPool(output{5});

    %layer 7 
    output{7} = Convolve(output{6},filterbanks{7}, biasvectors{7});

    %Layer 8
    output{8} = ReLU(output{7});

    %layer 9 
    output{9} = Convolve(output{8},filterbanks{9},biasvectors{9});

    %Layer 10
    output{10} = ReLU(output{9});

    %Layer 11
    output{11} = MaxPool(output{10});

    %layer 12
    output{12} = Convolve(output{11},filterbanks{12},biasvectors{12});

    %Layer 13
    output{13} = ReLU(output{12});

    %layer 14 
    output{14} = Convolve(output{13},filterbanks{14},biasvectors{14});

    %Layer 15
    output{15} = ReLU(output{14});

    %Layer 16
    output{16} = MaxPool(output{15});

    %Layer 17
    output{17} = FullConnect(output{16},filterbanks{17},biasvectors{17});

    %Layer 18
    output{18} = SoftMax(output{17});
   
end