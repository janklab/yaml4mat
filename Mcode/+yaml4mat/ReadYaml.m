function result = readyaml(filename, nosuchfileaction, makeords, treatasdata, dictionary)
% Actually reads YAML file and transforms it using several mechanisms:
%
%   - Transforms mappings and lists into Matlab structs and cell arrays,
%     for timestamps uses DateTime class, performs all imports (when it
%     finds a struct field named 'import' it opens file(s) named in the
%     field content and substitutes the filename by their content.
%   - Deflates outer imports into inner imports - see deflateimports(...)
%     for details.
%   - Merges imported structures with the structure from where the import
%     was performed. This is actually the same process as inheritance with
%     the difference that parent is located in a different file.
%   - Does inheritance - see doinheritance(...) for details.
%   - Makes matrices from cell vectors - see makematrices(...) for details.
%
% Parameters:
%   filename         ... name of an input yaml file
%   nosuchfileaction ... Determines what to do if a file to read is missing
%                        0 or not present - missing file will only throw a
%                                           warning
%                        1                - missing file throws an
%                                           exception and halts the process
%   makeords         ... Determines whether to convert cell array to
%                        ordinary matrix whenever possible (1).
%   dictionary       ... Dictionary of of labels that will be replaced,
%                        struct is expected

result = yaml4mat.internal.Impl.readyaml(filename, nosuchfileaction, makeords, treatasdata, dictionary);

end