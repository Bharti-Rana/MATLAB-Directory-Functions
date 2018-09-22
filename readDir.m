function fname = readDir(dirPath,fileType)
% function fname= readDir(dirPath,fileType)
% Used to find a list of a type of files at a particular location
%
% Input:
% dirPath: Path where to look for files
% fileType: Type of files to search 
%
% Output: 
% fname: List of files 
% RETURNS CELL ARRAY that NEED TO BE CONVERTED INTO STRING BY USING char(fname(i)) or fname{i}
%
% Example: 
% 
% dirPath='C:\Documents and Settings\hello\My Documents\MATLAB\images\tumor\';
% fileType='*.gif'
% fname= readDir(dirPath,fileType)
% fname will contain all files with extension gif present at path contained in dirPath.


files=dir(fullfile(dirPath,fileType));
if (strcmp(fileType,'*') ||  strcmp(fileType,'*.*'))
    files=files(3:end,:);
end
fname=cell(numel(files),1);
for i=1:numel(files)
    fname(i)={fullfile(dirPath,files(i).name)};
end
