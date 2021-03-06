function hertensteinModerate(X,porc,time)

    mu_1 = [4.5 33.0];
    sigma_1 = [5.1 0;0 36.4];
    y_1 = mvnpdf(X,mu_1,sigma_1);
    y_1 = reshape(y_1,length(porc),length(time));

    mu_2 = [7.6 57.1];
    sigma_2 = [8.5 0;0 35.4];
    y_2 = mvnpdf(X,mu_2,sigma_2);
    y_2 = reshape(y_2,length(porc),length(time));

    mu_3 = [5.8 35.5];
    sigma_3 = [3.7 0;0 29.9];
    y_3 = mvnpdf(X,mu_3,sigma_3);
    y_3 = reshape(y_3,length(porc),length(time));

    mu_4 = [6.4 31.4];
    sigma_4 = [4.3 0;0 39.9];
    y_4 = mvnpdf(X,mu_4,sigma_4);
    y_4 = reshape(y_4,length(porc),length(time));

    mu_5 = [5.8 40.2];
    sigma_5 = [7.0 0;0 33.6];
    y_5 = mvnpdf(X,mu_5,sigma_5);
    y_5 = reshape(y_5,length(porc),length(time));

    mu_6 = [5.3 56.7];
    sigma_6 = [4.7 0;0 38.8];
    y_6 = mvnpdf(X,mu_6,sigma_6);
    y_6 = reshape(y_6,length(porc),length(time));


    mu_7 = [6.0 73.3];
    sigma_7 = [4.6 0;0 28.4];
    y_7 = mvnpdf(X,mu_7,sigma_7);
    y_7 = reshape(y_7,length(porc),length(time));


    mu_8 = [6.4 32.2];
    sigma_8 = [5.6 0;0 36.7];
    y_8 = mvnpdf(X,mu_8,sigma_8);
    y_8 = reshape(y_8,length(porc),length(time));


    hold on
        g  = surf(time,porc,y_1)
        set(g,'LineStyle','none')
        h  = surf(time,porc,y_2)
        set(h,'LineStyle','none')
        i  = surf(time,porc,y_3)
        set(i,'LineStyle','none')
        j  = surf(time,porc,y_4)
        set(j,'LineStyle','none')
        k  = surf(time,porc,y_5)
        set(k,'LineStyle','none')
        l  = surf(time,porc,y_6)
        set(l,'LineStyle','none')
        m  = surf(time,porc,y_7)
        set(m,'LineStyle','none')
        n  = surf(time,porc,y_8)
        set(n,'LineStyle','none')
    hold off
    caxis([min(y_1(:))-0.5*range(y_1(:)),max(y_1(:))])
    axis([0 15 0 100 0 0.05])
    xlabel('time')
    ylabel('porc')
    zlabel('Probability Density')
    
end