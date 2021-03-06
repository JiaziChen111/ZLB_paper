function [alpha beta r,largestEig,projectionFac_flag] =l_LS(x,regressor,alphaOld,betaOld,rOld,gain)
%function for least squares updating.
thetaOld=[betaOld]';
 yy=regressor;
 
r=rOld+gain*(yy*yy'-rOld);
theta=thetaOld+gain*r^(-1)*yy*(x-thetaOld'*yy)';


theta=theta';
beta=theta(:,1:end);
alpha=0;


%largestEig=abs(eigs(A^(-1)*(B+C*beta^2),1));
% largestEig=abs(eigs(beta,1));

% if largestEig>1
%     alpha=alphaOld;
%     beta=betaOld;
%     r=rOld;
%     projectionFac_flag=1;
% else 
%      projectionFac_flag=0;
% end

largestEig=0;projectionFac_flag=0;
end



