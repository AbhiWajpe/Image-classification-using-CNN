function cm = confusionmatrix(input,trueLabels)
load('cifar10testdata.mat');
cm = figure;

predclass = [];
for i = 1:10000
    test_data = input(:,:,:,i);
    imagesc(test_data); 
    imrgb = double(test_data);

    layerOutput = Model(imrgb);
    classprobvec = squeeze(layerOutput{end});
    [~, maxclass] = max(classprobvec);

    predclass = [predclass maxclass];
    
end

predictedlabels = [];
for j = 1:10000
    labels = classlabels(predclass(j));
    predictedlabels = [predictedlabels labels];
end
predictedlabels = categorical(predictedlabels)';

    confusionchart(trueLabels,predictedlabels, ...
    'Title','Confusion Matrix', ...
    'RowSummary','row-normalized', ...
    'ColumnSummary','column-normalized');

end