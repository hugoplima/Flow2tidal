lagura = 15200; %largura do canal em metros


% htmean=mean(ht);
% ht2=(ht/htmean);
% zero3=mean(ht2);
% zero1=ones(1,13)*zero3;
% flow=((vt*htmean)*lagura);

htmean=mean(ht);
zero3=mean(oscil_mare);
zero1=ones(1,13)*zero3; 
% zero1=ones(1,13)*0;
flow=((vt*ha)*lagura);

figure
%     hold 
    plot(oscil_mare,'Color','k')
    hold
    plot(zero1,'k:')
%     hold 
% 	gtext('_h^{-}_{(t)}','fontsize',20,'fontweight','bold')	% azul
%   gtext('_h^{-}_{(t)}','fontsize',20,'fontweight','bold')	% azul
    ylabel('Water level (m)','fontsize',20,'fontweight','bold')
    xlabel('Horas','fontsize',20,'fontweight','bold')
    set(gca,'fontsize',20,'fontweight','bold');
    xlim([0 14])
    
figure
    plot(flow,'Color','k')
	ylabel('Flow (m{^{3}}s{^{-1}})','fontsize',20,'fontweight','bold')
    xlabel('Horas','fontsize',20,'fontweight','bold')
    set(gca,'fontsize',20,'fontweight','bold');
    xlim([0 14])

figure
    plot(flow,oscil_mare,'Color','k')
    xlabel('Flow (m{^{3}}s{^{-1}})','fontsize',20,'fontweight','bold')
    ylabel('Water level (m)','fontsize',20,'fontweight','bold')
    set(gca,'fontsize',20,'fontweight','bold');
    