function output_txt = myupdatefcn(~,event_obj)
  % ~            Currently not used (empty)
   % event_obj    Object containing event data structure
  % output_txt   Data cursor text
  valueFormat = ' \color[rgb]{0 0.6 1}\bf';
  removeValueFormat = '\color[rgb]{.25 .25 .25}\rm'; 
  pos = get(event_obj, 'Position');
  output_txt = {['X ' [valueFormat num2str(pos(1),'%3.2f') removeValueFormat]],...
      ['Y ' [valueFormat num2str(pos(2),'%3.2f') removeValueFormat]]};
end
