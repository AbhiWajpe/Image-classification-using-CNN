function out = MaxPool(in)
    
    nw_11 = in(1:2:end, 1:2:end, :);
    sw_21 = in(2:2:end, 1:2:end, :);
    ne_12 = in(1:2:end, 2:2:end, :);
    se_22 = in(2:2:end, 2:2:end, :);
    w = max(nw_11, sw_21);
    e = max(ne_12, se_22);
    out = max(w,e);
end
