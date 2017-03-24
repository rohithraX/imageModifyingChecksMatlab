d=imread('chrono.tif');

k(1:1200,1:1200) = 0 ;
for j=1:100
    for i = 1:100
        for n = 1:10
            k(i*10,j*10)=k(10*i,j)+sum(d(10*j+n,(i*10+1):(i*10+10)))/100;
        end
        for t = 10*i+1:i*10+10
            for s = j*10+1:10*j+10
                r(s,t)=k(i*10,j*10);
            end
        end
    end
end
size(r)

gamma =1;
y=r.^gamma;
        
d(500,500)
y(500,500)
    
    imshow(y,[]);
    


            