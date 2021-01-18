classdef TestWriteYaml < matlab.unittest.TestCase
    
    properties
        myDataDir = fullfile(fileparts(mfilename('fullpath'), 'data'))
    end
    
    methods
        
        function out = datafile(t, relpath)
            out = fullfile(t.myDataDir, relpath);
        end
        
        function fromFiles(t, name)
            matFile = t.datafile([name '.mat']);
            s = load(matFile);
            data = s.testval;
            tempFile = [tempname '.yaml'];
            yaml4mat.WriteYaml(tempFile, data);
            readBack = yaml4mat.ReadYaml(tempFile);
            t.verifyEqual(readBack, data);
        end
        
    end
    
    
    
    methods (Test)
        
        function testMatrices(t)
            t.fromFiles('matrices');
        end
        
        function testFloatingPoint(t)
            t.fromFiles('floating_points');
        end
        
        function testIndentation(t)
            t.fromFiles('indentation');
        end
        
        function testSequenceMapping(t)
            t.fromFiles('sequence_mapping');
        end
        
        function testSimple(t)
            t.fromFiles('simple');
        end
        
        function testTime(t)
            t.fromFiles('time');
        end
        
        function testImport(t)
            t.fromFiles('import');
        end
        
        function testUsecase01(t)
            t.fromFiles('usecase_struct_01');
        end
        
    end
    
end

