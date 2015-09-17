#!/usr/bin/gnuplot
#
# Plot of a Klein bottle
#
# AUTHOR: Hagen Wierstorf

reset

# wxt
#set terminal wxt size 1000,600 enhanced font 'Verdana,10' persist transparent
# png
#set terminal pngcairo size 1000,600 enhanced font 'Verdana,10'
#set output 'klein_bottle.png'
# svg
set terminal svg size 1000,600 fname 'Verdana, Helvetica, Arial, sans-serif' \
fsize '10'
set output 'klein_bottle.svg'

# color definitions
#set style line 2 lc rgb '#157545' lt 2 lw 2 # --- red

set tmargin at screen 0.99
set bmargin at screen 0.01
set lmargin at screen 0.2
set rmargin at screen 0.9
set pm3d depthorder hidden3d 1
set hidden3d
set style fill transparent solid 0.65
set palette defined ( 0 0 0 0, 1 1 1 1 )
unset colorbox
unset key
unset border
unset tics
set ticslevel 0
set view 60,315,1.5,1
set isosamples 19,44
set xrange[-8:10]
set yrange[-8:8]
set urange[0:2*pi]
set vrange[0:4*pi]

# Defining a klein bottle
# see: http://en.wikipedia.org/wiki/Klein_bottle
set parametric
x(u,v)= v<2*pi ? (2.5-1.5*cos(v))*cos(u) : \
        v<3*pi ? -2+(2+cos(u))*cos(v)    : \
                 -2+2*cos(v)-cos(u)
y(u,v)= v<2*pi ? (2.5-1.5*cos(v))*sin(u) : \
                 sin(u)
z(u,v)= v<pi   ? -2.5*sin(v)             : \
        v<2*pi ? 3*v-3*pi                : \
        v<3*pi ? (2+cos(u))*sin(v)+3*pi  : \
                 -3*v+12*pi

splot x(u,v),y(u,v),-z(u,v) w pm3d lc rgb '#707070'
