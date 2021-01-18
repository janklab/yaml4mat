classdef TestReadYaml < matlab.unittest.TestCase

    properties
        myDataDir = fullfile(fileparts(mfilename('fullpath'), 'data'))
    end
    
    methods
        function out = datafile(t, relpath)
            out = fullfile(t.myDataDir, relpath);
        end
        
        function comparisonTestFromFiles(t, baseName)
            yamlFile = t.datafile([baseName '.yaml']);
            matFile = t.datafile([baseName '.mat']);
            got = yaml4mat.ReadYaml(yamlFile);
            expect = load(matFile);
            t.verifyEqual(got, expect);
        end
                
    end
    
    
    methods (Test)
        
        function testMatrices(t)
            t.comparisonTestFromFiles('matrices');
        end
        
        function testFloatingPoints(t)
            t.comparisonTestFromFiles('floating_points');
        end
        
        function testIndentation(t)
            t.comparisonTestFromFiles('indentation');
        end
        
        function testSequenceMapping(t)
            t.comparisonTestFromFiles('sequence_mapping');
        end
        
        function testSimple(t)
            t.comparisonTestFromFiles('simple');
        end
        
        function testTime(t)
            t.comparisonTestFromFiles('time');
        end
        
        function testTimeVariants(t)
            t.comparisonTestFromFiles('time_variants');
        end
        
        function testImport(t)
            t.comparisonTestFromFiles('import');
        end
        
        function testImportDef(t)
            t.comparisonTestFromFiles('import_def');
        end
        
        function testImportNonex(t)
            % TODO: This should actually test that an exception is thrown
            y = yaml4mat.ReadYaml(t.datafile('import_nonex.yaml'));
            t.verifyTrue(true, 'Imported with no exception');
        end
        
        function testInheritance(t)
            t.comparisonTestFromFiles('inheritance');
        end
        
        function testInheritanceMultiple(t)
            t.comparisonTestFromFiles('inheritance_multiple');
        end
        
        function testInheritanceLoop(t)
            % TODO: This should actually test that an exception is thrown
            y = yaml4mat.ReadYaml(t.datafile('inheritance_loop.yaml'));
            t.verifyTrue(true, 'Imported with no exception');
        end
        
        function testWhitespace(t)
            ry = yaml4mat.ReadYaml(t.datafile('whitespaces.yaml'));
            t.verifyThat(isfield(ry,'ImageFile') && isfield(ry,'ContoursCount'));
        end
        
        function testUseCase01(t)
            t.comparisonTestFromFiles('usecase_struct_01');
        end
        
    end
end

