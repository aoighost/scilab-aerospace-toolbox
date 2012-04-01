/*
 *  Scilab ( http://www.scilab.org/ ) - This file is part of Scilab
 *  Copyright (C) 2011-2011 - DIGITEO - Clément DAVID
 *
 *  This file must be used under the terms of the CeCILL.
 *  This source file is licensed as described in the file COPYING, which
 *  you should have received as part of this distribution.  The terms
 *  are also available at
 *  http://www.cecill.info/licences/Licence_CeCILL_V2-en.txt
 *
 */

/**
 * @return in1 + in2
 * @param in Velocity
 * @param in2 Length scale
 * @param in3 kinematic viscosity
 * 
 * Re = (in * in2 * in3/in4) / (in5 * d^2V/dx^2)
 * 
 * 
 */
double reynolds_number(double in, double in2, double in3);
