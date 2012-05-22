function makeInfo=rtwmakecfg()
%RTWMAKECFG adds include and source directories to rtw make files.
%  makeInfo=RTWMAKECFG returns a structured array containing
%  following field:
%     makeInfo.includePath - cell array containing additional include
%                            directories. Those directories will be
%                            expanded into include instructions of rtw
%                            generated make files.
%
%     makeInfo.sourcePath  - cell array containing additional source
%                            directories. Those directories will be
%                            expanded into rules of rtw generated make
%                            files.
makeInfo.includePath = {};
makeInfo.sourcePath  = {};
makeInfo.linkLibsObjs = {};

%<Generated by S-Function Builder 3.0. DO NOT REMOVE>

sfBuilderBlocksByMaskType = find_system(bdroot,'FollowLinks','on','MaskType','S-Function Builder');
sfBuilderBlocksByCallback = find_system(bdroot,'OpenFcn','sfunctionwizard(gcbh)');
sfBuilderBlocksDeployed   = find_system(bdroot,'BlockType','S-Function','SFunctionDeploymentMode','on');
sfBuilderBlocks = {sfBuilderBlocksByMaskType{:} sfBuilderBlocksByCallback{:} sfBuilderBlocksDeployed{:}};
sfBuilderBlocks = unique(sfBuilderBlocks);
if isempty(sfBuilderBlocks)
   return;
end
for idx = 1:length(sfBuilderBlocks)
   sfBuilderBlockNameMATFile{idx} = get_param(sfBuilderBlocks{idx},'FunctionName');
   sfBuilderBlockNameMATFile{idx} = ['.' filesep 'SFB__' char(sfBuilderBlockNameMATFile{idx}) '__SFB.mat'];
end
sfBuilderBlockNameMATFile = unique(sfBuilderBlockNameMATFile);
for idx = 1:length(sfBuilderBlockNameMATFile)
   if exist(sfBuilderBlockNameMATFile{idx})
      loadedData = load(sfBuilderBlockNameMATFile{idx});
      if isfield(loadedData,'SFBInfoStruct')
         makeInfo = UpdateMakeInfo(makeInfo,loadedData.SFBInfoStruct);
         clear loadedData;
      end
   end
end

function updatedMakeInfo = UpdateMakeInfo(makeInfo,SFBInfoStruct)
updatedMakeInfo = {};
if isfield(makeInfo,'includePath')
   if isfield(SFBInfoStruct,'includePath')
      updatedMakeInfo.includePath = {makeInfo.includePath{:} SFBInfoStruct.includePath{:}};
   else
      updatedMakeInfo.includePath = {makeInfo.includePath{:}};
   end
end
if isfield(makeInfo,'sourcePath')
   if isfield(SFBInfoStruct,'sourcePath')
      updatedMakeInfo.sourcePath = {makeInfo.sourcePath{:} SFBInfoStruct.sourcePath{:}};
   else
      updatedMakeInfo.sourcePath = {makeInfo.sourcePath{:}};
   end
end
if isfield(makeInfo,'linkLibsObjs')
   if isfield(SFBInfoStruct,'additionalLibraries')
      updatedMakeInfo.linkLibsObjs = {makeInfo.linkLibsObjs{:} SFBInfoStruct.additionalLibraries{:}};
   else
      updatedMakeInfo.linkLibsObjs = {makeInfo.linkLibsObjs{:}};
   end
end
