function s = TimeVals2Cell(time,datavalues,header)
% Creates a typical struct with field named by header. Values are cell of
% date and vals.
%
% Synopsis:
%  s = yaml4mat.TimeVals2Cell(time,datavalues,header)
if ~iscell(header)
    header = {header};
end

for i=1:numel(header)
    s.(header{i}) = [num2cell(DateTime(time)) num2cell(datavalues(:,i))];
end
end
