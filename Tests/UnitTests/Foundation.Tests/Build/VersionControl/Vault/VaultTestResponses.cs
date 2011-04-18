namespace Foundation.Tests.Build.VersionControl.Vault
{
    public static class VaultTestResponses
    {
        internal const string ListFolderResponse = @"<vault>
  <folder name=""$/ProjectName/Source/Folder"" workingfolder=""D:\Projects\ProjectName\Destination\Folder"">
   <file name=""UnchangedFile.cs"" version=""6"" length=""4159"" objectid=""343368"" objectversionid=""1068698"" />
   <file name=""EditFile.cs"" version=""10"" length=""4121"" objectid=""343367"" objectversionid=""1068679"" status=""Edited"" />
   <file name=""OldFile.cs"" version=""2"" length=""934"" objectid=""343877"" objectversionid=""1049317"" status=""Old"" />
  </folder>
  <result success=""yes"" />
</vault>";
    }
}