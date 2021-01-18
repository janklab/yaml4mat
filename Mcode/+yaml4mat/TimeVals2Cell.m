function s = timevals2cell(time,datavalues,header)
% Creates a typical struct with field named by header. Values are cell of
% date and vals.
%
% Synopsis:
%  s = yaml4mat.timevals2cell(time,datavalues,header)

s = yaml4mat.internal.Impl.timevals2cell(time,datavalues,header);

end
