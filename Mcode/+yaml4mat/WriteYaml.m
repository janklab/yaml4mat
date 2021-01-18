function result = WriteYaml(filename, data, flowstyle)
% Recursively walks through a Matlab hierarchy and converts it to the
% hierarchy of java.util.ArrayLists and java.util.Maps. Then calls
% Snakeyaml to write it to a file.

result = yaml4mat.internal.Impl.WriteYaml(filename, data, flowstyle);

end