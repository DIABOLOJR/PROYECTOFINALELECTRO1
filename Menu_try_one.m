Selection = menu('Bienvenido a Laplace Colocho','Ecuación de Laplace en coordenadas rectangulares','Ecuación de Laplace en coordenadas esféricas','Ecuación de Laplace en coordenadas cilíndricas','Exit');

while Selection < 4
    switch Selection
        
        case 1%RECT
            rect = menu('Elija el problema','1','2','3','regresar');
            
            while rect < 4
                switch rect 
                    
                    case 1 
                        op = menu('Elija Opción','a','b','Return');
                        
                        while op < 3
                            switch op
                                
                                case 1
                                    graf = menu('N','N=2','N=5','N=10','N=20','return');
                                    
                                    while graf < 5
                                        switch graf
                                            
                                            case 1
                                                %1:1
                                                %Elija valores de a y b
                                                a = 1;
                                                b = 2;
                                                %Definimos valores en 0
                                                SUM = 0;
                                                grad = 0;
                                                %Definimos N para la que se trabaje
                                                N = 2;
                                                %constante :D
                                                epsilon0 = (8.85 .*(10^-12));

                                                %DEF XY para la superficie
                                                X = 0:0.03:a;
                                                Y = 0:0.03:b;
                                                %define los puntos apra la grafica en 3D
                                                [x,y] = meshgrid(X,Y);
                                                z = x;

                                                %totalde iteraciones desde 1 hasta donde se definio
                                                for n = 1:N
                                                %Integral
                                                    inte = @(Y) sin(n*pi*Y./b).*(atan(Y./a));
                                                    F = integral(inte,0,b);
                                                %consatantes exxternas de la densidad
                                                    c = 2./(b*sinh(n*pi*a./b));
                                                %Potencial
                                                    v = F.*c.*(sinh(n*pi*x./b)).*(sin(n*pi*y./b));
                                                %Sumatoria
                                                    SUM = v+SUM;
                                                    grad = grad + ((-1).*v);
                                                end

                                                %Gradiente
                                                [Ex, Ey] = gradient(grad);

                                                %densidad/E0 = a la divergencia del campo
                                                %encontrar la densidad con graddiente del gradeiente :D
                                                [Dx, Dy] = gradient(gradient(grad));

                                                %E0*Gradiete 2
                                                px = epsilon0.* Dx;
                                                py = epsilon0.* Dy;
                                                %valor de la densidad
                                                densidad = sqrt((px.^2)+(py.^2));

                                                colormap HOT
                                                %PLOT 1 Campo
                                                subplot (2,2,1); contour3(Ex, Ey, z); hold on
                                                quiver3(x,y,z,Ex, Ey, z); 
                                                hold off
                                                title ('N = 2 CAMPO')
                                                xlabel('Eje X'); ylabel('Eje Y'); zlabel('Eje Z');

                                                %PLOT 2 Potencial
                                                subplot (2,2,2); surf(x, y, SUM);
                                                title ('N = 2 POTENCIAL')
                                                xlabel('Eje X'); ylabel('Eje Y'); zlabel('Eje Z');
                                                view(-47,32);

                                                %PLOT 3 Densidad
                                                subplot (2,2,3); surf(x, y, densidad);
                                                title ('N = 2 DENSIDAD'); xlabel('Eje X'); ylabel('Eje Y'); zlabel('Eje Z');
                                                view(-47,32);
                                                
                                            case 2
                                                %1:1
                                                %Elija valores de a y b
                                                a = 1;
                                                b = 2;
                                                %Definimos valores en 0
                                                SUM = 0;
                                                grad = 0;
                                                %Definimos N para la que se trabaje
                                                N = 5;
                                                %constante :D
                                                epsilon0 = (8.85 .*(10^-12));

                                                %DEF XY para la superficie
                                                X = 0:0.03:a;
                                                Y = 0:0.03:b;
                                                %define los puntos apra la grafica en 3D
                                                [x,y] = meshgrid(X,Y);
                                                z = x;

                                                %totalde iteraciones desde 1 hasta donde se definio
                                                for n = 1:N
                                                %Integral
                                                    inte = @(Y) sin(n*pi*Y./b).*(atan(Y./a));
                                                    F = integral(inte,0,b);
                                                %consatantes exxternas de la densidad
                                                    c = 2./(b*sinh(n*pi*a./b));
                                                %Potencial
                                                    v = F.*c.*(sinh(n*pi*x./b)).*(sin(n*pi*y./b));
                                                %Sumatoria
                                                    SUM = v+SUM;
                                                    grad = grad + ((-1).*v);
                                                end

                                                %Gradiente
                                                [Ex, Ey] = gradient(grad);

                                                %densidad/E0 = a la divergencia del campo
                                                %encontrar la densidad con graddiente del gradeiente :D
                                                [Dx, Dy] = gradient(gradient(grad));

                                                %E0*Gradiete 2
                                                px = epsilon0.* Dx;
                                                py = epsilon0.* Dy;
                                                %valor de la densidad
                                                densidad = sqrt((px.^2)+(py.^2));

                                                colormap HOT
                                                %PLOT 1 Campo
                                                subplot (2,2,1); contour3(Ex, Ey, z); hold on
                                                quiver3(x,y,z,Ex, Ey, z); 
                                                hold off
                                                title ('N = 5 CAMPO')
                                                xlabel('Eje X'); ylabel('Eje Y'); zlabel('Eje Z');

                                                %PLOT 2 Potencial
                                                subplot (2,2,2); surf(x, y, SUM);
                                                title ('N = 5 POTENCIAL')
                                                xlabel('Eje X'); ylabel('Eje Y'); zlabel('Eje Z');
                                                view(-47,32);

                                                %PLOT 3 Densidad
                                                subplot (2,2,3); surf(x, y, densidad);
                                                title ('N = 5 DENSIDAD'); xlabel('Eje X'); ylabel('Eje Y'); zlabel('Eje Z');
                                                view(-47,32);
                                                
                                            case 3
                                                %1:1
                                                %Elija valores de a y b
                                                a = 1;
                                                b = 2;
                                                %Definimos valores en 0
                                                SUM = 0;
                                                grad = 0;
                                                %Definimos N para la que se trabaje
                                                N = 10;
                                                %constante :D
                                                epsilon0 = (8.85 .*(10^-12));

                                                %DEF XY para la superficie
                                                X = 0:0.03:a;
                                                Y = 0:0.03:b;
                                                %define los puntos apra la grafica en 3D
                                                [x,y] = meshgrid(X,Y);
                                                z = x;

                                                %totalde iteraciones desde 1 hasta donde se definio
                                                for n = 1:N
                                                %Integral
                                                    inte = @(Y) sin(n*pi*Y./b).*(atan(Y./a));
                                                    F = integral(inte,0,b);
                                                %consatantes exxternas de la densidad
                                                    c = 2./(b*sinh(n*pi*a./b));
                                                %Potencial
                                                    v = F.*c.*(sinh(n*pi*x./b)).*(sin(n*pi*y./b));
                                                %Sumatoria
                                                    SUM = v+SUM;
                                                    grad = grad + ((-1).*v);
                                                end

                                                %Gradiente
                                                [Ex, Ey] = gradient(grad);

                                                %densidad/E0 = a la divergencia del campo
                                                %encontrar la densidad con graddiente del gradeiente :D
                                                [Dx, Dy] = gradient(gradient(grad));

                                                %E0*Gradiete 2
                                                px = epsilon0.* Dx;
                                                py = epsilon0.* Dy;
                                                %valor de la densidad
                                                densidad = sqrt((px.^2)+(py.^2));

                                                colormap HOT
                                                %PLOT 1 Campo
                                                subplot (2,2,1); contour3(Ex, Ey, z); hold on
                                                quiver3(x,y,z,Ex, Ey, z); 
                                                hold off
                                                title ('N = 10 CAMPO')
                                                xlabel('Eje X'); ylabel('Eje Y'); zlabel('Eje Z');

                                                %PLOT 2 Potencial
                                                subplot (2,2,2); surf(x, y, SUM);
                                                title ('N = 10 POTENCIAL')
                                                xlabel('Eje X'); ylabel('Eje Y'); zlabel('Eje Z');
                                                view(-47,32);

                                                %PLOT 3 Densidad
                                                subplot (2,2,3); surf(x, y, densidad);
                                                title ('N = 10 DENSIDAD'); xlabel('Eje X'); ylabel('Eje Y'); zlabel('Eje Z');
                                                view(-47,32);
                                            case 4
                                                %1:1
                                                %Elija valores de a y b
                                                a = 1;
                                                b = 2;
                                                %Definimos valores en 0
                                                SUM = 0;
                                                grad = 0;
                                                %Definimos N para la que se trabaje
                                                N = 20;
                                                %constante :D
                                                epsilon0 = (8.85 .*(10^-12));

                                                %DEF XY para la superficie
                                                X = 0:0.03:a;
                                                Y = 0:0.03:b;
                                                %define los puntos apra la grafica en 3D
                                                [x,y] = meshgrid(X,Y);
                                                z = x;

                                                %totalde iteraciones desde 1 hasta donde se definio
                                                for n = 1:N
                                                %Integral
                                                    inte = @(Y) sin(n*pi*Y./b).*(atan(Y./a));
                                                    F = integral(inte,0,b);
                                                %consatantes exxternas de la densidad
                                                    c = 2./(b*sinh(n*pi*a./b));
                                                %Potencial
                                                    v = F.*c.*(sinh(n*pi*x./b)).*(sin(n*pi*y./b));
                                                %Sumatoria
                                                    SUM = v+SUM;
                                                    grad = grad + ((-1).*v);
                                                end

                                                %Gradiente
                                                [Ex, Ey] = gradient(grad);

                                                %densidad/E0 = a la divergencia del campo
                                                %encontrar la densidad con graddiente del gradeiente :D
                                                [Dx, Dy] = gradient(gradient(grad));

                                                %E0*Gradiete 2
                                                px = epsilon0.* Dx;
                                                py = epsilon0.* Dy;
                                                %valor de la densidad
                                                densidad = sqrt((px.^2)+(py.^2));

                                                colormap HOT
                                                %PLOT 1 Campo
                                                subplot (2,2,1); contour3(Ex, Ey, z); hold on
                                                quiver3(x,y,z,Ex, Ey, z); 
                                                hold off
                                                title ('N = 20 CAMPO')
                                                xlabel('Eje X'); ylabel('Eje Y'); zlabel('Eje Z');

                                                %PLOT 2 Potencial
                                                subplot (2,2,2); surf(x, y, SUM);
                                                title ('N = 20 POTENCIAL')
                                                xlabel('Eje X'); ylabel('Eje Y'); zlabel('Eje Z');
                                                view(-47,32);

                                                %PLOT 3 Densidad
                                                subplot (2,2,3); surf(x, y, densidad);
                                                title ('N = 20 DENSIDAD'); xlabel('Eje X'); ylabel('Eje Y'); zlabel('Eje Z');
                                                view(-47,32);
                                                
                                            case 5
                                        end
                                        
                                        graf = menu('N','N=2','N=5','N=10','N=20','return');
                                        
                                    end
                                    
                                case 2
                                    graf2 = menu('N','N=2','N=5','N=10','N=20','return');
                                    
                                    while graf2 < 5
                                        switch graf2
                                            
                                            case 1
                                                %1:2
                                                %Elija valores de a y b
                                                a = 1;
                                                b = 1;
                                                %Definimos valores en 0
                                                SUM = 0;
                                                grad = 0;
                                                %Definimos N para la que se trabaje
                                                N = 2;
                                                %constante :D
                                                epsilon0 = (8.85 .*(10^-12));

                                                %DEF XY para la superficie
                                                X = -a:0.05:a;
                                                Y = 0:0.05:b;
                                                %define los puntos apra la grafica en 3D
                                                [x,y] = meshgrid(X,Y);
                                                z = x;

                                                %totalde iteraciones desde 1 hasta donde se definio
                                                for n = 1:N
                                                %Integral
                                                    inte = @(Y) sin(n*pi*Y./b).*((2*(Y.^3))+5);
                                                    F = integral(inte,0,b);
                                                %consatantes exxternas de la densidad
                                                    c = 2./(b*cosh(n*pi*a./b));
                                                %Potencial
                                                    v = F.*c.*(cosh(n*pi*x./b)).*(sin(n*pi*y./b));
                                                %Sumatoria
                                                    SUM = v+SUM;
                                                    grad = grad + ((-1).*v);
                                                end

                                                %Gradiente
                                                [Ex, Ey] = gradient(grad);
                                                Ex = -Ex;
                                                Ey = -Ey;
                                                Ez = sqrt((Ex.^2)+(Ey.^2));
                                                %densidad/E0 = a la divergencia del campo
                                                %encontrar la densidad con graddiente del gradeiente :D
                                                [Dx, Dy] = gradient(gradient(grad));

                                                %E0*Gradiete 2
                                                px = epsilon0.* Dx;
                                                py = epsilon0.* Dy;
                                                %valor de la densidad
                                                densidad = sqrt((px.^2)+(py.^2));

                                                colormap HOT
                                                %PLOT 1 Campo
                                                subplot (2,2,1); contour3(Ex, Ey, Ez); hold on
                                                quiver3(x,y,z,Ex, Ey, Ez); 
                                                hold off
                                                title ('N = 2 CAMPO')
                                                xlabel('Eje X'); ylabel('Eje Y'); zlabel('Eje Z');

                                                %PLOT 2 Potencial
                                                subplot (2,2,2); surf(x, y, SUM);
                                                title ('N = 2 POTENCIAL')
                                                xlabel('Eje X'); ylabel('Eje Y'); zlabel('Eje Z');
                                                view(-47,32);

                                                %PLOT 3 Densidad
                                                subplot (2,2,3); surf(x, y, densidad);
                                                title ('N = 2 DENSIDAD'); xlabel('Eje X'); ylabel('Eje Y'); zlabel('Eje Z');
                                                view(-47,32);
                                            case 2
                                               %1:2
                                                %Elija valores de a y b
                                                a = 1;
                                                b = 1;
                                                %Definimos valores en 0
                                                SUM = 0;
                                                grad = 0;
                                                %Definimos N para la que se trabaje
                                                N = 5;
                                                %constante :D
                                                epsilon0 = (8.85 .*(10^-12));

                                                %DEF XY para la superficie
                                                X = -a:0.05:a;
                                                Y = 0:0.05:b;
                                                %define los puntos apra la grafica en 3D
                                                [x,y] = meshgrid(X,Y);
                                                z = x;

                                                %totalde iteraciones desde 1 hasta donde se definio
                                                for n = 1:N
                                                %Integral
                                                    inte = @(Y) sin(n*pi*Y./b).*((2*(Y.^3))+5);
                                                    F = integral(inte,0,b);
                                                %consatantes exxternas de la densidad
                                                    c = 2./(b*cosh(n*pi*a./b));
                                                %Potencial
                                                    v = F.*c.*(cosh(n*pi*x./b)).*(sin(n*pi*y./b));
                                                %Sumatoria
                                                    SUM = v+SUM;
                                                    grad = grad + ((-1).*v);
                                                end

                                                %Gradiente
                                                [Ex, Ey] = gradient(grad);
                                                Ex = -Ex;
                                                Ey = -Ey;
                                                Ez = sqrt((Ex.^2)+(Ey.^2));
                                                %densidad/E0 = a la divergencia del campo
                                                %encontrar la densidad con graddiente del gradeiente :D
                                                [Dx, Dy] = gradient(gradient(grad));

                                                %E0*Gradiete 2
                                                px = epsilon0.* Dx;
                                                py = epsilon0.* Dy;
                                                %valor de la densidad
                                                densidad = sqrt((px.^2)+(py.^2));

                                                colormap HOT
                                                %PLOT 1 Campo
                                                subplot (2,2,1); contour3(Ex, Ey, Ez); hold on
                                                quiver3(x,y,z,Ex, Ey, Ez); 
                                                hold off
                                                title ('N = 5 CAMPO')
                                                xlabel('Eje X'); ylabel('Eje Y'); zlabel('Eje Z');

                                                %PLOT 2 Potencial
                                                subplot (2,2,2); surf(x, y, SUM);
                                                title ('N = 5 POTENCIAL')
                                                xlabel('Eje X'); ylabel('Eje Y'); zlabel('Eje Z');
                                                view(-47,32);

                                                %PLOT 3 Densidad
                                                subplot (2,2,3); surf(x, y, densidad);
                                                title ('N = 5 DENSIDAD'); xlabel('Eje X'); ylabel('Eje Y'); zlabel('Eje Z');
                                                view(-47,32);
                                                
                                            case 3
                                                %1:2
                                                %Elija valores de a y b
                                                a = 1;
                                                b = 1;
                                                %Definimos valores en 0
                                                SUM = 0;
                                                grad = 0;
                                                %Definimos N para la que se trabaje
                                                N = 10;
                                                %constante :D
                                                epsilon0 = (8.85 .*(10^-12));

                                                %DEF XY para la superficie
                                                X = -a:0.05:a;
                                                Y = 0:0.05:b;
                                                %define los puntos apra la grafica en 3D
                                                [x,y] = meshgrid(X,Y);
                                                z = x;

                                                %totalde iteraciones desde 1 hasta donde se definio
                                                for n = 1:N
                                                %Integral
                                                    inte = @(Y) sin(n*pi*Y./b).*((2*(Y.^3))+5);
                                                    F = integral(inte,0,b);
                                                %consatantes exxternas de la densidad
                                                    c = 2./(b*cosh(n*pi*a./b));
                                                %Potencial
                                                    v = F.*c.*(cosh(n*pi*x./b)).*(sin(n*pi*y./b));
                                                %Sumatoria
                                                    SUM = v+SUM;
                                                    grad = grad + ((-1).*v);
                                                end

                                                %Gradiente
                                                [Ex, Ey] = gradient(grad);
                                                Ex = -Ex;
                                                Ey = -Ey;
                                                Ez = sqrt((Ex.^2)+(Ey.^2));
                                                %densidad/E0 = a la divergencia del campo
                                                %encontrar la densidad con graddiente del gradeiente :D
                                                [Dx, Dy] = gradient(gradient(grad));

                                                %E0*Gradiete 2
                                                px = epsilon0.* Dx;
                                                py = epsilon0.* Dy;
                                                %valor de la densidad
                                                densidad = sqrt((px.^2)+(py.^2));

                                                colormap HOT
                                                %PLOT 1 Campo
                                                subplot (2,2,1); contour3(Ex, Ey, Ez); hold on
                                                quiver3(x,y,z,Ex, Ey, Ez); 
                                                hold off
                                                title ('N = 10 CAMPO')
                                                xlabel('Eje X'); ylabel('Eje Y'); zlabel('Eje Z');

                                                %PLOT 2 Potencial
                                                subplot (2,2,2); surf(x, y, SUM);
                                                title ('N = 10 POTENCIAL')
                                                xlabel('Eje X'); ylabel('Eje Y'); zlabel('Eje Z');
                                                view(-47,32);

                                                %PLOT 3 Densidad
                                                subplot (2,2,3); surf(x, y, densidad);
                                                title ('N = 10 DENSIDAD'); xlabel('Eje X'); ylabel('Eje Y'); zlabel('Eje Z');
                                                view(-47,32);
                                                
                                            case 4
                                                %1:2
                                                %Elija valores de a y b
                                                a = 1;
                                                b = 1;
                                                %Definimos valores en 0
                                                SUM = 0;
                                                grad = 0;
                                                %Definimos N para la que se trabaje
                                                N = 20;
                                                %constante :D
                                                epsilon0 = (8.85 .*(10^-12));

                                                %DEF XY para la superficie
                                                X = -a:0.05:a;
                                                Y = 0:0.05:b;
                                                %define los puntos apra la grafica en 3D
                                                [x,y] = meshgrid(X,Y);
                                                z = x;

                                                %totalde iteraciones desde 1 hasta donde se definio
                                                for n = 1:N
                                                %Integral
                                                    inte = @(Y) sin(n*pi*Y./b).*((2*(Y.^3))+5);
                                                    F = integral(inte,0,b);
                                                %consatantes exxternas de la densidad
                                                    c = 2./(b*cosh(n*pi*a./b));
                                                %Potencial
                                                    v = F.*c.*(cosh(n*pi*x./b)).*(sin(n*pi*y./b));
                                                %Sumatoria
                                                   SUM = v+SUM;
                                                    grad = grad + ((-1).*v);
                                                end

                                                %Gradiente
                                                [Ex, Ey] = gradient(grad);
                                                Ex = -Ex;
                                                Ey = -Ey;
                                                Ez = sqrt((Ex.^2)+(Ey.^2));
                                                %densidad/E0 = a la divergencia del campo
                                                %encontrar la densidad con graddiente del gradeiente :D
                                                [Dx, Dy] = gradient(gradient(grad));

                                                %E0*Gradiete 2
                                                px = epsilon0.* Dx;
                                                py = epsilon0.* Dy;
                                                %valor de la densidad
                                                densidad = sqrt((px.^2)+(py.^2));

                                                colormap HOT
                                                %PLOT 1 Campo
                                                subplot (2,2,1); contour3(Ex, Ey, Ez); hold on
                                                quiver3(x,y,z,Ex, Ey, Ez); 
                                                hold off
                                                title ('N = 20 CAMPO')
                                                xlabel('Eje X'); ylabel('Eje Y'); zlabel('Eje Z');

                                                %PLOT 2 Potencial
                                                subplot (2,2,2); surf(x, y, SUM);
                                                title ('N = 20 POTENCIAL')
                                                xlabel('Eje X'); ylabel('Eje Y'); zlabel('Eje Z');
                                                view(-47,32);

                                                %PLOT 3 Densidad
                                                subplot (2,2,3); surf(x, y, densidad);
                                                title ('N = 20 DENSIDAD'); xlabel('Eje X'); ylabel('Eje Y'); zlabel('Eje Z');
                                                view(-47,32);
                                                
                                            case 5
                                        end
                                        
                                        graf2 = menu('N','N=2','N=5','N=10','N=20','return');
                                        
                                    end
                                    
                                case 3
                            end
                            
                            op = menu('Elija Opción','a','b','Return');
                            
                        end
                        
                    case 2
                        
                        op2 = menu('Elija Opción','a','b','Return');
                        
                        while op2 < 3
                            switch op2
                                
                                case 1
                                    graf3 = menu('N','N=2','N=5','N=10','N=20','return');
                                    
                                    while graf3 < 5
                                        switch graf3
                                            
                                            case 1
                                                %1:3
                                                %Elija valores de a y b
                                                a = 1;
                                                b = 2;
                                                %Definimos valores en 0
                                                SUM = 0;
                                                grad = 0;
                                                %Definimos N para la que se trabaje
                                                N = 2;
                                                %constante :D
                                                epsilon0 = (8.85 .*(10^-12));

                                                %DEF XY para la superficie

                                                Y = 0:0.03:b;
                                                %define los puntos apra la grafica en 3D
                                                [x,y] = meshgrid(X,Y);
                                                z = x;

                                                %totalde iteraciones desde 1 hasta donde se definio
                                                for n = 1:N
                                                %Integral
                                                    inte = @(Y) sin(n*pi*Y./b).*(atan(Y./a));
                                                    F = integral(inte,0,b);
                                                %consatantes exxternas de la densidad
                                                    c = 2./(b*exp(n*pi*a./b));
                                                %Potencial
                                                    v = F.*c.*(exp(n*pi*x./b)).*(sin(n*pi*y./b));
                                                %Sumatoria
                                                    SUM = v+SUM;
                                                    grad = grad + ((-1).*v);
                                                end

                                                %Gradiente
                                                [Ex, Ey] = gradient(grad);

                                                %densidad/E0 = a la divergencia del campo
                                                %encontrar la densidad con graddiente del gradeiente :D
                                                [Dx, Dy] = gradient(gradient(grad));

                                                %E0*Gradiete 2
                                                px = epsilon0.* Dx;
                                                py = epsilon0.* Dy;
                                                %valor de la densidad
                                                densidad = sqrt((px.^2)+(py.^2));

                                                colormap HOT
                                                %PLOT 1 Campo
                                                subplot (2,2,1); contour3(Ex, Ey, z); hold on
                                                quiver3(x,y,z,Ex, Ey, z); 
                                                hold off
                                                title ('N = 2 CAMPO')
                                                xlabel('Eje X'); ylabel('Eje Y'); zlabel('Eje Z');

                                                %PLOT 2 Potencial
                                                subplot (2,2,2); surf(x, y, SUM);
                                                title ('N = 2 POTENCIAL')
                                                xlabel('Eje X'); ylabel('Eje Y'); zlabel('Eje Z');
                                                view(-47,32);

                                                %PLOT 3 Densidad
                                                subplot (2,2,3); surf(x, y, densidad);
                                                title ('N = 2 DENSIDAD'); xlabel('Eje X'); ylabel('Eje Y'); zlabel('Eje Z');
                                                view(-47,32);
                                                
                                            case 2
