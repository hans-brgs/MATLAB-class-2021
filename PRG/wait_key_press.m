function val = wait_key_press()
while true
    waitforbuttonpress;
    key = double(get(gcf,'currentcharacter'));
    switch(key)
        case {29, 32, 13}
            val = 'forward';
            break
        case {28, 8} 
            val = 'backward';
            break
        case 49 % keyboard key : 1
            val = 1;
            break
        case 50 % keyboard key : 2
            val = 2;
            break
        case 51 % keyboard key : 3
            val = 3;
            break
        case 52 % keyboard key : 4
            val = 4;
            break
        case 53 % keyboard key : 5
            val = 5;
            break
        case 54 % keyboard key : 6
            val = 6;
            break
        case 55 % keyboard key : 7
            val = 7;
            break
        case 56 % keyboard key : 8
            val = 8;
            break
        case 57 % keyboard key : 9
            val = 9;
            break 
        otherwise
    end
end