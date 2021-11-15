function li_starting_shift = shift_detection(bool_shift_thr, sample)


li_shift_thr = find(bool_shift_thr);
if isempty(li_shift_thr)
    li_starting_shift = NaN;
    return;
end

j = 1;
n = 1;
while (n <= sample)
    assignin('base','j',j)
    assignin('base','li_shift_thr',li_shift_thr)
    li_starting_shift = li_shift_thr(j);
    if (bool_shift_thr(li_starting_shift + n)) == 1
        n = n + 1;
    else
        j = j + 1;
    end
    if j >= length(li_shift_thr)
       li_starting_shift = NaN;
       break
    end
end

end