!R2SCAN DEFGRID3 def2/J RIJCOSX def2-QZVPP def2-QZVPP/C TightSCF

%method
  DoMP2 true

  D4S6 
  D4S8 
  D4S9 1.0000
  D4A1 
  D4A2 
end

%mp2
  DoSCS true
  RI true
  PS 1.3333
  PT 0.0000
end