%1:3
                                                %Elija valores de a y b
                                                a = 1;
                                                b = 2;
                                                %Definimos valores en 0
                                                SUM = 0;
                                                grad = 0;
                                                %Definimos N para la que se trabaje
                                                N = 5;
                                                %constante :D
                                                epsilon0 = (8.85 .*(10^-12));

                                                %DEF XY para la superficie

                                                Y = 0:0.03:b;
                                                %define los puntos apra la grafica en 3D
                                                [x,y] = meshgrid(X,Y);
                                                z = x;

                                                %totalde iteraciones desde 1 hasta donde se definio
                                                for n = 1:N
                                                %Integral
                                                    inte = @(Y) sin(n*pi*Y./b).*(atan(Y./a));
                                                    F = integral(inte,0,b);
                                                %consatantes exxternas de la densidad
                                                    c = 2./(b*exp(n*pi*a./b));
                                                %Potencial
                                                    v = F.*c.*(exp(n*pi*x./b)).*(sin(n*pi*y./b));
                                                %Sumatoria
                                                    SUM = v+SUM;
                                                    grad = grad + ((-1).*v);
                                                end

                                                %Gradiente
                                                [Ex, Ey] = gradient(grad);

                                                %densidad/E0 = a la divergencia del campo
                                                %encontrar la densidad con graddiente del gradeiente :D
                                                [Dx, Dy] = gradient(gradient(grad));

                                                %E0*Gradiete 2
                                                px = epsilon0.* Dx;
                                                py = epsilon0.* Dy;
                                                %valor de la densidad
                                                densidad = sqrt((px.^2)+(py.^2));

                                                colormap HOT
                                                %PLOT 1 Campo
                                                subplot (2,2,1); contour3(Ex, Ey, z); hold on
                                                quiver3(x,y,z,Ex, Ey, z); 
                                                hold off
                                                title ('N = 5 CAMPO')
                                                xlabel('Eje X'); ylabel('Eje Y'); zlabel('Eje Z');

                                                %PLOT 2 Potencial
                                                subplot (2,2,2); surf(x, y, SUM);
                                                title ('N = 5 POTENCIAL')
                                                xlabel('Eje X'); ylabel('Eje Y'); zlabel('Eje Z');
                                                view(-47,32);

                                                %PLOT 3 Densidad
                                                subplot (2,2,3); surf(x, y, densidad);
                                                title ('N = 5 DENSIDAD'); xlabel('Eje X'); ylabel('Eje Y'); zlabel('Eje Z');
                                                view(-47,32);
                                                
                                            case 3
                                                %1:3
                                                %Elija valores de a y b
                                                a = 1;
                                                b = 2;
                                                %Definimos valores en 0
                                                SUM = 0;
                                                grad = 0;
                                                %Definimos N para la que se trabaje
                                                N = 10;
                                                %constante :D
                                                epsilon0 = (8.85 .*(10^-12));

                                                %DEF XY para la superficie

                                                Y = 0:0.03:b;
                                                %define los puntos apra la grafica en 3D
                                                [x,y] = meshgrid(X,Y);
                                                z = x;

                                                %totalde iteraciones desde 1 hasta donde se definio
                                                for n = 1:N
                                                %Integral
                                                    inte = @(Y) sin(n*pi*Y./b).*(atan(Y./a));
                                                    F = integral(inte,0,b);
                                                %consatantes exxternas de la densidad
                                                    c = 2./(b*exp(n*pi*a./b));
                                                %Potencial
                                                    v = F.*c.*(exp(n*pi*x./b)).*(sin(n*pi*y./b));
                                                %Sumatoria
                                                    SUM = v+SUM;
                                                    grad = grad + ((-1).*v);
                                                end

                                                %Gradiente
                                                [Ex, Ey] = gradient(grad);

                                                %densidad/E0 = a la divergencia del campo
                                                %encontrar la densidad con graddiente del gradeiente :D
                                                [Dx, Dy] = gradient(gradient(grad));

                                                %E0*Gradiete 2
                                                px = epsilon0.* Dx;
                                                py = epsilon0.* Dy;
                                                %valor de la densidad
                                                densidad = sqrt((px.^2)+(py.^2));

                                                colormap HOT
                                                %PLOT 1 Campo
                                                subplot (2,2,1); contour3(Ex, Ey, z); hold on
                                                quiver3(x,y,z,Ex, Ey, z); 
                                                hold off
                                                title ('N = 10 CAMPO')
                                                xlabel('Eje X'); ylabel('Eje Y'); zlabel('Eje Z');

                                                %PLOT 2 Potencial
                                                subplot (2,2,2); surf(x, y, SUM);
                                                title ('N = 10 POTENCIAL')
                                                xlabel('Eje X'); ylabel('Eje Y'); zlabel('Eje Z');
                                                view(-47,32);

                                                %PLOT 3 Densidad
                                                subplot (2,2,3); surf(x, y, densidad);
                                                title ('N = 10 DENSIDAD'); xlabel('Eje X'); ylabel('Eje Y'); zlabel('Eje Z');
                                                view(-47,32);
                                                
                                            case 4
                                                %1:3
                                                %Elija valores de a y b
                                                a = 1;
                                                b = 2;
                                                %Definimos valores en 0
                                                SUM = 0;
                                                grad = 0;
                                                %Definimos N para la que se trabaje
                                                N = 20;
                                                %constante :D
                                                epsilon0 = (8.85 .*(10^-12));

                                                %DEF XY para la superficie

                                                Y = 0:0.03:b;
                                                %define los puntos apra la grafica en 3D
                                                [x,y] = meshgrid(X,Y);
                                                z = x;

                                                %totalde iteraciones desde 1 hasta donde se definio
                                                for n = 1:N
                                                %Integral
                                                    inte = @(Y) sin(n*pi*Y./b).*(atan(Y./a));
                                                    F = integral(inte,0,b);
                                                %consatantes exxternas de la densidad
                                                    c = 2./(b*exp(n*pi*a./b));
                                                %Potencial
                                                    v = F.*c.*(exp(n*pi*x./b)).*(sin(n*pi*y./b));
                                                %Sumatoria
                                                    SUM = v+SUM;
                                                    grad = grad + ((-1).*v);
                                                end

                                                %Gradiente
                                                [Ex, Ey] = gradient(grad);

                                                %densidad/E0 = a la divergencia del campo
                                                %encontrar la densidad con graddiente del gradeiente :D
                                                [Dx, Dy] = gradient(gradient(grad));

                                                %E0*Gradiete 2
                                                px = epsilon0.* Dx;
                                                py = epsilon0.* Dy;
                                                %valor de la densidad
                                                densidad = sqrt((px.^2)+(py.^2));

                                                colormap HOT
                                                %PLOT 1 Campo
                                                subplot (2,2,1); contour3(Ex, Ey, z); hold on
                                                quiver3(x,y,z,Ex, Ey, z); 
                                                hold off
                                                title ('N = 20 CAMPO')
                                                xlabel('Eje X'); ylabel('Eje Y'); zlabel('Eje Z');

                                                %PLOT 2 Potencial
                                                subplot (2,2,2); surf(x, y, SUM);
                                                title ('N = 20 POTENCIAL')
                                                xlabel('Eje X'); ylabel('Eje Y'); zlabel('Eje Z');
                                                view(-47,32);

                                                %PLOT 3 Densidad
                                                subplot (2,2,3); surf(x, y, densidad);
                                                title ('N = 20 DENSIDAD'); xlabel('Eje X'); ylabel('Eje Y'); zlabel('Eje Z');
                                                view(-47,32);
                                                
                                            case 5
                                        end
                                        
                                        graf3 = menu('N','N=2','N=5','N=10','N=20','return');
                                        
                                    end
                                    
                                case 2
                                    graf4 = menu('N','N=2','N=5','N=10','N=20','return');
                                    
                                    while graf4 < 5
                                        switch graf4
                                            
                                            case 1
                                                %1:4
                                                %Elija valores de a y b
                                                a = 1;
                                                b = 1;
                                                %Definimos valores en 0
                                                SUM = 0;
                                                grad = 0;
                                                %Definimos N para la que se trabaje
                                                N = 2;
                                                %constante :D
                                                epsilon0 = (8.85 .*(10^-12));

                                                %DEF XY para la superficie
                                                X = -a:0.05:a;
                                                Y = 0:0.05:b;
                                                %define los puntos apra la grafica en 3D
                                                [x,y] = meshgrid(X,Y);
                                                z = x;

                                                %totalde iteraciones desde 1 hasta donde se definio
                                                for n = 1:N
                                                %Integral
                                                    inte = @(Y) sin(n*pi*Y./b).*((2*(Y.^3))+5);
                                                    F = integral(inte,0,b);
                                                %consatantes exxternas de la densidad
                                                    c = 2./(b*exp(n*pi*a./b));
                                                %Potencial
                                                    v = F.*c.*(exp(n*pi*x./b)).*(sin(n*pi*y./b));
                                                %Sumatoria
                                                    SUM = v+SUM;
                                                    grad = grad + ((-1).*v);
                                                end

                                                %Gradiente
                                                [Ex, Ey] = gradient(grad);
                                                Ex = -Ex;
                                                Ey = -Ey;
                                                Ez = sqrt((Ex.^2)+(Ey.^2));
                                                %densidad/E0 = a la divergencia del campo
                                                %encontrar la densidad con graddiente del gradeiente :D
                                                [Dx, Dy] = gradient(gradient(grad));

                                                %E0*Gradiete 2
                                                px = epsilon0.* Dx;
                                                py = epsilon0.* Dy;
                                                %valor de la densidad
                                                densidad = sqrt((px.^2)+(py.^2));

                                                colormap HOT
                                                %PLOT 1 Campo
                                                subplot (2,2,1); contour3(Ex, Ey, Ez); hold on
                                                quiver3(x,y,z,Ex, Ey, Ez); 
                                                hold off
                                                title ('N = 2 CAMPO')
                                                xlabel('Eje X'); ylabel('Eje Y'); zlabel('Eje Z');

                                                %PLOT 2 Potencial
                                                subplot (2,2,2); surf(x, y, SUM);
                                                title ('N = 2 POTENCIAL')
                                                xlabel('Eje X'); ylabel('Eje Y'); zlabel('Eje Z');
                                                view(-47,32);

                                                %PLOT 3 Densidad
                                                subplot (2,2,3); surf(x, y, densidad);
                                                title ('N = 2 DENSIDAD'); xlabel('Eje X'); ylabel('Eje Y'); zlabel('Eje Z');
                                                view(-47,32);
                                                
                                            case 2
                                                %1:4
                                                %Elija valores de a y b
                                                a = 1;
                                                b = 1;
                                                %Definimos valores en 0
                                                SUM = 0;
                                                grad = 0;
                                                %Definimos N para la que se trabaje
                                                N = 5;
                                                %constante :D
                                                epsilon0 = (8.85 .*(10^-12));

                                                %DEF XY para la superficie
                                                X = -a:0.05:a;
                                                Y = 0:0.05:b;
                                                %define los puntos apra la grafica en 3D
                                                [x,y] = meshgrid(X,Y);
                                                z = x;

                                                %totalde iteraciones desde 1 hasta donde se definio
                                                for n = 1:N
                                                %Integral
                                                    inte = @(Y) sin(n*pi*Y./b).*((2*(Y.^3))+5);
                                                    F = integral(inte,0,b);
                                                %consatantes exxternas de la densidad
                                                    c = 2./(b*exp(n*pi*a./b));
                                                %Potencial
                                                    v = F.*c.*(exp(n*pi*x./b)).*(sin(n*pi*y./b));
                                                %Sumatoria
                                                    SUM = v+SUM;
                                                    grad = grad + ((-1).*v);
                                                end

                                                %Gradiente
                                                [Ex, Ey] = gradient(grad);
                                                Ex = -Ex;
                                                Ey = -Ey;
                                                Ez = sqrt((Ex.^2)+(Ey.^2));
                                                %densidad/E0 = a la divergencia del campo
                                                %encontrar la densidad con graddiente del gradeiente :D
                                                [Dx, Dy] = gradient(gradient(grad));

                                                %E0*Gradiete 2
                                                px = epsilon0.* Dx;
                                                py = epsilon0.* Dy;
                                                %valor de la densidad
                                                densidad = sqrt((px.^2)+(py.^2));

                                                colormap HOT
                                                %PLOT 1 Campo
                                                subplot (2,2,1); contour3(Ex, Ey, Ez); hold on
                                                quiver3(x,y,z,Ex, Ey, Ez); 
                                                hold off
                                                title ('N = 5 CAMPO')
                                                xlabel('Eje X'); ylabel('Eje Y'); zlabel('Eje Z');

                                                %PLOT 2 Potencial
                                                subplot (2,2,2); surf(x, y, SUM);
                                                title ('N = 5 POTENCIAL')
                                                xlabel('Eje X'); ylabel('Eje Y'); zlabel('Eje Z');
                                                view(-47,32);

                                                %PLOT 3 Densidad
                                                subplot (2,2,3); surf(x, y, densidad);
                                                title ('N = 5 DENSIDAD'); xlabel('Eje X'); ylabel('Eje Y'); zlabel('Eje Z');
                                                view(-47,32);
                                                
                                            case 3
                                                %1:4
                                                %Elija valores de a y b
                                                a = 1;
                                                b = 1;
                                                %Definimos valores en 0
                                                SUM = 0;
                                                grad = 0;
                                                %Definimos N para la que se trabaje
                                                N = 10;
                                                %constante :D
                                                epsilon0 = (8.85 .*(10^-12));

                                                %DEF XY para la superficie
                                                X = -a:0.05:a;
                                                Y = 0:0.05:b;
                                                %define los puntos apra la grafica en 3D
                                                [x,y] = meshgrid(X,Y);
                                                z = x;

                                                %totalde iteraciones desde 1 hasta donde se definio
                                                for n = 1:N
                                                %Integral
                                                    inte = @(Y) sin(n*pi*Y./b).*((2*(Y.^3))+5);
                                                    F = integral(inte,0,b);
                                                %consatantes exxternas de la densidad
                                                    c = 2./(b*exp(n*pi*a./b));
                                                %Potencial
                                                    v = F.*c.*(exp(n*pi*x./b)).*(sin(n*pi*y./b));
                                                %Sumatoria
                                                    SUM = v+SUM;
                                                    grad = grad + ((-1).*v);
                                                end

                                                %Gradiente
                                                [Ex, Ey] = gradient(grad);
                                                Ex = -Ex;
                                                Ey = -Ey;
                                                Ez = sqrt((Ex.^2)+(Ey.^2));
                                                %densidad/E0 = a la divergencia del campo
                                                %encontrar la densidad con graddiente del gradeiente :D
                                                [Dx, Dy] = gradient(gradient(grad));

                                                %E0*Gradiete 2
                                                px = epsilon0.* Dx;
                                                py = epsilon0.* Dy;
                                                %valor de la densidad
                                                densidad = sqrt((px.^2)+(py.^2));

                                                colormap HOT
                                                %PLOT 1 Campo
                                                subplot (2,2,1); contour3(Ex, Ey, Ez); hold on
                                                quiver3(x,y,z,Ex, Ey, Ez); 
                                                hold off
                                                title ('N = 10 CAMPO')
                                                xlabel('Eje X'); ylabel('Eje Y'); zlabel('Eje Z');

                                                %PLOT 2 Potencial
                                                subplot (2,2,2); surf(x, y, SUM);
                                                title ('N = 10 POTENCIAL')
                                                xlabel('Eje X'); ylabel('Eje Y'); zlabel('Eje Z');
                                                view(-47,32);

                                                %PLOT 3 Densidad
                                                subplot (2,2,3); surf(x, y, densidad);
                                                title ('N = 10 DENSIDAD'); xlabel('Eje X'); ylabel('Eje Y'); zlabel('Eje Z');
                                                view(-47,32);
                                                
                                            case 4
                                                %1:4
                                                %Elija valores de a y b
                                                a = 1;
                                                b = 1;
                                                %Definimos valores en 0
                                                SUM = 0;
                                                grad = 0;
                                                %Definimos N para la que se trabaje
                                                N = 20;
                                                %constante :D
                                                epsilon0 = (8.85 .*(10^-12));

                                                %DEF XY para la superficie
                                                X = -a:0.05:a;
                                                Y = 0:0.05:b;
                                                %define los puntos apra la grafica en 3D
                                                [x,y] = meshgrid(X,Y);
                                                z = x;

                                                %totalde iteraciones desde 1 hasta donde se definio
                                                for n = 1:N
                                                %Integral
                                                    inte = @(Y) sin(n*pi*Y./b).*((2*(Y.^3))+5);
                                                    F = integral(inte,0,b);
                                                %consatantes exxternas de la densidad
                                                    c = 2./(b*exp(n*pi*a./b));
                                                %Potencial
                                                    v = F.*c.*(exp(n*pi*x./b)).*(sin(n*pi*y./b));
                                                %Sumatoria
                                                    SUM = v+SUM;
                                                    grad = grad + ((-1).*v);
                                                end

                                                %Gradiente
                                                [Ex, Ey] = gradient(grad);
                                                Ex = -Ex;
                                                Ey = -Ey;
                                                Ez = sqrt((Ex.^2)+(Ey.^2));
                                                %densidad/E0 = a la divergencia del campo
                                                %encontrar la densidad con graddiente del gradeiente :D
                                                [Dx, Dy] = gradient(gradient(grad));

                                                %E0*Gradiete 2
                                                px = epsilon0.* Dx;
                                                py = epsilon0.* Dy;
                                                %valor de la densidad
                                                densidad = sqrt((px.^2)+(py.^2));

                                                colormap HOT
                                                %PLOT 1 Campo
                                                subplot (2,2,1); contour3(Ex, Ey, Ez); hold on
                                                quiver3(x,y,z,Ex, Ey, Ez); 
                                                hold off
                                                title ('N = 20 CAMPO')
                                                xlabel('Eje X'); ylabel('Eje Y'); zlabel('Eje Z');

                                                %PLOT 2 Potencial
                                                subplot (2,2,2); surf(x, y, SUM);
                                                title ('N = 20 POTENCIAL')
                                                xlabel('Eje X'); ylabel('Eje Y'); zlabel('Eje Z');
                                                view(-47,32);

                                                %PLOT 3 Densidad
                                                subplot (2,2,3); surf(x, y, densidad);
                                                title ('N = 20 DENSIDAD'); xlabel('Eje X'); ylabel('Eje Y'); zlabel('Eje Z');
                                                view(-47,32);
                                                
                                            case 5
                                        end
                                        
                                        graf4 = menu('N','N=2','N=5','N=10','N=20','return');
                                        
                                    end
                                    
                                case 3
                            end
                            
                            op2 = menu('Elija Opción','a','b','Return');
                            
                        end
                        
                    case 3
                         fprintf('Estas graficas no se pudieron realizar debido a que la representacion de los campos de los objetos en 2D se realizo por medio de graficas en 3D la representacion de objetos en 3D necesitaria un a grafica en 4D la cual no se pudo realizar en el codigo y no se encontro una forma en la cual representar estos campos en un modelo 3D');
                         
                    case 4
                end
                
                rect = menu('Elija el problema','1','2','3','regresar');
                
            end 
            
        case 2%ESFERICA
            rect2 = menu('Elija el problema','1','2','regresar');
            
            while rect2 < 3
                switch rect2
                    
                    case 1
                        epsilon0 = (8.854187817)*(10.^(-12));  
                        R=3;
                        %REGION EXTERNA
                        r2 = linspace(0,R,50)';
                        %REGION INTERNA
                        r = linspace(R,10,50)';
                        phi = linspace(0,2*pi,50)';


                        %REGION EXTERNA 
                        Vin2 = @(r2,theta) (((3.*r2.*cos(theta))/10.*epsilon0)-((12.*(r2.^3))/(35.*epsilon0.*(R.^2)))).*((5.*((cos(theta)).^3)/2)-((3.*cos(theta))/2));
                        %REGION INTERNA
                        Vin = @(r,theta)(3.*(R.^3).*cos(theta)./(10*epsilon0.*(r.^2)))-((12*(R.^5)./(35*epsilon0*(r.^4))).*((5.*((cos(theta)).^3)./2)-((3.*cos(theta))./2)));
                        %MESHGRID PARA GRAFICAR LOS VALLORES
                        [Rin,Phi] = meshgrid(r,phi);

                        Pin = Vin(Rin,Phi);  
                        Pin2 = Vin2(Rin,Phi);  
                        %CONVERSION DE POLAREA A CARTESIANES
                        [Xin,Yin] = pol2cart(Phi,Rin);

                        colormap HOT
                        %_________________REGION INTERNA___________________________________

                        %__________________________________________________________________
                        subplot (3,3,3)
                        [EXin,EYin,EZin] = surfnorm(Pin);
                        quiver3(Xin, Yin, Xin, EXin, EYin, EZin)
                        title ('Región INTERNA');xlabel ('Radio');ylabel ('Phi');

                        subplot (3,3,1)
                        contourf(Xin,Yin,Pin)
                        title ('Potencial Esfera Radio R');xlabel ('Radio');ylabel ('Phi');

                        subplot (3,3,2)
                        surfc(Xin,Yin,Pin)
                        xlabel ('Radio');ylabel ('Phi');zlabel ('Potencial');

                        %_________________REGION EXTERNA___________________________________

                        %__________________________________________________________________
                        subplot (3,3,6)
                        [EXin,EYin,EZin] = surfnorm(Pin2);
                        quiver3(Xin, Yin, Xin, EXin, EYin, EZin)
                        title ('Región Externa');xlabel ('Radio');ylabel ('Phi');

                        subplot (3,3,4)
                        contourf(Xin,Yin,Pin2)
                        title ('Potencial Esfera Radio R');xlabel ('Radio');ylabel ('Phi');

                        subplot (3,3,5)
                        surfc(Xin,Yin,Pin2)
                        xlabel ('Radio');ylabel ('Phi');zlabel ('Potencial');

                        
                    case 2
                        b=25*pi;
                        disp(b);
                        
                    case 3
                end
                
                rect2 = menu('Elija el problema','1','2','regresar');
                
            end
        case 3%CILINDRICA
            rect3 = menu('Elija el problema','1','regresar');
            
            while rect3 < 2
                switch rect3
                    
                    case 1
                        b=26*pi;
                        disp(b);
                        
                    case 2
                end
                
                rect3 = menu('Elija el problema','1','regresar');
                
            end
            
        case 4%EXIT    
    end
    
    Selection = menu('Bienvenido a Laplace Colocho','Ecuación de Laplace en coordenadas rectangulares','Ecuación de Laplace en coordenadas esféricas','Ecuación de Laplace en coordenadas cilíndricas','Exit');

end


fprintf('You have left the menu. Have A Great Day!\n');


