A=[4 -5 -9; 0 -4 -6; -2.1 -1 3]
B=[5; 3; -2]
n=3;
iteraciones=100;
x=[0 0 0];
x_res=x;
 for j=1:100
     for i =1:n
         suma=0;
         for k = 1:n
             if(i~=k)
                 suma = A(i,k)*x(k)+suma;
             end
         end
         x(i)=(B(i)-suma)/A(i,i)
     end
     x_res = [x_res; x]
 end
 