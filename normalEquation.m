function [ theta ] = normalEquation( X,y )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

theta= pinv(X' * X) * X' * y;
end