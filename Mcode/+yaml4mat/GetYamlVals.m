function [vals, timeaxis] = GetYamlVals(yamldata)
% Converts data formatted in yaml style (cells containing timestamps and values)
% into matlab user friendly matrices.

[vals, timeaxis] = yaml4mat.internal.Impl.GetYamlVals(yamldata);

end

