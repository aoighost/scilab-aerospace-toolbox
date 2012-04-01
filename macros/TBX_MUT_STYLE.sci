//
// This file is part of the Xcos skeleton toolbox
//
// Copyright (C) 2011 - Scilab Enterprises - Clément DAVID
// see license.txt for more licensing informations

function [x,y,typ]=TBX_MUT_STYLE(job,arg1,arg2)
  x=[];y=[];typ=[]
  select job
   case 'plot' then
    standard_draw(arg1)
   case 'getinputs' then
    [x,y,typ]=standard_inputs(arg1)
   case 'getoutputs' then
    [x,y,typ]=standard_outputs(arg1)
   case 'getorigin' then
    [x,y]=standard_origin(arg1)
   case 'set' then
    x=arg1;
    model = x.model;
    graphics = x.graphics;    

    // no parameters yet, just change the style of the block and the ports
    hexa = [string(1:9) "A" "B" "C" "D" "E" "F"];
    graphics.style = "BIGSOM_f;fillColor=#" + strcat(hexa(15 * rand(1,6) + 1));

    port_styles = ["actor" "cloud" "connector" "cylinder" "curve" "doubleEllipse" "ellipse" "hexagon" "image" "label" "line" "rectangle" "rhombus" "triangle"];
    graphics.in_style = "ExplicitInputPort;shape=" + port_styles(size(port_styles, '*') * rand(model.in) + ones(model.in));
    graphics.out_style = "ExplicitOutputPort;shape=" + port_styles(size(port_styles, '*') * rand(model.out) + ones(model.out));

    disp(graphics.style);
    disp(graphics.in_style);
    disp(graphics.out_style);

    x.model = model;
    x.graphics = graphics;

   case 'define' then
    model=scicos_model()
    model.sim=list('block_reynoldsnumber',3)
    // n inputs with a single "double" element
    model.in=ones(3, 1);
    model.intyp=ones(model.in);
    // one output with a single "double" element
    model.out=1
    model.outtyp=1
    
    model.blocktype='c'
    model.dep_ut=[%f %f]

    exprs=string([]);
    gr_i=['txt=[''TBX_REYNOLDSNUMBER_c''];';
          'xstringb(orig(1),orig(2),orig(3),txt,sz(1),sz(2),sz(3),''fill'')']

    x=standard_define([3 3],model,exprs,gr_i)
  end
endfunction

