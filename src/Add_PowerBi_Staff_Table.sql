/*
EQ24 SCRIPT
Database script needed to answer EQ 24.

The Model.bim from the EQ 24 project references StaffEducationOrganizationAssignmentAssociation_test table.
This script creates the table, populates it, and then updates the new LOGINID column
with values from StaffEducationOrganizationAssignmentAssociation favoring any existing LoginID value, 
then StaffUSI from sources.

NOTE: Replace EdFi_Ods with your ODS database name

*/
USE [PowerBI]
GO

/****** Object:  Table [dbo].[StaffEducationOrganizationAssignmentAssociation_test]    Script Date: 1/27/2021 2:10:50 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'StaffEducationOrganizationAssignmentAssociation_test')
	BEGIN
		CREATE TABLE [dbo].[StaffEducationOrganizationAssignmentAssociation_test](
			[StaffUSI] [int] NOT NULL,
			[SchoolID] [int] NOT NULL,
			[School] [nvarchar](75) NULL,
			[LocalEducationAgencyId] [int] NULL,
			[District] [nvarchar](75) NULL,
			[StaffClassificationType] [nvarchar](75) NULL,
			[StaffClassificationCode] [nvarchar](50) NULL,
			[StaffClassificationShortDescription] [nvarchar](75) NULL,
			[StaffClassificationDescription] [nvarchar](1024) NULL,
			[PositionTitle] [nvarchar](100) NULL,
			[BeginDate] [date] NOT NULL,
			[EndDate] [date] NULL,
			[LoginID] [nvarchar](50) NULL
		) ON [PRIMARY]
	END

GO

-- NEW INSERTS ONLY INTO [PowerBI].[dbo].[StaffEducationOrganizationAssignmentAssociation_test]
INSERT INTO [dbo].[StaffEducationOrganizationAssignmentAssociation_test]
           ([StaffUSI]
           ,[SchoolID]
           ,[School]
           ,[LocalEducationAgencyId]
           ,[District]
           ,[StaffClassificationType]
           ,[StaffClassificationCode]
           ,[StaffClassificationShortDescription]
           ,[StaffClassificationDescription]
           ,[PositionTitle]
           ,[BeginDate]
           ,[EndDate])
SELECT s.[StaffUSI]
    ,s.[SchoolID]
    ,s.[School]
    ,s.[LocalEducationAgencyId]
    ,s.[District]
    ,s.[StaffClassificationType]
    ,s.[StaffClassificationCode]
    ,s.[StaffClassificationShortDescription]
    ,s.[StaffClassificationDescription]
    ,s.[PositionTitle]
    ,s.[BeginDate]
    ,s.[EndDate]
FROM [EdFi_Ods].[bi].[eq24.StaffEducationOrganizationAssignmentAssociation] s
LEFT JOIN [EdFi_Ods].[bi].[eq24.StaffEducationOrganizationAssignmentAssociation] soaa ON s.StaffUSI = soaa.StaffUSI
WHERE NOT EXISTS (SELECT * FROM [dbo].[StaffEducationOrganizationAssignmentAssociation_test] t1 WHERE t1.StaffUSI = s.StaffUSI)
GO

-- UPDATE ALL LoginID VALUES IN [PowerBI].[dbo].[StaffEducationOrganizationAssignmentAssociation_test]
UPDATE [PowerBI].[dbo].[StaffEducationOrganizationAssignmentAssociation_test] SET 
LoginID = COALESCE(s.LoginId,CAST(s.StaffUSI AS NVARCHAR(255)), CAST(soaa.StaffUSI AS NVARCHAR(255)), CAST(t.StaffUSI AS NVARCHAR(255)))
FROM 
[PowerBI].[dbo].[StaffEducationOrganizationAssignmentAssociation_test] t
LEFT JOIN [EdFi_Ods].[edfi].[Staff] s ON t.StaffUSI = s.StaffUSI
LEFT JOIN [EdFi_Ods].[bi].[eq24.StaffEducationOrganizationAssignmentAssociation] soaa ON t.StaffUSI = soaa.StaffUSI

GO
