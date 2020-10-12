function [ K ] = Stiffness( E,C,s,t,v,TYPE )
% Stresses for each element [Se]=(AE/L)[B'][B]
%   [B] is the matrix that relates strains to displacments
%   E is modulus of elastcity of the element
%   L is the length of the element
%   A is the area of the element
%   v is Poisson's ratio

NumEle = size(C,1);
NumDof = 2*max(max(C));

K = zeros(NumDof);
%A = zeros(NumEle,1);

for ii = 1:NumEle
    
    switch TYPE
        case 1
            D = E(ii)/(1-v^2)*[1    v     0;
                               v    1     0;
                               0    0 (1-v)/2]; % plain stress
        case 2
            D = E(ii)/(1+v)/(1-2*v)*[1-v   v    0;
                                      v   1-v   0;
                                      0    0  .5-v];  % plain strain
    end
    
    S1 = s(C(ii,1),:);
    S2 = s(C(ii,2),:);
    S3 = s(C(ii,3),:);
    
    X13=S1(1)-S3(1);
    X21=S2(1)-S1(1);
    X23=S2(1)-S3(1);
    
    Y13=S1(2)-S3(2);
    Y12=S1(2)-S2(2);
    Y23=S2(2)-S3(2);
    
    DetJ = det([X13 Y13;
                X23 Y23]);
    A = abs(DetJ)/2;
    
    B =(1/DetJ)*[ Y23    0 -Y13    0 Y12   0 ;
                    0 -X23    0  X13   0 X21 ;
                 -X23  Y23  X13 -Y13 X21 Y12 ];
    
    Ke = (t(ii)*A).*(B')*D*(B);
    
    Ktemp = zeros(NumDof);
    
    for i = 1:6
        for j = 1:6
            
           if i==1 
               index1=2*C(ii,1)-1;
           elseif i==2
               index1=2*C(ii,1);
           elseif i==3
               index1=2*C(ii,2)-1;
           elseif i==4
               index1=2*C(ii,2);
           elseif i==5
               index1=2*C(ii,3)-1;
           elseif i==6
               index1=2*C(ii,3);
           end
           
           if j==1 
               index2=2*C(ii,1)-1;
           elseif j==2
               index2=2*C(ii,1);
           elseif j==3
               index2=2*C(ii,2)-1;
           elseif j==4
               index2=2*C(ii,2);
           elseif j==5
               index2=2*C(ii,3)-1;
           elseif j==6
               index2=2*C(ii,3);
           end
           
            Ktemp(index1,index2)= Ke(i,j);
        end
    end
    
    K = Ktemp + K;
     
end

