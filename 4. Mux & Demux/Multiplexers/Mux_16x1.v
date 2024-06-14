`timescale 1ns / 1ps

module Mux_16x1(
input [15:0]i,
input [3:0]s,
output out );

assign out= s[3]? (s[2]? (s[1]? (s[0]?(i[15]):(i[14])) :(s[0]?i[13]:i[12])) :(s[1]? (s[0]?i[11]:i[10]) :(s[0]?i[9]:i[8]))) : (s[2]?(s[1]?(s[0]?i[7]:i[6]):(s[0]?i[5]:i[4])):(s[1]?(s[0]?i[3]:i[2]):(s[0]?i[1]:i[0])));

endmodule
