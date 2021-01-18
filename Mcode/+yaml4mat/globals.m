classdef globals
  % Global library properties and settings for SLF4M
  
  properties (Constant)
    % Path to the root directory of this yamlmatlab distribution
    distroot = string(fileparts(fileparts(fileparts(mfilename('fullpath')))));
  end
  
  methods (Static)
    
    function out = version
      % The version of the yamlmatlab library
      %
      % Returns a string.
      persistent val
      if isempty(val)
        versionFile = fullfile(yaml4mat.globals.distroot, 'VERSION');
        val = strtrim(yaml4mat.internal.readtext(versionFile));
      end
      out = val;
    end
    
    function initialize
      % Initialize this library/package
      yaml4mat.internal.initializePackage;
    end
    
  end
  
end

