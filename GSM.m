function B = GSM(A)
%save the dimensions of the matrix
m=columns(A);
n=rows(A);
%apply the algorithm
i=1;
while i<=n
R(i, i) = norm (A(:, i));
k=1;
while k<=n
Q(k, i) = A(k, i) ./ norm (A(:, i));
k++;
endwhile
j=i+1;
if j<=n
do
R(i, j) = Q(:, i)' * A(:, j);
A(:, j) -= Q(:, i) * Q(:, i)' * A(:, j);
j++;
until j>n
endif
i++;
endwhile

%calculate the inverse of the matrix
R=inv(R);
Q=Q';
B = R*Q;
endfunction
