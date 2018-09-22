function dirList=readDirList(pathName)
% function dirList=readDirList(pathName)
% Input:
% dirPath: Path where to look for files/folders
% 

% if ispc
%     fname=readDir(pathName,'*.*');
% else
%     fname=readDir(pathName,'*');
% end
fname=readDir(pathName,'*');
dirList={};     %T%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%55
k=1;
for i=1:numel(fname)%3:numel(fname)
    f=char(fname(i));
    if(exist(f,'dir')==7)
        dirList(k)=fname(i);
        k=k+1;
    end
end
dirList=dirList';