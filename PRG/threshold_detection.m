function [li_starting_shift, mean_bl, std_bl, up_thr, low_thr] = threshold_detection(data, window, limit, sample)

mean_bl = mean(data(window(1) : window(2)));
std_bl = std(data(window(1) : window(2)));
up_thr = mean_bl + (limit * std_bl);
low_thr = mean_bl - (limit * std_bl);

% Find shift OVER threshold, in a window of n sample.
bool_over_thr = zeros(size(data));
bool_over_thr(window(2): end) = data(window(2): end) >=  up_thr;

li_starting_shift(1) = shift_detection(bool_over_thr, sample);
li_starting_shift(1) = li_starting_shift(1) - 1; %Get value on the threshold

% Find shift UNDER threshold, in a window of n sample.
bool_under_thr = zeros(size(data));
bool_under_thr(window(2): end) = data(window(2): end) <=  low_thr;


li_starting_shift(2) = shift_detection(bool_under_thr, sample);
li_starting_shift(2) = li_starting_shift(2) + 1; %Get value on the threshold

% find the first threshold shift.
li_starting_shift = min(li_starting_shift);

end