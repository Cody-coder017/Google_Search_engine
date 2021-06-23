#Google search Engine stimulation(Page rank algorithm(SVD))
% stimulation of Search engine model ,We are defining ,terms in the file by
% extracting them by term document matrix 
% Here the items in the file are manually encoded in the form of matrix

syms FOOD FIVESTAR VEGETARIAN NONVEGETARIAN BILL DRINKS FAMILY TICKET SCREEN IMPULSE PLOT CONVOLUTION LINEARALGEBRA CIRCUITS DRONES
document1=[FOOD; FIVESTAR; VEGETARIAN; NONVEGETARIAN ;BILL;0 ;DRINKS ;0 ;FAMILY; 0; 0 ;0 ;0 ;0 ;0  ]
document2=[0 ;0; VEGETARIAN; NONVEGETARIAN;0 ;TICKET;DRINKS;SCREEN;FAMILY;0 ;0 ;0 ;0; 0 ;0]
document3=[0;0;0;0;0;0;0;0;0;IMPULSE;PLOT;CONVOLUTION;LINEARALGEBRA;0;0]
document4=[0;0;0;0;0;0;0;0;0;IMPULSE;PLOT;CONVOLUTION;0;CIRCUITS;0]
document5=[0;0;0;0;0;0;0;0;0;0;PLOT;0;0;0;DRONES]
A=[document1 document2 document3  document4 document5]
A=[1 1 0 0 0;1 0 0 0 0 ;1 1 0 0 0;1 1 0 0 0;1 0 0 0 0 ;0 1 0 0 0 ;1 1 0 0 0;0 1 0 0 0;1 1 0 0 0;0 0 1 1 0;0 0 1 1 1;0 0 1 1 0;0 0 1 0 0;0 0 0 1 0;0 0 0 0 1]
Q=[0;0;0;0;0;0;0;0;0;0;0;0;0;0;DRONES]
Q=[0;0;0;0;0;0;0;0;0;0;0;0;0;0;1]
% SVD decomposition
[u, s, v]=svd(A)
 k=4
 uk=u(:,1:k)
 vk=v(:,1:k)
 sk=s(1:k,1:k)
 q=Q'*uk/sk
 r=q*vk'
 a=(find(r==(r)))
     
      disp("TOP HIT: DOCUMENT"+" "+a)
 

