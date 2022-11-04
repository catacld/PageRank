function U=auxfunction(x,val1,val2)
  A=1/(val2-val1);
  B=1-A*val2;
 if(x >=0 && x <val1) U=0;
else if ( x>=val1 && x <=val2) U = A*x+B;
 else U=1;
endif
endif 
endfunction