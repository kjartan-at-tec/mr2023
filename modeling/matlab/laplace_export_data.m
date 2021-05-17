%% Creating data for plotting laplace pairs

tt = linspace(0, 6, 200);
[xx,yy] = meshgrid(-4:0.025:4);
s = xx + 1j*yy;

%aas = [-2, -1.5, 0, 1, 1+1j, 1j, 2*1j, -1 + 2*1j];
aas = [-2, -1.5, -1, -0.5, 0, 0.5, 1];
aas = [0, 0.5, 1, 1.5, 2, 2.5]*1j;

for i=1:length(aas)
%for i=1:1
    a = aas(i);
    ac = conj(a);
    
    if isreal(a)
        f = exp(a*tt);
    else
        f = real( 1/(2*1j)*(exp(a*tt) - exp(ac*tt)) );
    end
    figure(2*i-1)
    clf
    plot(tt, f)
    
    F = abs( 1./(s-a) + 1./(s-ac) );
    figure(2*i)
    clf
    colormap('cool')
    caxis('manual');
    hh=surfc(xx, yy, F, 'EdgeColor', 'none');
    zlim([-10, 20])
    caxis([0,15])
    
    xlabel('Re')
    ylabel('Im')
    zlabel('|F(s)|')
    view(20,20)
    
     figure(2*i)
     fnamepng = sprintf('laplace-imag-%d.png', i);
    print(fnamepng, '-dpng')
    
end



