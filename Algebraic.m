function R = Algebraic(nume, d)
  fid = fopen(nume, 'r');

  %read the graph's number of nodes
  N=fscanf(fid,'%d',1);
  %create the adjacency matrix
  A=zeros(N,N);
  i=1;
  %create an auxiliary array that will help create the matrix with the links between the nodes
  D=ones(N,1);
  while i <= N
    %read the node's number
    x = fscanf(fid,'%d',1);
    %read the outgoing links of the node
    m = fscanf(fid,'%d',1);
    D(i,1)=m;
    %add the links between the nodes in the matrix
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
%calculate array R
I=eye(N);
R = GSM(I - d*L) * ((1-d)/N) * ones(N,1);
fclose(fid);
endfunction
