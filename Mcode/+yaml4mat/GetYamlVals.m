function [vals, timeaxis] = getyamlvals(yamldata)
% Converts data formatted in yaml style (cells containing timestamps and values)
% into matlab user friendly matrices.

[vals, timeaxis] = yaml4mat.internal.Impl.getyamlvals(yamldata);

end

