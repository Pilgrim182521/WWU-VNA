function [fMin, fMax, nFreq] =  getSweep()
  fMin = 1.e6;
  fMax = 100.e6;
  nFreq = 100;
  sweep = inputdlg({"fMin (MHz)","fMax (MHz)","N"},"Frequency Sweep",[1 10; 1 10; 1 3]);
  if (!isempty(sweep))
    if (!isempty(sweep{1}))
      fMin = str2num(sweep{1})*1.e6;
    endif
    if (!isempty(sweep{2}))
      fMax = str2num(sweep{2})*1.e6;
    endif
    if (!isempty(sweep{3}))
      nFreq = str2num(sweep{3});
    endif
  endif
endfunction
