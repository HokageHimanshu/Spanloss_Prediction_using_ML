function [ result ] = predictResult(theta)
% This function is used to predict the result using the calculated theta

disp("Enter the parameters ");
linktype = input("Enter the link type (0/1) = ");
age = input("Enter the age of the connection (0-1000,integer) = ");
linklength = input("Enter the length of the link (1-1000,double) = ");

result = [1 linktype age linklength]*theta;

end