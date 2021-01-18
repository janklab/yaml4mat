classdef Impl < yaml4mat.internal.Yaml4matBase
    % This class only exists so we can use the automatic library initializer
    % trick.
    
    methods (Static)
        [vals, timeaxis] = GetYamlVals(yamldata)
        result = ReadYaml(filename, nosuchfileaction, makeords, treatasdata, dictionary)
        result = ReadYamlRaw(filename, verbose, nosuchfileaction, treatasdata)
        s = TimeVals2Cell(time,datavalues,header)
        result = WriteYaml(filename, data, flowstyle)
    end
end