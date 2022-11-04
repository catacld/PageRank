function R = Iterative(nume, d, eps)
  fid = fopen(nume, 'r');

  %read the graph's number of nodes
  N=fscanf(fid,'%d',1);

  %read the data from the file and create the adjacency matrix
  A=zeros(N,N);
  i=1;
  %create an auxiliary array that will help creating the matrix with the links between the nodes
  D=ones(N,1);
  while i <= N
    %read the node's number
    x = fscanf(fid,'%d',1);
    %read the number of outgoing links of the node
    m = fscanf(fid,'%d',1);
    D(i,1)=m;
    %add the links between nodes in the matrix
    j = 1;
    while j <= m
    y = fscanf(fid,'%d',1);
    if x != y
      A(x,y)=1;
    else D(i,1)=D(i,1)-1;
    endif
      j++;
    endwhile
  i++;
endwhile
%create the matrix with the links between the nodes
   L=A;
   i=1;
   while i<=N
     L(i,:)=L(i,:)./D(i,1);
     i++;
   endwhile
L=L';
L=L.*d + (1-d)/N;
%calculate array R
R= ones(N,1)./N;
do
  R_old = R;
  R= L * R_old;
until R-R_old < eps
fclose(fid);
  endfunction
