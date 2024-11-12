myFunction = @(x) 3*x-cos(x)-1; %function declearation @(x) mane x er value bosiye
%calculu korbo tai @(x) lekha lage niom, eta x/y iccha moto use kora jabe function a

%Upper r lower value dhore niche 0/1 diye eta bole dile sei value dibo 0/1 er jaygay ba ber kore nite hoy
x_lower = 0;
x_upper = 1;
%Function e Lower & Upper value bosiye je man hoy oi 2 tar gun 0 theke choto hote hobe
%otherwise hobena tai nicher line up & lower value F e bosiye 0 er sathe if condition diche
if myFunction(x_lower)*myFunction(x_upper)<0

x_mid = (x_lower + x_upper)/2; %root ber korche mane mid, mider sutro diye
disp (['After iteration 1', ' the root is: ', num2str(x_mid)]); %1st iteration e root print
iter=1;
while iter<=10 % Koto bar looop colbe seta
    iter = iter+1;
    if myFunction(x_mid)*myFunction(x_upper)<0 % f(mid)*f(upper)<0 then lower=mid
    end
    x_lower=x_mid; % f(mid)*f(upper)<0 then lower=mid bosaiche
else
    x_upper=x_mid; % f(mid)*f(upper)>0 then upper=mid
end
x_mid = (x_lower + x_upper)/2; % Again mid/root ber korchi notun lower & upper value diye eta colte thakbe loop porjonto
disp (['After iteration ', num2str(iter), ' the root is: ', num2str(x_mid)]);
end
else  %Function e Lower & Upper value bosiye je man hoy oi 2 tar gun 0 theke boro hole root nai eta ekhane likhce
    disp (['There is no root between ', num2str(x_lower), ' and ', num2str(x_upper)]);
end
