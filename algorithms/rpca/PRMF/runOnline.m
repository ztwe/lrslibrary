load hall1-200;
matlabpool open;
X = normalize(XO);
[P Q L] = onlineRPMF(X, 2, 1, 1, 1e-2, ones(size(X)));
% M = normalize(I0);
% [P2 Q2 L2] = onlineRPMF(M, 2, 1, 1, 1e-2, ones(size(M)));
%show(X, L, abs(X - L), [144 176]);
show(X, L, (X - L), [144 176]);
%show(M, L2, (M - L2), [vidHeight vidWidth]);
matlabpool close;