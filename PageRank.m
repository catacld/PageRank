function [R1 R2] = PageRank(nume, d, eps)
  %open the files with the data
  fin = fopen(nume, 'r');
  output = strcat(nume,'.out');
  fout = fopen(output, "w");
  %read and write the number of analyzed webpages
  N=fscanf(fin,'%d',1);
  fprintf(fout,'%d\n',N)

  %the array needed to write the indices
  arrayj=[1:N];

  %write the PR array calculated using the "Iterative" function
  R1=Iterative(nume,0.85,0.001);
  fprintf(fout,'%d\n',R1);

  %write the PR array calculated using the "Algebraic" function
  R2=Algebraic(nume,0.85);
  fprintf(fout,"\n");
  fprintf(fout,'%d\n',R2);
  fprintf(fout,"\n");

  %read val1 and val2
  nlines=fskipl(fin,N+1);
  val1=fscanf(fin,'%f',1);
  val2=fscanf(fin,'%f',1);

  %sort the two arrays
  i=1;
  while i<=N-1
    j=i+1;
    while j<=N
        if(R2(i)<R2(j))
          aux = R2(i);
          R2(i)=R2(j);
          R2(j)=aux;
          aux=arrayj(i);
          arrayj(i)=arrayj(j);
          arrayj(j)=aux;
        endif
    j++;
  endwhile
  i++;
  endwhile
  PR1=R2;
  %write the values obtained after sorting the arrays
  i=1;
  while i<=N
  fprintf(fout,'%d ',i);
  fprintf(fout,'%d ',arrayj(i));
  fprintf(fout,'%d',PR1(i)=auxfunction(PR1(i),val1,val2));
  fprintf(fout,"\n");
  i++;
  endwhile
  fclose(fout);
endfunction
