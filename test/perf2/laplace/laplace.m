dx = 0.1;
dy = 0.1;
dx2 = dx*dx;
dy2 = dy*dy;

N     = 150;
Niter = 8000;
 
u = zeros(N,N);
u(1,:) = 1;

for i = 1:Niter
    u(2:end-1, 2:end-1) = ((u(1:end-2, 2:end-1) + u(3:end, 2:end-1))*dy2 + (u(2:end-1,1:end-2) + u(2:end-1, 3:end))*dx2) * (1./ (2*(dx2+dy2)));
end
