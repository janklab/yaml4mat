classdef MypackageBase
  % This class is a trick to support automatic library initialization
  %
  % To use it, have all your classes that depend on the library being
  % initialized inherit from this or MypackageBaseHandle.
  
  properties (Constant, Hidden)
    initializer = yaml4mat.internal.LibraryInitializer;
  end
  
end

