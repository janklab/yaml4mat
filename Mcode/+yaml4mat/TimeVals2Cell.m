function s = TimeVals2Cell(time,datavalues,header)
% Creates a typical struct with field named by header. Values are cell of
% date and vals.
%
% Synopsis:
%  s = yaml4mat.TimeVals2Cell(time,datavalues,header)

s = yaml4mat.internal.Impl.TimeVals2Cell(time,datavalues,header);

end
