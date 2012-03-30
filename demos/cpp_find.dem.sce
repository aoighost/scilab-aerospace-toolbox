// Scilab ( http://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2008 - INRIA - Allan CORNET
// Copyright (C) 2010 - DIGITEO - Allan CORNET
//
// This file is released under the 3-clause BSD license. See COPYING-BSD.


function demo_cpp_find()
  mode(-1);
  lines(0);

  disp("cpp_find(''Scilab is a numerical computational package'',''numerical'')");
  disp('position : ' + string(cpp_find('Scilab is a numerical computational package','numerical')));
  disp("cpp_find(''Scilab is a numerical computational package'',''package'')");
  disp('position: ' + string(cpp_find('Scilab is a numerical computational package','package')));
  
endfunction


demo_cpp_find();
clear demo_cpp_find;