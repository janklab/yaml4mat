function result = readyamlraw(filename, verbose, nosuchfileaction, treatasdata)
% Reads YAML file, converts YAML sequences to MATLAB cell columns and YAML
% mappings to MATLAB structs
%
%  filename ... name of yaml file to be imported
%  verbose  ... verbosity level (0 or absent = no messages,
%                                          1 = notify imports)

result = yaml4mat.internal.Impl.readyamlraw(filename, verbose, nosuchfileaction, treatasdata);

end
