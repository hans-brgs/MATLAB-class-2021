function [t,v,li]=iDatatip (fig,p,t,v)

datatip(p,t,v);

% Enable data cursor mode
datacursormode on
dcm_obj = datacursormode(fig);

% Set update function
set(dcm_obj,'UpdateFcn',@myupdatefcn)

% Wait while the user to click
disp('Clique sur le tracé pour repositionner ton curseur, puis clique "Enter" pour valider.')
pause
        % Export cursor to workspace
        info_struct = getCursorInfo(dcm_obj);
        
        for n=size(info_struct,1)
            li=info_struct(n).DataIndex;
            v=info_struct(n).Position(1,2);
            t=info_struct(n).Position(1,1);
        end       
end