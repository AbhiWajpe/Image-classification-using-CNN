function out = Convolve(input,filterbanks,biasvectors)
    for l = 1:size(filterbanks,4)
         sum = 0;
         for k = 1:size(input,3)
             sum = sum + imfilter(input(:,:,k),filterbanks(:,:,k,l),'conv'); 
         end
         out(:,:,l) = sum + biasvectors(l);
    end
end