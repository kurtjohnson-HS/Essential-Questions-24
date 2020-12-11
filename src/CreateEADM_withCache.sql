USE [EADM_Staging_v25]
GO
/****** Object:  Table [dbo].[EADM_Assessments]    Script Date: 12/9/2018 8:08:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EADM_Assessments](
	[AssessmentID] [int] IDENTITY(1,1) NOT NULL,
	[AssessmentTitle] [nvarchar](60) NOT NULL,
	[Version] [int] NOT NULL,
	[includeinnce] [int] NULL,
	[AssessmentIdentifier] [nvarchar](60) NULL,
	[Namespace] [nvarchar](255) NULL,
 CONSTRAINT [PK_Table_1] PRIMARY KEY CLUSTERED 
(
	[AssessmentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EADM_DIM_GradeLevel_Cache]    Script Date: 12/9/2018 8:08:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EADM_DIM_GradeLevel_Cache](
	[GradeLevelDescriptorId] [int] NOT NULL,
	[GradeLevel] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EADM_DIM_Schools_Cache]    Script Date: 12/9/2018 8:08:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EADM_DIM_Schools_Cache](
	[EducationOrganizationId] [int] NOT NULL,
	[NameOfInstitution] [nvarchar](75) NOT NULL,
	[SchoolCategoryTypeId] [int] NOT NULL,
	[Description] [nvarchar](1024) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EADM_DIM_Student_Cache]    Script Date: 12/9/2018 8:08:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EADM_DIM_Student_Cache](
	[StudentUSI] [int] NOT NULL,
	[FirstName] [nvarchar](75) NOT NULL,
	[MiddleName] [nvarchar](75) NULL,
	[LastSurname] [nvarchar](75) NOT NULL,
	[StudentUniqueId] [nvarchar](32) NOT NULL,
	[BirthDate] [date] NOT NULL,
	[GenderCode] [nvarchar](50) NOT NULL,
	[GenderDesc] [nvarchar](1024) NOT NULL,
	[DisabilityStatus] [varchar](11) NOT NULL,
	[EconomicDisadvantaged] [varchar](1) NOT NULL,
	[Gifted] [varchar](1) NOT NULL,
	[ELL] [varchar](1) NOT NULL,
	[GradeLevel] [nvarchar](50) NOT NULL,
	[GradeLevelDescriptorId] [int] NOT NULL,
	[EntryDate] [date] NOT NULL,
	[EducationOrganizationId] [int] NOT NULL,
	[NameOfInstitution] [nvarchar](75) NOT NULL,
	[SchoolCategoryTypeId] [int] NOT NULL,
	[Description] [nvarchar](1024) NOT NULL,
	[HispanicLatinoEthnicity] [bit] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EADM_DIM_StudentChronicAbsence_Cache]    Script Date: 12/9/2018 8:08:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EADM_DIM_StudentChronicAbsence_Cache](
	[StudentUSI] [int] NOT NULL,
	[AttendanceEventCategoryTypeId] [int] NOT NULL,
	[SchoolId] [int] NOT NULL,
	[SchoolYear] [smallint] NOT NULL,
	[CodeValue] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](1024) NOT NULL,
	[ShortDescription] [nvarchar](450) NOT NULL,
	[TotalAbs] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EADM_DIM_StudentRace_Cache]    Script Date: 12/9/2018 8:08:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EADM_DIM_StudentRace_Cache](
	[StudentUSI] [int] NOT NULL,
	[RaceTypeId] [int] NOT NULL,
	[CodeValue] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](1024) NOT NULL,
	[ShortDescription] [nvarchar](450) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EADM_DIM_StudentSpecialEd_Cache]    Script Date: 12/9/2018 8:08:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EADM_DIM_StudentSpecialEd_Cache](
	[CodeValue] [nvarchar](50) NULL,
	[ShortDescription] [nvarchar](75) NULL,
	[StudentUSI] [int] NOT NULL,
	[EducationOrganizationId] [int] NOT NULL,
	[ProgramTypeId] [int] NOT NULL,
	[ProgramName] [nvarchar](60) NOT NULL,
	[ProgramEducationOrganizationId] [int] NOT NULL,
	[BeginDate] [date] NOT NULL,
	[ServiceDescriptorId] [int] NULL,
	[PrimaryIndicator] [bit] NULL,
	[ServiceBeginDate] [date] NULL,
	[ServiceEndDate] [date] NULL,
	[CreateDate] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EADM_DIM_StudentStaff_Cache]    Script Date: 12/9/2018 8:08:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EADM_DIM_StudentStaff_Cache](
	[EducationOrganizationId] [int] NOT NULL,
	[NameOfInstitution] [nvarchar](75) NOT NULL,
	[StaffUSI] [int] NOT NULL,
	[PositionTitle] [nvarchar](100) NULL,
	[StudentUSI] [int] NOT NULL,
	[ElectronicMailAddress] [nvarchar](128) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EADM_DIM_Subject_Cache]    Script Date: 12/9/2018 8:08:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EADM_DIM_Subject_Cache](
	[AcademicSubjectTypeId] [int] NOT NULL,
	[AcademicSubjectDescriptorId] [int] NOT NULL,
	[Subject] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](1024) NOT NULL,
	[ShortDescription] [nvarchar](450) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EADM_DIM_UserSecurity_Cache]    Script Date: 12/9/2018 8:08:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EADM_DIM_UserSecurity_Cache](
	[EducationOrganizationId] [int] NOT NULL,
	[NameOfInstitution] [nvarchar](75) NOT NULL,
	[StaffUSI] [int] NOT NULL,
	[PositionTitle] [nvarchar](100) NULL,
	[StudentUSI] [int] NOT NULL,
	[ElectronicMailAddress] [nvarchar](128) NOT NULL,
	[PowerBiEmailAddress] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EADM_FACT_Assessment_NCE_Cache]    Script Date: 12/9/2018 8:08:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EADM_FACT_Assessment_NCE_Cache](
	[AssessmentKey] [nvarchar](60) NULL,
	[AssessmentTitle] [nvarchar](100) NOT NULL,
	[Version] [int] NULL,
	[StudentUSI] [int] NOT NULL,
	[ScaleScore] [int] NULL,
	[NationalPercentile] [int] NULL,
	[RawPercentRank] [float] NULL,
	[LocalPercentile] [float] NULL,
	[NCE] [numeric](3, 1) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EADM_FACT_AssessmentNumbersPivot_Cache]    Script Date: 12/9/2018 8:08:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EADM_FACT_AssessmentNumbersPivot_Cache](
	[StudentUSI] [int] NOT NULL,
	[FSAMO_2016_NCE] [numeric](38, 1) NULL,
	[FSAMO_2016_SCALE] [int] NULL,
	[FSAMO_2017_NCE] [numeric](38, 1) NULL,
	[FSAMO_2017_SCALE] [int] NULL,
	[StarMathAug2018_NCE] [numeric](38, 1) NULL,
	[StarMathAug2018_SCALE] [int] NULL,
	[StarMathDec2018_NCE] [numeric](38, 1) NULL,
	[StarMathDec2018_SCALE] [int] NULL,
	[FSAMO_2016_NationalPercentile] [int] NULL,
	[FSAMO_2017_NationalPercentile] [int] NULL,
	[StarMathAug2018_NationalPercentile] [int] NULL,
	[StarMathDec2018_NationalPercentile] [int] NULL,
	[FSAMO_2016_PerfLevelDescriptorId] [int] NULL,
	[FSA_2016_PerformanceLevel] [nvarchar](1024) NULL,
	[FSAMO_2017_PerfLevelDescriptorId] [int] NULL,
	[FSA_2017_PerformanceLevel] [nvarchar](1024) NULL,
	[StarMathAug2018_PerfLevelDescriptorId] [int] NULL,
	[StarMathAug2018_PerformanceLevel] [nvarchar](1024) NULL,
	[StarMathDec2018_PerfLevelDescriptorId] [int] NULL,
	[StarMathDec2018_PerformanceLevel] [nvarchar](1024) NULL,
	[FSAMO_2016_PerfMinScore] [int] NULL,
	[FSAMO_2017_PerfMinScore] [int] NULL,
	[StarMathAug2018_PerfMinScore] [int] NULL,
	[StarMathDec2018_PerfMinScore] [int] NULL,
	[FSAMO_2016_PerfMaxScore] [int] NULL,
	[FSAMO_2017_PerfMaxScore] [int] NULL,
	[StarMathAug2018_PerfMaxScore] [int] NULL,
	[StarMathDec2018_PerfMaxScore] [int] NULL,
	[IXL] [varchar](1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EADM_FACT_DomainLevelScores_Cache]    Script Date: 12/9/2018 8:08:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EADM_FACT_DomainLevelScores_Cache](
	[StudentUSI] [int] NOT NULL,
	[AssessmentTitle] [nvarchar](100) NOT NULL,
	[Version] [int] NULL,
	[IdentificationCode] [nvarchar](60) NOT NULL,
	[description] [nvarchar](1024) NULL,
	[AdministrationDate] [int] NULL,
	[RawScore] [int] NULL,
	[MaxRawScore] [int] NULL,
	[PercentCorrect] [float] NULL,
	[race] [nvarchar](1024) NULL,
	[Absences] [int] NOT NULL,
	[FirstName] [nvarchar](75) NOT NULL,
	[MiddleName] [nvarchar](75) NULL,
	[LastSurname] [nvarchar](75) NOT NULL,
	[StudentUniqueId] [nvarchar](32) NOT NULL,
	[BirthDate] [date] NOT NULL,
	[GenderCode] [nvarchar](50) NOT NULL,
	[GenderDesc] [nvarchar](1024) NOT NULL,
	[DisabilityStatus] [varchar](11) NOT NULL,
	[EconomicDisadvantaged] [varchar](1) NOT NULL,
	[Gifted] [varchar](1) NOT NULL,
	[ELL] [varchar](1) NOT NULL,
	[GradeLevel] [nvarchar](50) NOT NULL,
	[GradeLevelDescriptorId] [int] NOT NULL,
	[EntryDate] [date] NOT NULL,
	[EducationOrganizationId] [int] NOT NULL,
	[NameOfInstitution] [nvarchar](75) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EADM_FACT_SkillLevelScores_Cache]    Script Date: 12/9/2018 8:08:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EADM_FACT_SkillLevelScores_Cache](
	[StudentUSI] [int] NOT NULL,
	[AssessmentIdentifier] [nvarchar](60) NOT NULL,
	[AssessmentTitle] [nvarchar](100) NOT NULL,
	[Version] [int] NULL,
	[IdentificationCode] [nvarchar](60) NOT NULL,
	[description] [nvarchar](1024) NULL,
	[RawScore] [int] NULL,
	[MaxRawScore] [int] NULL,
	[PercentCorrect] [float] NULL,
	[ParentIdentificationCode] [nvarchar](60) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EADM_FACT_StudentAssessmentPerformanceLevel_Cache]    Script Date: 12/9/2018 8:08:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EADM_FACT_StudentAssessmentPerformanceLevel_Cache](
	[AssessmentKey] [nvarchar](60) NOT NULL,
	[AssessmentTitle] [nvarchar](100) NOT NULL,
	[StudentUSI] [int] NOT NULL,
	[PerformanceLevelDescriptorId] [int] NOT NULL,
	[PerformanceLevelMet] [bit] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[AssessmentReportingMethodTypeId] [int] NOT NULL,
	[AssessmentIdentifier] [nvarchar](60) NOT NULL,
	[StudentAssessmentIdentifier] [nvarchar](60) NOT NULL,
	[Namespace] [nvarchar](255) NOT NULL,
	[PerformanceLevelCodeValue] [nvarchar](50) NOT NULL,
	[PerformanceLevelDescription] [nvarchar](1024) NULL,
	[PerformanceLevelShortDescription] [nvarchar](75) NOT NULL,
	[MinimumScore] [nvarchar](35) NULL,
	[MaximumScore] [nvarchar](35) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EADM_student_ELL_Cache]    Script Date: 12/9/2018 8:08:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EADM_student_ELL_Cache](
	[StudentUSI] [int] NOT NULL,
	[ELL] [varchar](1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EADM_student_gifted_Cache]    Script Date: 12/9/2018 8:08:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EADM_student_gifted_Cache](
	[StudentUSI] [int] NOT NULL,
	[gifted] [varchar](1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EADM_StudentAssessment_Cache]    Script Date: 12/9/2018 8:08:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EADM_StudentAssessment_Cache](
	[StudentUSI] [int] NOT NULL,
	[AdministrationDate] [datetime2](7) NOT NULL,
	[AdministrationEndDate] [datetime2](7) NULL,
	[SerialNumber] [nvarchar](60) NULL,
	[AdministrationLanguageDescriptorId] [int] NULL,
	[AdministrationEnvironmentTypeId] [int] NULL,
	[RetestIndicatorTypeId] [int] NULL,
	[ReasonNotTestedTypeId] [int] NULL,
	[WhenAssessedGradeLevelDescriptorId] [int] NULL,
	[EventCircumstanceTypeId] [int] NULL,
	[EventDescription] [nvarchar](1024) NULL,
	[Id] [uniqueidentifier] NOT NULL,
	[LastModifiedDate] [datetime] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[AssessmentIdentifier] [nvarchar](60) NOT NULL,
	[StudentAssessmentIdentifier] [nvarchar](60) NOT NULL,
	[Namespace] [nvarchar](255) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EADM_StudentSchoolYears_Cache]    Script Date: 12/9/2018 8:08:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EADM_StudentSchoolYears_Cache](
	[studentusi] [int] NOT NULL,
	[schoolyear] [smallint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EADM_SummaryView_Cache]    Script Date: 12/9/2018 8:08:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EADM_SummaryView_Cache](
	[race] [nvarchar](1024) NULL,
	[Absences] [int] NOT NULL,
	[StarMathAug2018_NCE] [numeric](38, 1) NULL,
	[StarMathAug2018_SCALE] [int] NULL,
	[StarMathDec2018_NCE] [numeric](38, 1) NULL,
	[StarMathDec2018_SCALE] [int] NULL,
	[StudentUSI] [int] NOT NULL,
	[FirstName] [nvarchar](75) NOT NULL,
	[MiddleName] [nvarchar](75) NULL,
	[LastSurname] [nvarchar](75) NOT NULL,
	[StudentUniqueId] [nvarchar](32) NOT NULL,
	[BirthDate] [date] NOT NULL,
	[GenderCode] [nvarchar](50) NOT NULL,
	[GenderDesc] [nvarchar](1024) NOT NULL,
	[DisabilityStatus] [varchar](11) NOT NULL,
	[EconomicDisadvantaged] [varchar](1) NOT NULL,
	[Gifted] [varchar](1) NOT NULL,
	[ELL] [varchar](1) NOT NULL,
	[GradeLevel] [nvarchar](50) NOT NULL,
	[GradeLevelDescriptorId] [int] NOT NULL,
	[EntryDate] [date] NOT NULL,
	[EducationOrganizationId] [int] NOT NULL,
	[NameOfInstitution] [nvarchar](75) NOT NULL,
	[FSAMO_2017_SCALE] [int] NULL,
	[FSAMO_2017_NCE] [numeric](38, 1) NULL,
	[FSAMO_2016_SCALE] [int] NULL,
	[FSAMO_2016_NCE] [numeric](38, 1) NULL,
	[FSAMO_2016_PerfLevelDescriptorId] [int] NULL,
	[FSA_2016_PerformanceLevel] [nvarchar](1024) NULL,
	[FSAMO_2017_PerfLevelDescriptorId] [int] NULL,
	[FSA_2017_PerformanceLevel] [nvarchar](1024) NULL,
	[StarMathAug2018_PerfLevelDescriptorId] [int] NULL,
	[StarMathAug2018_PerformanceLevel] [nvarchar](1024) NULL,
	[StarMathDec2018_PerfLevelDescriptorId] [int] NULL,
	[StarMathDec2018_PerformanceLevel] [nvarchar](1024) NULL,
	[HispanicLatinoEthnicity] [bit] NOT NULL,
	[FSAMO_2016_NationalPercentile] [int] NULL,
	[FSAMO_2017_NationalPercentile] [int] NULL,
	[StarMathAug2018_NationalPercentile] [int] NULL,
	[StarMathDec2018_NationalPercentile] [int] NULL,
	[IXL] [varchar](1) NOT NULL,
	[FSAMO_2016_PerfMinScore] [int] NULL,
	[FSAMO_2017_PerfMinScore] [int] NULL,
	[StarMathAug2018_PerfMinScore] [int] NULL,
	[StarMathDec2018_PerfMinScore] [int] NULL,
	[FSAMO_2016_PerfMaxScore] [int] NULL,
	[FSAMO_2017_PerfMaxScore] [int] NULL,
	[StarMathAug2018_PerfMaxScore] [int] NULL,
	[StarMathDec2018_PerfMaxScore] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PowerBiIdMapping]    Script Date: 12/9/2018 8:08:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PowerBiIdMapping](
	[PowerBiId] [int] IDENTITY(1,1) NOT NULL,
	[LocalEducationAgencyId] [int] NOT NULL,
	[PositionTitle] [nvarchar](100) NOT NULL,
	[PowerBiEmailAddress] [nvarchar](50) NOT NULL,
	[DistrictEmailAddress] [nvarchar](50) NOT NULL,
	[DatabaseUser] [nvarchar](256) NULL
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[v_EADM_student_ELL]    Script Date: 12/9/2018 8:08:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






CREATE view [dbo].[v_EADM_student_ELL] as

--select distinct sa.StudentUSI, case when s.begindate is null then 'N' else 'Y' end as ELL

-- from [dbo].[v_EADM_StudentAssessment] sa
--left join 
--(
--Select 
--spa.StudentUSI
--,max(spa.BeginDate) as BeginDate
----,spa.*
--from EdFi_Glendale_v25.[edfi].[StudentProgramAssociation] SPA
--where ProgramName = 'English as a Second Language (ESL)' and spa.EndDate is null
--group by SPA.StudentUSI
--) s
--on sa.StudentUSI = s.StudentUSI

----select * from edfi.Descriptor where description like 'dis%'

SELECT [StudentUSI]
      ,[ELL]
  FROM [dbo].[EADM_student_ELL_Cache]
GO
/****** Object:  View [dbo].[v_EADM_student_gifted]    Script Date: 12/9/2018 8:08:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO







CREATE view [dbo].[v_EADM_student_gifted] as

--select distinct sa.StudentUSI, case when s.begindate is null then 'N' else 'Y' end as gifted

-- from [dbo].[v_EADM_StudentAssessment]  sa
--left join 
--(
--Select 
--spa.StudentUSI
--,max(spa.BeginDate) as BeginDate
--from EdFi_Glendale_v25.[edfi].[StudentProgramAssociation] SPA
--where ProgramName = 'Gifted and Talented' and spa.EndDate is null
--group by SPA.StudentUSI
--) s
--on sa.StudentUSI = s.StudentUSI

SELECT [StudentUSI]
      ,[gifted]
  FROM [dbo].[EADM_student_gifted_Cache]
GO
/****** Object:  View [dbo].[v_EADM_StudentAssessment_BuildCache]    Script Date: 12/9/2018 8:08:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE view [dbo].[v_EADM_StudentAssessment_BuildCache]
as
Select sa.* from [EdFi_Glendale_v25].edfi.StudentAssessment sa
join dbo.EADM_Assessments ea on ea.AssessmentIdentifier = sa.AssessmentIdentifier and ea.Namespace = sa.Namespace
GO
/****** Object:  View [dbo].[v_EADM_StudentSchoolYears_BuildCache]    Script Date: 12/9/2018 8:08:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE view [dbo].[v_EADM_StudentSchoolYears_BuildCache]
as
Select ssa.studentusi, ssa.schoolyear from Edfi_Glendale.edfi.StudentSectionAssociation ssa
join [dbo].[v_EADM_StudentAssessment_BuildCache] sa on sa.StudentUSI = ssa.studentusi
group by ssa.StudentUSI,ssa.SchoolYear
GO
/****** Object:  View [dbo].[v_EADM_DIM_Student_BuildCache]    Script Date: 12/9/2018 8:08:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO












CREATE view [dbo].[v_EADM_DIM_Student_BuildCache] as

select distinct s.StudentUSI,s.FirstName,s.MiddleName,s.LastSurname
,s.StudentUniqueId,s.BirthDate,st.CodeValue as GenderCode,st.Description as GenderDesc,
case when  dt.Description is null then 'NonDisabled' else 'Disabled' end as DisabilityStatus
,case when s.EconomicDisadvantaged = 1 then 'Y' Else 'N' end as EconomicDisadvantaged
,gft.Gifted
,ELL.ELL
,d.CodeValue as GradeLevel
,d.DescriptorId as GradeLevelDescriptorId
,ss.EntryDate
,edorg.EducationOrganizationId
,edorg.NameOfInstitution
,scat.SchoolCategoryTypeId,scat.Description 
,s.HispanicLatinoEthnicity
 from [dbo].[v_EADM_StudentAssessment_BuildCache] sa
inner join Edfi_Glendale_V25.edfi.student s with (nolock) on sa.StudentUSI = s.StudentUSI
inner join Edfi_Glendale_V25.edfi.SexType st with (nolock) on s.SexTypeId = st.SexTypeId
inner join [dbo].[v_EADM_student_ELL] ell with (nolock) on ell.StudentUSI = sa.StudentUSI
inner join [dbo].[v_EADM_student_gifted] gft with (nolock) on gft.StudentUSI = sa.StudentUSI
inner join v_EADM_StudentSchoolYears_BuildCache sy on sy.studentUSI = sa.StudentUSI
-- the following join has an isnull(ss.SchoolYear,2012) to correct for the fact that the Glendale data has null values 
-- for the schoolyear in the StudentSchoolAssociation table
inner join Edfi_Glendale_v25.edfi.StudentSchoolAssociation ss with (nolock) on ss.StudentUSI = sy.StudentUSI and isnull(ss.SchoolYear,2012) = sy.SchoolYear and ss.ExitWithdrawDate is null
inner join Edfi_Glendale_V25.edfi.EducationOrganization edorg with (nolock) on edorg.EducationOrganizationId = ss.SchoolId
inner join Edfi_Glendale_V25.edfi.Descriptor d with (nolock) on d.DescriptorId = ss.EntryGradeLevelDescriptorId and d.namespace like '%gradelevel%'
inner join Edfi_Glendale_V25.edfi.School sch on sch.SchoolId = edorg.EducationOrganizationId
inner join Edfi_Glendale_V25.edfi.LocalEducationAgency lea on lea.LocalEducationAgencyId = sch.LocalEducationAgencyId
inner join (select SchoolId, min(sca.SchoolCategoryTypeId) AS SchoolCategoryTypeId from Edfi_Glendale_V25.[edfi].[SchoolCategory] sca
group by SchoolId) sca on sch.SchoolId = sca.SchoolId
--inner join Edfi_Glendale_V25.[edfi].[SchoolCategory] sca on sch.SchoolId = sca.SchoolId
inner join Edfi_Glendale_V25.[edfi].[SchoolCategoryType] scat on sca.SchoolCategoryTypeId = scat.SchoolCategoryTypeId
left join Edfi_Glendale_V25.edfi.StudentDisability sd with (nolock) on sd.StudentUSI = s.StudentUSI
left join Edfi_Glendale_V25.edfi.DisabilityDescriptor dispd with (nolock) on dispd.DisabilityDescriptorId = sd.DisabilityDescriptorId
left join Edfi_Glendale_V25.[edfi].[DisabilityType] dt with (nolock) on dt.DisabilityTypeId = dispd.DisabilityTypeId


--and sa.StudentUSI = 690
--order by 1

--select * from edfi.Descriptor where description like 'dis%'
GO
/****** Object:  View [dbo].[v_EADM_DIM_StudentStaff_BuildCache]    Script Date: 12/9/2018 8:08:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO









CREATE view [dbo].[v_EADM_DIM_StudentStaff_BuildCache]
as

SELECT distinct edorg.EducationOrganizationId,edorg.NameOfInstitution,seoaa.StaffUSI,sdes.CodeValue as PositionTitle
,stu.StudentUSI
,ElectronicMailAddress
  FROM 
   -- Edfi_Glendale_V25.edfi.Student stu
   dbo.v_EADM_DIM_Student_BuildCache stu
   inner join 
(
	Select ssa.studentusi, ssa.schoolyear from Edfi_Glendale_V25.edfi.StudentSectionAssociation ssa
	group by ssa.StudentUSI,ssa.SchoolYear
) sy on sy.StudentUSI = stu.StudentUSI
inner join Edfi_Glendale_V25.edfi.StudentSchoolAssociation ss with (nolock) on ss.StudentUSI = sy.StudentUSI and isnull(ss.SchoolYear,2012) = sy.SchoolYear and ss.ExitWithdrawDate is null
inner join Edfi_Glendale_V25.edfi.EducationOrganization edorg with (nolock) on edorg.EducationOrganizationId = ss.SchoolId
inner join Edfi_Glendale_V25.edfi.Descriptor d with (nolock) on d.DescriptorId = ss.EntryGradeLevelDescriptorId and d.namespace like '%gradelevel%'
inner join Edfi_Glendale_V25.edfi.School sch on sch.SchoolId = edorg.EducationOrganizationId
inner join Edfi_Glendale_V25.edfi.LocalEducationAgency lea on lea.LocalEducationAgencyId = sch.LocalEducationAgencyId
inner join Edfi_Glendale_V25.[edfi].[SchoolCategory] sca on sch.SchoolId = sca.SchoolId
inner join Edfi_Glendale_V25.[edfi].[SchoolCategoryType] scat on sca.SchoolCategoryTypeId = scat.SchoolCategoryTypeId
-- use the length of the educationOrgainizationId from StaffEducationOrganizationAssignmentAssociation to match schoolid so that we get all the schools/students
-- from the district that the Superintendent or Assistant Superintendent has access too
inner join Edfi_Glendale_V25.edfi.StaffEducationOrganizationAssignmentAssociation seoaa on left(ss.SchoolId,len(seoaa.EducationOrganizationId)) = seoaa.EducationOrganizationId
inner join Edfi_Glendale_V25.edfi.Descriptor sdes on seoaa.StaffClassificationDescriptorId = sdes.DescriptorId
inner join Edfi_Glendale_V25.edfi.StaffEducationOrganizationEmploymentAssociation seoea on seoaa.StaffUSI = seoea.StaffUSI
inner join Edfi_Glendale_V25.edfi.Staff staff on seoea.StaffUSI = staff.staffUSI 
inner join Edfi_Glendale_V25.edfi.StaffElectronicMail mail on staff.StaffUSI = mail.StaffUSI 
  where 
  seoea.EndDate is null -- still employed
  and 
    (d.CodeValue like  '%Superindendent%'  or PositionTitle like '%superintendent%')
  and seoaa.BeginDate < getdate() 
  and seoaa.EndDate is null
  and seoea.HireDate < GETDATE()
  and seoea.EndDate is null
union
SELECT distinct edorg.EducationOrganizationId,edorg.NameOfInstitution,seoaa.StaffUSI,sdes.CodeValue as PositionTitle
,stu.StudentUSI
,ElectronicMailAddress
  FROM 
   [dbo].[v_EADM_DIM_Student_BuildCache] stu
   --Edfi_Glendale_V25.edfi.Student stu
inner join 
(
	Select ssa.studentusi, ssa.schoolyear from Edfi_Glendale_V25.edfi.StudentSectionAssociation ssa
	group by ssa.StudentUSI,ssa.SchoolYear
) sy on sy.StudentUSI = stu.StudentUSI
inner join Edfi_Glendale_V25.edfi.StudentSchoolAssociation ss with (nolock) on ss.StudentUSI = sy.StudentUSI and isnull(ss.SchoolYear,2012) = sy.SchoolYear and ss.ExitWithdrawDate is null
inner join Edfi_Glendale_V25.edfi.EducationOrganization edorg with (nolock) on edorg.EducationOrganizationId = ss.SchoolId
inner join Edfi_Glendale_V25.edfi.Descriptor d with (nolock) on d.DescriptorId = ss.EntryGradeLevelDescriptorId and d.namespace like '%gradelevel%'
inner join Edfi_Glendale_V25.edfi.School sch on sch.SchoolId = edorg.EducationOrganizationId
inner join Edfi_Glendale_V25.edfi.LocalEducationAgency lea on lea.LocalEducationAgencyId = sch.LocalEducationAgencyId
inner join Edfi_Glendale_V25.[edfi].[SchoolCategory] sca on sch.SchoolId = sca.SchoolId
inner join Edfi_Glendale_V25.[edfi].[SchoolCategoryType] scat on sca.SchoolCategoryTypeId = scat.SchoolCategoryTypeId
inner join Edfi_Glendale_V25.edfi.StaffEducationOrganizationAssignmentAssociation seoaa on ss.SchoolId = seoaa.EducationOrganizationId
inner join Edfi_Glendale_V25.edfi.Descriptor sdes on seoaa.StaffClassificationDescriptorId = sdes.DescriptorId
inner join Edfi_Glendale_V25.edfi.StaffEducationOrganizationEmploymentAssociation seoea on seoaa.StaffUSI = seoea.StaffUSI
inner join Edfi_Glendale_V25.edfi.Staff staff on seoea.StaffUSI = staff.staffUSI 
inner join Edfi_Glendale_V25.edfi.StaffElectronicMail mail on staff.StaffUSI = mail.StaffUSI 
  where 
  seoea.EndDate is null -- still employed
  and 
  sdes.CodeValue in ('assistant principal','principal') 
union
select distinct
yy.EducationOrganizationId,yy.NameOfInstitution,yy.StaffUSI,yy.PositionTitle
,yy.StudentUSI
,yy.ElectronicMailAddress

from (
SELECT distinct  mail.ElectronicMailAddress,SEOaA.PositionTitle,s.FirstName as Teacher_FirstName
,s.MiddleName as Teacher_MiddleName
,s.LastSurname as Teacher_LastName
,t1.ClassPeriodName,t1.ClassroomIdentificationCode,t1.StaffUSI,t1.SchoolId
,t2.CodeValue as Termid
,ssa.LocalCourseCode,ssa.StudentUSI
,edorg.EducationOrganizationId
,edorg.NameOfInstitution
FROM Edfi_Glendale_V25.edfi.staffsectionassociation t1
inner join Edfi_Glendale_V25.edfi.Descriptor t2
on t1.TermDescriptorId = t2.DescriptorId
inner join Edfi_Glendale_V25.edfi.StudentSectionAssociation ssa
on t1.ClassroomIdentificationCode = ssa.ClassroomIdentificationCode
and t1.ClassPeriodName = ssa.ClassPeriodName
and t1.TermDescriptorId = ssa.TermDescriptorId
and t1.UniqueSectionCode = ssa.UniqueSectionCode
join Edfi_Glendale_V25.edfi.EducationOrganization edorg on t1.SchoolId = edorg.EducationOrganizationId
inner join Edfi_Glendale_V25.edfi.StudentSchoolAssociation stusa
on ssa.studentusi = stusa.StudentUSI
inner join dbo.v_EADM_DIM_Student_BuildCache stu on stu.StudentUSI = ssa.StudentUSI
inner join Edfi_Glendale_V25.edfi.Course c
on t1.LocalCourseCode = c.CourseCode
and t1.SchoolId = c.EducationOrganizationId
inner join Edfi_Glendale_V25.edfi.Staff s
on t1.StaffUSI = s.StaffUSI
inner join Edfi_Glendale_V25.edfi.StaffElectronicMail mail
on s.StaffUSI = mail.StaffUSI
inner join Edfi_Glendale_V25.edfi.StaffEducationOrganizationAssignmentAssociation SEOAA
on s.StaffUSI = SEOAA.StaffUSI
where 
ssa.EndDate >= t1.EndDate
and stusa.EntryGradeLevelDescriptorId = (select d.DescriptorId from Edfi_Glendale_V25.edfi.Descriptor d where d.codevalue = 'eighth grade' and d.namespace like '%gradelevel%') 
-- just eighth graders
and c.AcademicSubjectDescriptorId = (select d1.descriptorid from Edfi_Glendale_V25.edfi.descriptor d1 where d1.codevalue like '%math%' and d1.Namespace like '%academ%')

-- just math
) as yy

GO
/****** Object:  View [dbo].[v_EADM_DIM_GradeLevel_BuildCache]    Script Date: 12/9/2018 8:08:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE view [dbo].[v_EADM_DIM_GradeLevel_BuildCache] 
as
select distinct GradeLevelDescriptorId, GradeLevel from [dbo].[v_EADM_DIM_student_BuildCache]
GO
/****** Object:  View [dbo].[v_EADM_DIM_Schools_BuildCache]    Script Date: 12/9/2018 8:08:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE view [dbo].[v_EADM_DIM_Schools_BuildCache]
as
select distinct stu.EducationOrganizationId,stu.NameOfInstitution, 
scat.SchoolCategoryTypeId,scat.Description 
from [dbo].[v_EADM_DIM_Student_BuildCache] stu
join Edfi_Glendale_V25.edfi.School sch on sch.SchoolId = stu.EducationOrganizationId
join Edfi_Glendale_V25.edfi.LocalEducationAgency lea on lea.LocalEducationAgencyId = sch.LocalEducationAgencyId
join Edfi_Glendale_V25.edfi.EducationOrganization edorg on edorg.EducationOrganizationId = sch.SchoolId
join Edfi_Glendale_V25.[edfi].[SchoolCategory] sca on sch.SchoolId = sca.SchoolId
join Edfi_Glendale_V25.[edfi].[SchoolCategoryType] scat on sca.SchoolCategoryTypeId = scat.SchoolCategoryTypeId




GO
/****** Object:  View [dbo].[v_EADM_DIM_Subject_BuildCache]    Script Date: 12/9/2018 8:08:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE view [dbo].[v_EADM_DIM_Subject_BuildCache]
as
Select distinct st.AcademicSubjectTypeId,sdes.AcademicSubjectDescriptorId,CodeValue as Subject,Description,ShortDescription  
from [dbo].[v_EADM_StudentAssessment_BuildCache] sa with (nolock)
join EdFi_Glendale_v25.edfi.Assessment a on a.AssessmentIdentifier = sa.AssessmentIdentifier and a.Namespace = sa.Namespace
join EdFi_Glendale_v25.edfi.AssessmentAcademicSubject sub on a.AssessmentIdentifier = sub.AssessmentIdentifier
join EdFi_Glendale_v25.edfi.AcademicSubjectDescriptor sdes with (nolock) on sdes.AcademicSubjectDescriptorId = sub.[AcademicSubjectDescriptorId]
join edfi_glendale_v25.edfi.AcademicSubjectType st with (nolock) on st.AcademicSubjectTypeId = sdes.AcademicSubjectTypeId
GO
/****** Object:  View [dbo].[v_EADM_DIM_StudentSpecialEd_BuildCache]    Script Date: 12/9/2018 8:08:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE view [dbo].[v_EADM_DIM_StudentSpecialEd_BuildCache]
as
SELECT distinct sdesc.CodeValue,sdesc.ShortDescription,
spa.[StudentUSI], spa.[EducationOrganizationId], spa.[ProgramTypeId], spa.[ProgramName], spa.[ProgramEducationOrganizationId],
spa.[BeginDate], spas.[ServiceDescriptorId], spas.[PrimaryIndicator], spas.[ServiceBeginDate], spas.[ServiceEndDate],
spa.[CreateDate]
FROM [Edfi_Glendale].[edfi].[StudentProgramAssociation] spa
left join Edfi_Glendale.[edfi].[StudentProgramAssociationService] spas on spas.StudentUSI = spa.StudentUSI
and  spas.[EducationOrganizationId] = spa.[EducationOrganizationId]
and  spas.[ProgramTypeId] = spa.[ProgramTypeId]
and  spas.[ProgramName] = spa.[ProgramName]
and  spas.[ProgramEducationOrganizationId] = spa.[ProgramEducationOrganizationId]
and  spas.[BeginDate] = spa.BeginDate
left join Edfi_Glendale.edfi.Descriptor sdesc on spas.ServiceDescriptorId = sdesc.DescriptorId 
inner join [dbo].[v_EADM_StudentAssessment_BuildCache] sa on sa.StudentUSI = spa.StudentUSI
where spa.ProgramName = 'Special Education'
GO
/****** Object:  View [dbo].[v_EADM_DIM_UserSecurity_BuildCache]    Script Date: 12/9/2018 8:08:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE view [dbo].[v_EADM_DIM_UserSecurity_BuildCache]
as


select ss.*,pbi.PowerBiEmailAddress from dbo.[v_EADM_DIM_StudentStaff_BuildCache] ss
join 
--(
	--select PositionTitle, DistrictEmailAddress from 
	dbo.PowerBiIdMapping pbi --where [PowerBiEmailAddress] = @PowerBiEmailAddress

--)
 --pbi
  on pbi.DistrictEmailAddress = ss.ElectronicMailAddress
GO
/****** Object:  View [dbo].[v_EADM_FACT_StudentAssessmentPerformanceLevel_BuildCache]    Script Date: 12/9/2018 8:08:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO








CREATE view [dbo].[v_EADM_FACT_StudentAssessmentPerformanceLevel_BuildCache]
as
Select
a.AssessmentIdentifier as AssessmentKey,
a.AssessmentTitle,
 spl.*,des.CodeValue as PerformanceLevelCodeValue,des.Description as PerformanceLevelDescription,des.ShortDescription as PerformanceLevelShortDescription 
,apl.MinimumScore,APL.MaximumScore
 from [dbo].[v_EADM_StudentAssessment_BuildCache] sa
 
join Edfi_Glendale_V25.edfi.[StudentAssessmentPerformanceLevel] spl on spl.StudentUSI = sa.StudentUSI 
															 and spl.AssessmentIdentifier = sa.AssessmentIdentifier
															 and spl.Namespace = sa.Namespace
join Edfi_Glendale_V25.edfi.[PerformanceLevelDescriptor] pl on pl.PerformanceLevelDescriptorId = spl.PerformanceLevelDescriptorId
join Edfi_Glendale_V25.edfi.AssessmentPerformanceLevel apl on apl.AssessmentIdentifier = spl.AssessmentIdentifier and apl.Namespace = spl.Namespace
														and apl.PerformanceLevelDescriptorId = spl.PerformanceLevelDescriptorId
join Edfi_Glendale_V25.edfi.Descriptor des on des.DescriptorId = pl.PerformanceLevelDescriptorId
join dbo.EADM_Assessments ea on ea.AssessmentIdentifier = spl.AssessmentIdentifier and ea.Namespace = spl.Namespace and ea.includeinnce = 1
join EdFi_Glendale_v25.edfi.Assessment a on a.AssessmentIdentifier = ea.AssessmentIdentifier and a.Namespace = ea.NameSpace
GO
/****** Object:  View [dbo].[v_EADM_FACT_Assessment_NCE_BuildCache]    Script Date: 12/9/2018 8:08:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO












-- select * from [dbo].[v_EADM_FACT_Assessment_NCE] where AssessmentTitle like 'IXL%'

CREATE view [dbo].[v_EADM_FACT_Assessment_NCE_BuildCache]
as
--
-- I case the percentile rank 0 to be 1
-- I case the percentil rank 100 to be 99
--
select 
AssessmentIdentifier as AssessmentKey,
AssessmentTitle, [Version], [StudentUSI], [ScaleScore], [NationalPercentile], [RawPercentRank], [LocalPercentile], 

case
when LocalPercentile =  	1	then	1.0
when LocalPercentile =  	2	then	6.7
when LocalPercentile =  	3	then	10.4
when LocalPercentile =  	4	then	13.1
when LocalPercentile =  	5	then	15.4
when LocalPercentile =  	6	then	17.3
when LocalPercentile =  	7	then	18.9
when LocalPercentile =  	8	then	20.4
when LocalPercentile =  	9	then	21.8
when LocalPercentile =  	10	then	23.0
when LocalPercentile =  	11	then	24.2
when LocalPercentile =  	12	then	25.3
when LocalPercentile =  	13	then	26.3
when LocalPercentile =  	14	then	27.2
when LocalPercentile =  	15	then	28.2
when LocalPercentile =  	16	then	29.1
when LocalPercentile =  	17	then	29.9
when LocalPercentile =  	18	then	30.7
when LocalPercentile =  	19	then	31.5
when LocalPercentile =  	20	then	32.3
when LocalPercentile =  	21	then	33.0
when LocalPercentile =  	22	then	33.7
when LocalPercentile =  	23	then	34.4
when LocalPercentile =  	24	then	35.1
when LocalPercentile =  	25	then	35.8
when LocalPercentile =  	26	then	36.5
when LocalPercentile =  	27	then	37.1
when LocalPercentile =  	28	then	37.7
when LocalPercentile =  	29	then	38.3
when LocalPercentile =  	30	then	39.0
when LocalPercentile =  	31	then	39.6
when LocalPercentile =  	32	then	40.2
when LocalPercentile =  	33	then	40.7
when LocalPercentile =  	34	then	41.3
when LocalPercentile =  	35	then	41.9
when LocalPercentile =  	36	then	42.5
when LocalPercentile =  	37	then	43.0
when LocalPercentile =  	38	then	43.6
when LocalPercentile =  	39	then	44.1
when LocalPercentile =  	40	then	44.7
when LocalPercentile =  	41	then	45.2
when LocalPercentile =  	42	then	45.7
when LocalPercentile =  	43	then	46.3
when LocalPercentile =  	44	then	46.8
when LocalPercentile =  	45	then	47.4
when LocalPercentile =  	46	then	47.9
when LocalPercentile =  	47	then	48.4
when LocalPercentile =  	48	then	48.9
when LocalPercentile =  	49	then	49.5
when LocalPercentile =  	50	then	50.0
when LocalPercentile =  	51	then	50.5
when LocalPercentile =  	52	then	51.1
when LocalPercentile =  	53	then	51.6
when LocalPercentile =  	54	then	52.1
when LocalPercentile =  	55	then	52.6
when LocalPercentile =  	56	then	53.2
when LocalPercentile =  	57	then	53.7
when LocalPercentile =  	58	then	54.3
when LocalPercentile =  	59	then	54.8
when LocalPercentile =  	60	then	55.3
when LocalPercentile =  	61	then	55.9
when LocalPercentile =  	62	then	56.4
when LocalPercentile =  	63	then	57.0
when LocalPercentile =  	64	then	57.5
when LocalPercentile =  	65	then	58.1
when LocalPercentile =  	66	then	58.7
when LocalPercentile =  	67	then	59.3
when LocalPercentile =  	68	then	59.8
when LocalPercentile =  	69	then	60.4
when LocalPercentile =  	70	then	61.0
when LocalPercentile =  	71	then	61.7
when LocalPercentile =  	72	then	62.3
when LocalPercentile =  	73	then	62.9
when LocalPercentile =  	74	then	63.5
when LocalPercentile =  	75	then	64.2
when LocalPercentile =  	76	then	64.9
when LocalPercentile =  	77	then	65.6
when LocalPercentile =  	78	then	66.3
when LocalPercentile =  	79	then	67.0
when LocalPercentile =  	80	then	67.7
when LocalPercentile =  	81	then	68.5
when LocalPercentile =  	82	then	69.3
when LocalPercentile =  	83	then	70.1
when LocalPercentile =  	84	then	70.9
when LocalPercentile =  	85	then	71.8
when LocalPercentile =  	86	then	72.8
when LocalPercentile =  	87	then	73.7
when LocalPercentile =  	88	then	74.7
when LocalPercentile =  	89	then	75.8
when LocalPercentile =  	90	then	77.0
when LocalPercentile =  	91	then	78.2
when LocalPercentile =  	92	then	79.6
when LocalPercentile =  	93	then	81.1
when LocalPercentile =  	94	then	82.7
when LocalPercentile =  	95	then	84.6
when LocalPercentile =  	96	then	86.9
when LocalPercentile =  	97	then	89.6
when LocalPercentile =  	98	then	93.3
when LocalPercentile =  	99	then	99.0
end as NCE
 from 
(
select 
yy.AssessmentTitle,
yy.AssessmentIdentifier,
yy.Version,
yy.StudentUSI,yy.ScaleScore,zz.NationalPercentile
,PERCENT_RANK() over  (Partition by yy.AssessmentIdentifier order by cast(yy.scalescore as int)) as RawPercentRank
--,ROUND(100*PERCENT_RANK() over (order by cast(yy.scalescore as int)),0)
,case when ROUND(100*PERCENT_RANK() over (Partition by yy.AssessmentIdentifier order by cast(yy.scalescore as int)),0) = 0 then 1
when ROUND(100*PERCENT_RANK() over (Partition by yy.AssessmentIdentifier order by cast(yy.scalescore as int)),0) = 100 then 99
else ROUND(100*PERCENT_RANK() over (Partition by yy.AssessmentIdentifier order by cast(yy.scalescore as int)),0)
end
as LocalPercentile

--zz.AssessmentTitle
from 
(
Select
sr.StudentUSI,
ea.AssessmentIdentifier,
a.AssessmentTitle, 
a.Version,
cast(min(Result) as int) as ScaleScore
--from Edfi_Glendale_V25.edfi.StudentAssessmentScoreResult sr with (nolock)
from dbo.EADM_Assessments ea with (nolock)
join Edfi_Glendale_V25.edfi.StudentAssessmentScoreResult sr with (nolock) on ea.assessmentidentifier = sr.assessmentidentifier and ea.NameSpace = sr.Namespace
--join dbo.EADM_Assessments ea with (nolock) on ea.assessmentidentifier = sr.assessmentidentifier and ea.NameSpace = sr.Namespace
join EdFi_Glendale_v25.edfi.Assessment a on a.AssessmentIdentifier = ea.AssessmentIdentifier 
--join dbo.EADM_Assessments a with (nolock) on sr.AssessmentTitle = a.AssessmentTitle and a.Version = sr.Version and a.AcademicSubjectDescriptorId = sr.AcademicSubjectDescriptorId and a.AssessedGradeLevelDescriptorId = sr.AssessedGradeLevelDescriptorId and a.includeinnce = 1
where sr.AssessmentReportingMethodTypeId = 28 --and sr.StudentUSI = 2
group by sr.Studentusi,
ea.AssessmentIdentifier,
ea.Namespace,
a.AssessmentTitle, 
a.Version
)  as yy
left join
(
Select
sr.StudentUSI,
ea.AssessmentIdentifier,
a.AssessmentTitle, 
a.Version,
cast(min(Result) as int) as NationalPercentile
from dbo.EADM_Assessments ea with (nolock)
join Edfi_Glendale_V25.edfi.StudentAssessmentScoreResult sr with (nolock) on ea.assessmentidentifier = sr.assessmentidentifier and ea.NameSpace = sr.Namespace
--from Edfi_Glendale_V25.edfi.StudentAssessmentScoreResult sr with (nolock)
--join dbo.EADM_Assessments ea with (nolock) on ea.assessmentidentifier = sr.assessmentidentifier and ea.NameSpace = sr.Namespace
join EdFi_Glendale_v25.edfi.Assessment a on a.AssessmentIdentifier = ea.AssessmentIdentifier 
--join dbo.EADM_Assessments a with (nolock) on sr.AssessmentTitle = a.AssessmentTitle and a.Version = sr.Version and a.AcademicSubjectDescriptorId = sr.AcademicSubjectDescriptorId and a.AssessedGradeLevelDescriptorId = sr.AssessedGradeLevelDescriptorId and a.includeinnce = 1
where sr.AssessmentReportingMethodTypeId = 21 --and sr.StudentUSI = 2
group by 
sr.StudentUSI,
ea.AssessmentIdentifier,
ea.namespace,
a.AssessmentTitle, 
a.Version

) as zz 
on yy.StudentUSI = zz.StudentUSI and yy.AssessmentTitle = zz.AssessmentTitle and yy.Version = zz.Version 
) as nn
--order by StudentUSI,AssessmentTitle,
--AssessedGradeLevelDescriptorId,
--AcademicSubjectDescriptorId,
--Version
GO
/****** Object:  View [dbo].[v_EADM_FACT_StudentAssessmentPerformanceLevel]    Script Date: 12/9/2018 8:08:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO









CREATE view [dbo].[v_EADM_FACT_StudentAssessmentPerformanceLevel]
as
--Select
--a.AssessmentIdentifier as AssessmentKey,
--a.AssessmentTitle,
-- spl.*,des.CodeValue as PerformanceLevelCodeValue,des.Description as PerformanceLevelDescription,des.ShortDescription as PerformanceLevelShortDescription 
--,apl.MinimumScore,APL.MaximumScore
-- from [dbo].[v_EADM_StudentAssessment] sa
 
--join Edfi_Glendale_V25.edfi.[StudentAssessmentPerformanceLevel] spl on spl.StudentUSI = sa.StudentUSI 
--															 and spl.AssessmentIdentifier = sa.AssessmentIdentifier
--															 and spl.Namespace = sa.Namespace
--join Edfi_Glendale_V25.edfi.[PerformanceLevelDescriptor] pl on pl.PerformanceLevelDescriptorId = spl.PerformanceLevelDescriptorId
--join Edfi_Glendale_V25.edfi.AssessmentPerformanceLevel apl on apl.AssessmentIdentifier = spl.AssessmentIdentifier and apl.Namespace = spl.Namespace
--														and apl.PerformanceLevelDescriptorId = spl.PerformanceLevelDescriptorId
--join Edfi_Glendale_V25.edfi.Descriptor des on des.DescriptorId = pl.PerformanceLevelDescriptorId
--join dbo.EADM_Assessments ea on ea.AssessmentIdentifier = spl.AssessmentIdentifier and ea.Namespace = spl.Namespace and ea.includeinnce = 1
--join EdFi_Glendale_v25.edfi.Assessment a on a.AssessmentIdentifier = ea.AssessmentIdentifier and a.Namespace = ea.NameSpace

SELECT [AssessmentKey]
      ,[AssessmentTitle]
      ,[StudentUSI]
      ,[PerformanceLevelDescriptorId]
      ,[PerformanceLevelMet]
      ,[CreateDate]
      ,[AssessmentReportingMethodTypeId]
      ,[AssessmentIdentifier]
      ,[StudentAssessmentIdentifier]
      ,[Namespace]
      ,[PerformanceLevelCodeValue]
      ,[PerformanceLevelDescription]
      ,[PerformanceLevelShortDescription]
      ,[MinimumScore]
      ,[MaximumScore]
  FROM [dbo].[EADM_FACT_StudentAssessmentPerformanceLevel_Cache]
GO
/****** Object:  View [dbo].[v_EADM_FACT_AssessmentNumbersPivot_BuildCache]    Script Date: 12/9/2018 8:08:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO









/*
select *  from [dbo].[v_EADM_FACT_AssessmentNumbersPivot] p
left join (
	Select distinct studentUSI from [dbo].[v_EADM_FACT_DomainLevelScores] d with (nolock)
	where d.[AssessmentTitle] like 'IXL%'
) i on i.studentusi = p.studentusi
*/

CREATE view [dbo].[v_EADM_FACT_AssessmentNumbersPivot_BuildCache]
as
Select NCE.StudentUSI,FSAMO_2016_NCE,FSAMO_2016_SCALE,FSAMO_2017_NCE,FSAMO_2017_SCALE,StarMathAug2018_NCE,StarMathAug2018_SCALE,StarMathDec2018_NCE,StarMathDec2018_SCALE,
FSAMO_2016_NationalPercentile,FSAMO_2017_NationalPercentile,StarMathAug2018_NationalPercentile,StarMathDec2018_NationalPercentile,
FSAMO_2016_PerfLevelDescriptorId,des.Description as FSA_2016_PerformanceLevel,
FSAMO_2017_PerfLevelDescriptorId,des.Description as FSA_2017_PerformanceLevel,  
StarMathAug2018_PerfLevelDescriptorId , des2.Description as StarMathAug2018_PerformanceLevel,  
StarMathDec2018_PerfLevelDescriptorId, des3.Description as StarMathDec2018_PerformanceLevel,
	perfMin.FSAMO_2016_PerfMinScore,
	perfMin.FSAMO_2017_PerfMinScore,
	perfMin.StarMathAug2018_PerfMinScore ,
	perfMin.StarMathDec2018_PerfMinScore,
	perfMax.FSAMO_2016_PerfMaxScore,
	perfMax.FSAMO_2017_PerfMaxScore,
	perfMax.StarMathAug2018_PerfMaxScore ,
	perfMax.StarMathDec2018_PerfMaxScore,
case when ixl.StudentUSI is null then 'N' else 'Y' end as IXL

from
(
SELECT StudentUSI, sum([FSAMO3722016]) as FSAMO_2016_NCE, sum([FSAssessments-MATH-7]) as FSAMO_2017_NCE,sum([StarMathAug2018]) StarMathAug2018_NCE ,sum([StarMathDec2018]) StarMathDec2018_NCE
    from dbo.v_EADM_FACT_Assessment_NCE_BuildCache nce
    PIVOT(SUM(NCE) 
          --FOR AssessmentTitle  IN ([FSAMO],[StarMathAug2018],[StarMathDec2018])) AS PVTTable
		  FOR AssessmentKey  IN ([FSAssessments-MATH-7],[FSAMO3722016],[StarMathAug2018],[StarMathDec2018])) AS PVTTable
	group by studentusi
) NCE
left join
(
SELECT StudentUSI,sum([FSAMO3722016]) as FSAMO_2016_PerfLevelDescriptorId, sum([FSAssessments-MATH-7]) as FSAMO_2017_PerfLevelDescriptorId,sum([StarMathAug2018]) StarMathAug2018_PerfLevelDescriptorId ,sum([StarMathDec2018]) StarMathDec2018_PerfLevelDescriptorId
    from dbo.[v_EADM_FACT_StudentAssessmentPerformanceLevel] pl
    PIVOT(SUM(PerformanceLevelDescriptorId) 
          --FOR AssessmentTitle  IN ([FSAMO],[StarMathAug2018],[StarMathDec2018])) AS PVTTable
		  FOR AssessmentKey  IN ([FSAssessments-MATH-7],[FSAMO3722016],[StarMathAug2018],[StarMathDec2018])) AS PVTTable
	group by studentusi
) Perf on perf.StudentUSI = nce.StudentUSI
left join
(
SELECT 
	StudentUSI,
	cast(isnull(min([FSAMO3722016]),'0') as int) as FSAMO_2016_PerfMinScore,
	cast(isnull(min([FSAssessments-MATH-7]),'0') as int) as FSAMO_2017_PerfMinScore,
	cast(isnull(min([StarMathAug2018]),'0') as int) StarMathAug2018_PerfMinScore ,
	cast(isnull(min([StarMathDec2018]),'0') as int) StarMathDec2018_PerfMinScore
	
    from dbo.[v_EADM_FACT_StudentAssessmentPerformanceLevel_BuildCache] pl
    PIVOT(MIN(MinimumScore) 
          --FOR AssessmentTitle  IN ([FSAMO],[StarMathAug2018],[StarMathDec2018])) AS PVTTable
		  FOR AssessmentKey  IN ([FSAssessments-MATH-7],[FSAMO3722016],[StarMathAug2018],[StarMathDec2018])) AS PVTTable
	group by studentusi 
) perfmin on perfmin.StudentUSI = nce.StudentUSI
left join
(
SELECT 
	StudentUSI,
	cast(isnull(max([FSAMO3722016]),'0') as int) as FSAMO_2016_PerfMaxScore,
	cast(isnull(max([FSAssessments-MATH-7]),'0') as int) as FSAMO_2017_PerfMaxScore,
	cast(isnull(max([StarMathAug2018]),'0') as int) StarMathAug2018_PerfMaxScore ,
	cast(isnull(max([StarMathDec2018]),'0') as int) StarMathDec2018_PerfMaxScore
	
    from dbo.[v_EADM_FACT_StudentAssessmentPerformanceLevel_BuildCache] pl
    PIVOT(max(MaximumScore) 
          --FOR AssessmentTitle  IN ([FSAMO],[StarMathAug2018],[StarMathDec2018])) AS PVTTable
		  FOR AssessmentKey  IN ([FSAssessments-MATH-7],[FSAMO3722016],[StarMathAug2018],[StarMathDec2018])) AS PVTTable
	group by studentusi
) perfmax on perfmax.StudentUSI = nce.StudentUSI
left join 
(

 SELECT StudentUSI, sum([FSAMO3722016]) as FSAMO_2016_SCALE, sum([FSAssessments-MATH-7]) as FSAMO_2017_SCALE,sum([StarMathAug2018]) StarMathAug2018_SCALE ,sum([StarMathDec2018]) StarMathDec2018_SCALE
    from dbo.v_EADM_FACT_Assessment_NCE_BuildCache nce
    PIVOT(SUM(ScaleScore) 
          --FOR AssessmentTitle IN ([FSAMO],[StarMathAug2018],[StarMathDec2018])) AS PVTTable
		  FOR AssessmentKey  IN ([FSAssessments-MATH-7],[FSAMO3722016],[StarMathAug2018],[StarMathDec2018])) AS PVTTable
group by studentusi
) Scale on Scale.StudentUSI = NCE.StudentUSI
left join 
(

 SELECT StudentUSI, sum([FSAMO3722016]) as FSAMO_2016_NationalPercentile, sum([FSAssessments-MATH-7]) as FSAMO_2017_NationalPercentile,
					sum([StarMathAug2018]) StarMathAug2018_NationalPercentile ,sum([StarMathDec2018]) StarMathDec2018_NationalPercentile
    from dbo.v_EADM_FACT_Assessment_NCE_BuildCache nce
    PIVOT(SUM(NationalPercentile) 
          --FOR AssessmentTitle IN ([FSAMO],[StarMathAug2018],[StarMathDec2018])) AS PVTTable
		  FOR AssessmentKey  IN ([FSAssessments-MATH-7],[FSAMO3722016],[StarMathAug2018],[StarMathDec2018])) AS PVTTable
group by studentusi
) NationalPercentile on NationalPercentile.StudentUSI = NCE.StudentUSI
left join Edfi_Glendale_V25.edfi.[PerformanceLevelDescriptor] pl on pl.PerformanceLevelDescriptorId = Perf.FSAMO_2016_PerfLevelDescriptorId
left join Edfi_Glendale_V25.edfi.Descriptor des on des.DescriptorId = pl.PerformanceLevelDescriptorId

left join Edfi_Glendale_V25.edfi.[PerformanceLevelDescriptor] pl0 on pl0.PerformanceLevelDescriptorId = Perf.FSAMO_2017_PerfLevelDescriptorId
left join Edfi_Glendale_V25.edfi.Descriptor des0 on des0.DescriptorId = pl0.PerformanceLevelDescriptorId


left join Edfi_Glendale_V25.edfi.[PerformanceLevelDescriptor] pl2 on pl2.PerformanceLevelDescriptorId = Perf.StarMathAug2018_PerfLevelDescriptorId
left join Edfi_Glendale_V25.edfi.Descriptor des2 on des2.DescriptorId = pl2.PerformanceLevelDescriptorId

left join Edfi_Glendale_V25.edfi.[PerformanceLevelDescriptor] pl3 on pl3.PerformanceLevelDescriptorId = Perf.StarMathDec2018_PerfLevelDescriptorId
left join Edfi_Glendale_V25.edfi.Descriptor des3 on des3.DescriptorId = pl3.PerformanceLevelDescriptorId

Left Join (
Select distinct sa.StudentUSI from [dbo].[v_EADM_StudentAssessment_BuildCache] sa
join dbo.EADM_Assessments a with (nolock) on a.AssessmentIdentifier = sa.AssessmentIdentifier and a.Namespace = sa.Namespace
where a.AssessmentTitle like 'IXL%'
) ixl on ixl.studentusi = NCE.StudentUSI
		  

GO
/****** Object:  View [dbo].[v_EADM_DIM_Student]    Script Date: 12/9/2018 8:08:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO













CREATE view [dbo].[v_EADM_DIM_Student] as

--select distinct s.StudentUSI,s.FirstName,s.MiddleName,s.LastSurname
--,s.StudentUniqueId,s.BirthDate,st.CodeValue as GenderCode,st.Description as GenderDesc,
--case when  dt.Description is null then 'NonDisabled' else 'Disabled' end as DisabilityStatus
--,case when s.EconomicDisadvantaged = 1 then 'Y' Else 'N' end as EconomicDisadvantaged
--,gft.Gifted
--,ELL.ELL
--,d.CodeValue as GradeLevel
--,d.DescriptorId as GradeLevelDescriptorId
--,ss.EntryDate
--,edorg.EducationOrganizationId
--,edorg.NameOfInstitution
--,scat.SchoolCategoryTypeId,scat.Description 
--,s.HispanicLatinoEthnicity
-- from [dbo].[v_EADM_StudentAssessment] sa
--inner join Edfi_Glendale_V25.edfi.student s with (nolock) on sa.StudentUSI = s.StudentUSI
--inner join Edfi_Glendale_V25.edfi.SexType st with (nolock) on s.SexTypeId = st.SexTypeId
--inner join [dbo].[v_EADM_student_ELL] ell with (nolock) on ell.StudentUSI = sa.StudentUSI
--inner join [dbo].[v_EADM_student_gifted] gft with (nolock) on gft.StudentUSI = sa.StudentUSI
--inner join v_EADM_StudentSchoolYears sy on sy.studentUSI = sa.StudentUSI
---- the following join has an isnull(ss.SchoolYear,2012) to correct for the fact that the Glendale data has null values 
---- for the schoolyear in the StudentSchoolAssociation table
--inner join Edfi_Glendale_v25.edfi.StudentSchoolAssociation ss with (nolock) on ss.StudentUSI = sy.StudentUSI and isnull(ss.SchoolYear,2012) = sy.SchoolYear and ss.ExitWithdrawDate is null
--inner join Edfi_Glendale_V25.edfi.EducationOrganization edorg with (nolock) on edorg.EducationOrganizationId = ss.SchoolId
--inner join Edfi_Glendale_V25.edfi.Descriptor d with (nolock) on d.DescriptorId = ss.EntryGradeLevelDescriptorId and d.namespace like '%gradelevel%'
--inner join Edfi_Glendale_V25.edfi.School sch on sch.SchoolId = edorg.EducationOrganizationId
--inner join Edfi_Glendale_V25.edfi.LocalEducationAgency lea on lea.LocalEducationAgencyId = sch.LocalEducationAgencyId
--inner join (select SchoolId, min(sca.SchoolCategoryTypeId) AS SchoolCategoryTypeId from Edfi_Glendale_V25.[edfi].[SchoolCategory] sca
--group by SchoolId) sca on sch.SchoolId = sca.SchoolId
----inner join Edfi_Glendale_V25.[edfi].[SchoolCategory] sca on sch.SchoolId = sca.SchoolId
--inner join Edfi_Glendale_V25.[edfi].[SchoolCategoryType] scat on sca.SchoolCategoryTypeId = scat.SchoolCategoryTypeId
--left join Edfi_Glendale_V25.edfi.StudentDisability sd with (nolock) on sd.StudentUSI = s.StudentUSI
--left join Edfi_Glendale_V25.edfi.DisabilityDescriptor dispd with (nolock) on dispd.DisabilityDescriptorId = sd.DisabilityDescriptorId
--left join Edfi_Glendale_V25.[edfi].[DisabilityType] dt with (nolock) on dt.DisabilityTypeId = dispd.DisabilityTypeId

SELECT [StudentUSI]
      ,[FirstName]
      ,[MiddleName]
      ,[LastSurname]
      ,[StudentUniqueId]
      ,[BirthDate]
      ,[GenderCode]
      ,[GenderDesc]
      ,[DisabilityStatus]
      ,[EconomicDisadvantaged]
      ,[Gifted]
      ,[ELL]
      ,[GradeLevel]
      ,[GradeLevelDescriptorId]
      ,[EntryDate]
      ,[EducationOrganizationId]
      ,[NameOfInstitution]
      ,[SchoolCategoryTypeId]
      ,[Description]
      ,[HispanicLatinoEthnicity]
  FROM [dbo].[EADM_DIM_Student_Cache]



GO
/****** Object:  View [dbo].[v_EADM_DIM_StudentChronicAbsence_BuildCache]    Script Date: 12/9/2018 8:08:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE view [dbo].[v_EADM_DIM_StudentChronicAbsence_BuildCache]
as
SELECT  ssae.[StudentUSI]
      ,aet.AttendanceEventCategoryTypeId
      ,[SchoolId]
      ,[SchoolYear]
	  ,aet.CodeValue
	  ,aet.Description
	  ,aet.ShortDescription
	  ,count(*) TotalAbs
  FROM Edfi_Glendale_V25.[edfi].[StudentSchoolAttendanceEvent] ssae with (nolock)
  join [dbo].[v_EADM_DIM_Student_BuildCache] stu with (nolock) on stu.StudentUSI = ssae.StudentUSI
  join  Edfi_Glendale_V25.[edfi].[AttendanceEventCategoryDescriptor] aecd with (nolock)  on aecd.AttendanceEventCategoryDescriptorId = ssae.AttendanceEventCategoryDescriptorId
  join Edfi_Glendale_V25.[edfi].[AttendanceEventCategoryType] aet with (nolock) on aet.AttendanceEventCategoryTypeId = aecd.AttendanceEventCategoryTypeId
  Where CodeValue in ('Unexcused Absence', 'Excused Absence')
  group by 
		ssae.[StudentUSI]
      ,aet.AttendanceEventCategoryTypeId    
      ,[SchoolId]
      ,[SchoolYear]
	  ,aet.CodeValue
	  ,aet.Description
	  ,aet.ShortDescription
	  having count(*) > 20
GO
/****** Object:  View [dbo].[v_EADM_DIM_StudentRace_BuildCache]    Script Date: 12/9/2018 8:08:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE view [dbo].[v_EADM_DIM_StudentRace_BuildCache]
as
Select s.StudentUSI,sr.RaceTypeId,rt.CodeValue,rt.Description,rt.ShortDescription from dbo.v_EADM_DIM_Student s
join Edfi_Glendale_V25.edfi.StudentRace sr with (nolock) on sr.StudentUSI = s.StudentUSI
join Edfi_Glendale_V25.edfi.RaceType rt with (nolock) on rt.RaceTypeId = sr.RaceTypeId

--group by s.StudentUSI
--having count(*) > 1

GO
/****** Object:  View [dbo].[v_EADM_SummaryView_BuildCache]    Script Date: 12/9/2018 8:08:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





/*
 select * from [dbo].[v_EADM_SummaryView]
*/

CREATE VIEW [dbo].[v_EADM_SummaryView_BuildCache]
AS
SELECT        race.race, ISNULL(ab.TotalAbs, 0) AS Absences, n.StarMathAug2018_NCE, n.StarMathAug2018_SCALE, n.StarMathDec2018_NCE, n.StarMathDec2018_SCALE, 
                         s.StudentUSI, s.FirstName, s.MiddleName, s.LastSurname, s.StudentUniqueId, s.BirthDate, s.GenderCode, s.GenderDesc, s.DisabilityStatus, 
                         s.EconomicDisadvantaged, s.Gifted, s.ELL, s.GradeLevel, s.GradeLevelDescriptorId, s.EntryDate, s.EducationOrganizationId, s.NameOfInstitution, 
                         --dbo.v_EADM_FACT_DomainLevelScores.AssessmentTitle, dbo.v_EADM_FACT_DomainLevelScores.Version, 
                         --dbo.v_EADM_FACT_DomainLevelScores.IdentificationCode, dbo.v_EADM_FACT_DomainLevelScores.description, 
                         --dbo.v_EADM_FACT_DomainLevelScores.AdministrationDate, dbo.v_EADM_FACT_DomainLevelScores.RawScore, 
                         --dbo.v_EADM_FACT_DomainLevelScores.MaxRawScore, dbo.v_EADM_FACT_DomainLevelScores.PercentCorrect, 
						 n.FSAMO_2017_SCALE, n.FSAMO_2017_NCE, 
                         n.FSAMO_2016_SCALE, n.FSAMO_2016_NCE, n.FSAMO_2016_PerfLevelDescriptorId, n.FSA_2016_PerformanceLevel, n.FSAMO_2017_PerfLevelDescriptorId, 
                         n.FSA_2017_PerformanceLevel, n.StarMathAug2018_PerfLevelDescriptorId, n.StarMathAug2018_PerformanceLevel, n.StarMathDec2018_PerfLevelDescriptorId, 
                         n.StarMathDec2018_PerformanceLevel, s.HispanicLatinoEthnicity,
						 n.[FSAMO_2016_NationalPercentile], n.[FSAMO_2017_NationalPercentile], n.[StarMathAug2018_NationalPercentile], n.[StarMathDec2018_NationalPercentile],
						 n.IXL,
						 n.[FSAMO_2016_PerfMinScore], n.[FSAMO_2017_PerfMinScore], n.[StarMathAug2018_PerfMinScore], n.[StarMathDec2018_PerfMinScore],
						 n.[FSAMO_2016_PerfMaxScore], n.[FSAMO_2017_PerfMaxScore], n.[StarMathAug2018_PerfMaxScore], n.[StarMathDec2018_PerfMaxScore]

FROM            dbo.v_EADM_FACT_AssessmentNumbersPivot_BuildCache AS n 
INNER JOIN      dbo.v_EADM_DIM_Student AS s ON n.StudentUSI = s.StudentUSI 
--INNER JOIN      dbo.v_EADM_FACT_DomainLevelScores ON s.StudentUSI = dbo.v_EADM_FACT_DomainLevelScores.StudentUSI 
LEFT OUTER JOIN dbo.v_EADM_DIM_StudentChronicAbsence_BuildCache AS ab ON ab.StudentUSI = n.StudentUSI 
LEFT OUTER JOIN 
(SELECT        StudentUSI, CASE WHEN COUNT(RaceTypeId) > 1 THEN 'Two or More' ELSE MIN(Description) END AS race
                               FROM            dbo.v_EADM_DIM_StudentRace_BuildCache
                               GROUP BY StudentUSI) 
AS race ON s.StudentUSI = race.StudentUSI



--Select [race], [Absences], [StarMathAug2018_NCE], [StarMathAug2018_SCALE], [StarMathDec2018_NCE], [StarMathDec2018_SCALE], [StudentUSI], [FirstName], [MiddleName], [LastSurname], [StudentUniqueId], [BirthDate], [GenderCode], [GenderDesc], [DisabilityStatus], [EconomicDisadvantaged], [Gifted], [ELL], [GradeLevel], [GradeLevelDescriptorId], [EntryDate], [EducationOrganizationId], [NameOfInstitution], [FSAMO_2017_SCALE], [FSAMO_2017_NCE], [FSAMO_2016_SCALE], [FSAMO_2016_NCE], [FSAMO_2016_PerfLevelDescriptorId], [FSA_2016_PerformanceLevel], [FSAMO_2017_PerfLevelDescriptorId], [FSA_2017_PerformanceLevel], [StarMathAug2018_PerfLevelDescriptorId], [StarMathAug2018_PerformanceLevel], [StarMathDec2018_PerfLevelDescriptorId], [StarMathDec2018_PerformanceLevel], [HispanicLatinoEthnicity], [FSAMO_2016_NationalPercentile], [FSAMO_2017_NationalPercentile], [StarMathAug2018_NationalPercentile], [StarMathDec2018_NationalPercentile], [IXL], [FSAMO_2016_PerfMinScore], [FSAMO_2017_PerfMinScore], [StarMathAug2018_PerfMinScore], [StarMathDec2018_PerfMinScore], [FSAMO_2016_PerfMaxScore], [FSAMO_2017_PerfMaxScore], [StarMathAug2018_PerfMaxScore], [StarMathDec2018_PerfMaxScore]
--from [dbo].[EADM_SummaryView_Cache]
GO
/****** Object:  View [dbo].[v_EADM_student_ELL_BuildCache]    Script Date: 12/9/2018 8:08:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE view [dbo].[v_EADM_student_ELL_BuildCache] as

select distinct sa.StudentUSI, case when s.begindate is null then 'N' else 'Y' end as ELL

 from [dbo].[v_EADM_StudentAssessment_BuildCache] sa
left join 
(
Select 
spa.StudentUSI
,max(spa.BeginDate) as BeginDate
--,spa.*
from EdFi_Glendale_v25.[edfi].[StudentProgramAssociation] SPA
where ProgramName = 'English as a Second Language (ESL)' and spa.EndDate is null
group by SPA.StudentUSI
) s
on sa.StudentUSI = s.StudentUSI

--select * from edfi.Descriptor where description like 'dis%'
GO
/****** Object:  View [dbo].[v_EADM_student_gifted_BuildCache]    Script Date: 12/9/2018 8:08:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






CREATE view [dbo].[v_EADM_student_gifted_BuildCache] as

select distinct sa.StudentUSI, case when s.begindate is null then 'N' else 'Y' end as gifted

 from [dbo].[v_EADM_StudentAssessment_BuildCache]  sa
left join 
(
Select 
spa.StudentUSI
,max(spa.BeginDate) as BeginDate
from EdFi_Glendale_v25.[edfi].[StudentProgramAssociation] SPA
where ProgramName = 'Gifted and Talented' and spa.EndDate is null
group by SPA.StudentUSI
) s
on sa.StudentUSI = s.StudentUSI




--select * from edfi.Descriptor where description like 'dis%'
GO
/****** Object:  View [dbo].[v_EADM_FACT_DomainLevelScores_BuildCache]    Script Date: 12/9/2018 8:08:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



/*
Select * from [dbo].[v_EADM_FACT_DomainLevelScores]
*/

CREATE view [dbo].[v_EADM_FACT_DomainLevelScores_BuildCache]
as
-- Parent rows (Domain level)
select 
sasoa.StudentUSI, a.AssessmentTitle, a.Version,sasoa.IdentificationCode
,oa.description,null as AdministrationDate
,cast(res.Result as int) as RawScore
,oa.MaxRawScore
,(cast(res.Result as float) / cast(oa.MaxRawScore as float) * 100) as PercentCorrect
, race.race, ISNULL(ab.TotalAbs, 0) AS Absences,  
                         s.FirstName, s.MiddleName, s.LastSurname, s.StudentUniqueId, s.BirthDate, s.GenderCode, s.GenderDesc, s.DisabilityStatus, 
                         s.EconomicDisadvantaged, s.Gifted, s.ELL, s.GradeLevel, s.GradeLevelDescriptorId, s.EntryDate, s.EducationOrganizationId, s.NameOfInstitution

from
dbo.EADM_Assessments ea with (nolock)
join EdFi_Glendale_v25.edfi.Assessment a on ea.AssessmentIdentifier =  a.AssessmentIdentifier and a.Namespace = ea.Namespace 
join Edfi_Glendale_V25.edfi.StudentAssessmentStudentObjectiveAssessment SASOA with (nolock) on a.AssessmentIdentifier = sasoa.AssessmentIdentifier
join [dbo].[v_EADM_DIM_Student_BuildCache] s on s.StudentUSI = SASOA.StudentUSI
LEFT OUTER JOIN dbo.v_EADM_DIM_StudentChronicAbsence_BuildCache AS ab ON ab.StudentUSI = s.StudentUSI 
LEFT OUTER JOIN 
(SELECT        StudentUSI, CASE WHEN COUNT(RaceTypeId) > 1 THEN 'Two or More' ELSE MIN(Description) END AS race
                               FROM            dbo.v_EADM_DIM_StudentRace_BuildCache
                               GROUP BY StudentUSI) 
AS race ON s.StudentUSI = race.StudentUSI
inner join Edfi_Glendale_V25.edfi.ObjectiveAssessment OA  with (nolock)
on SASOA.AssessmentIdentifier = OA.AssessmentIdentifier and SASOA.Namespace = oa.Namespace and SASOA.IdentificationCode = OA.IdentificationCode
left join Edfi_Glendale_V25.edfi.StudentAssessmentStudentObjectiveAssessmentScoreResult res with (nolock) on res.StudentUSI = sasoa.StudentUSI and
res.AssessmentIdentifier = sasoa.AssessmentIdentifier
and res.IdentificationCode = sasoa.IdentificationCode
and res.Namespace = sasoa.Namespace
  left join Edfi_Glendale_V25.edfi.AssessmentReportingMethodType rmt with (nolock) on rmt.AssessmentReportingMethodTypeId = res.AssessmentReportingMethodTypeId
  left join Edfi_Glendale_V25.edfi.AssessmentItemResultType rt with (nolock) on rt.AssessmentItemResultTypeId = res.ResultDatatypeTypeId
where 
 OA.ParentIdentificationCode is null --<===== not null ParentIdentificationCode
 and rmt.CodeValue = 'Raw score'
 --and oa.AssessmentTitle = 'StarMathAug2018'
--order by 1 
GO


CREATE view [dbo].[v_EADM_DIM_GradeLevel] 
as
select [GradeLevelDescriptorId], [GradeLevel] from [dbo].[EADM_DIM_GradeLevel_Cache]
GO
/****** Object:  View [dbo].[v_EADM_DIM_Schools]    Script Date: 12/9/2018 8:08:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE view [dbo].[v_EADM_DIM_Schools]
as
--select distinct stu.EducationOrganizationId,stu.NameOfInstitution, 
--scat.SchoolCategoryTypeId,scat.Description 
--from [dbo].[v_EADM_DIM_Student] stu
--join Edfi_Glendale_V25.edfi.School sch on sch.SchoolId = stu.EducationOrganizationId
--join Edfi_Glendale_V25.edfi.LocalEducationAgency lea on lea.LocalEducationAgencyId = sch.LocalEducationAgencyId
--join Edfi_Glendale_V25.edfi.EducationOrganization edorg on edorg.EducationOrganizationId = sch.SchoolId
--join Edfi_Glendale_V25.[edfi].[SchoolCategory] sca on sch.SchoolId = sca.SchoolId
--join Edfi_Glendale_V25.[edfi].[SchoolCategoryType] scat on sca.SchoolCategoryTypeId = scat.SchoolCategoryTypeId

select [EducationOrganizationId], [NameOfInstitution], [SchoolCategoryTypeId], [Description] from [dbo].[EADM_DIM_Schools_Cache]


GO
/****** Object:  View [dbo].[v_EADM_DIM_StudentChronicAbsence]    Script Date: 12/9/2018 8:08:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE view [dbo].[v_EADM_DIM_StudentChronicAbsence]
as
--SELECT  ssae.[StudentUSI]
--      ,aet.AttendanceEventCategoryTypeId
--      ,[SchoolId]
--      ,[SchoolYear]
--	  ,aet.CodeValue
--	  ,aet.Description
--	  ,aet.ShortDescription
--	  ,count(*) TotalAbs
--  FROM Edfi_Glendale_V25.[edfi].[StudentSchoolAttendanceEvent] ssae with (nolock)
--  join [dbo].[v_EADM_DIM_Student] stu with (nolock) on stu.StudentUSI = ssae.StudentUSI
--  join  Edfi_Glendale_V25.[edfi].[AttendanceEventCategoryDescriptor] aecd with (nolock)  on aecd.AttendanceEventCategoryDescriptorId = ssae.AttendanceEventCategoryDescriptorId
--  join Edfi_Glendale_V25.[edfi].[AttendanceEventCategoryType] aet with (nolock) on aet.AttendanceEventCategoryTypeId = aecd.AttendanceEventCategoryTypeId
--  Where CodeValue in ('Unexcused Absence', 'Excused Absence')
--  group by 
--		ssae.[StudentUSI]
--      ,aet.AttendanceEventCategoryTypeId    
--      ,[SchoolId]
--      ,[SchoolYear]
--	  ,aet.CodeValue
--	  ,aet.Description
--	  ,aet.ShortDescription
--	  having count(*) > 20
SELECT [StudentUSI]
      ,[AttendanceEventCategoryTypeId]
      ,[SchoolId]
      ,[SchoolYear]
      ,[CodeValue]
      ,[Description]
      ,[ShortDescription]
      ,[TotalAbs]
  FROM [dbo].[EADM_DIM_StudentChronicAbsence_Cache]
GO
/****** Object:  View [dbo].[v_EADM_DIM_StudentRace]    Script Date: 12/9/2018 8:08:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE view [dbo].[v_EADM_DIM_StudentRace]
as
--Select s.StudentUSI,sr.RaceTypeId,rt.CodeValue,rt.Description,rt.ShortDescription from dbo.v_EADM_DIM_Student s
--join Edfi_Glendale_V25.edfi.StudentRace sr with (nolock) on sr.StudentUSI = s.StudentUSI
--join Edfi_Glendale_V25.edfi.RaceType rt with (nolock) on rt.RaceTypeId = sr.RaceTypeId

SELECT [StudentUSI]
      ,[RaceTypeId]
      ,[CodeValue]
      ,[Description]
      ,[ShortDescription]
  FROM [dbo].[EADM_DIM_StudentRace_Cache]
GO
/****** Object:  View [dbo].[v_EADM_DIM_StudentSpecialEd]    Script Date: 12/9/2018 8:08:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE view [dbo].[v_EADM_DIM_StudentSpecialEd]
as
--SELECT distinct sdesc.CodeValue,sdesc.ShortDescription,
--spa.[StudentUSI], spa.[EducationOrganizationId], spa.[ProgramTypeId], spa.[ProgramName], spa.[ProgramEducationOrganizationId],
--spa.[BeginDate], spas.[ServiceDescriptorId], spas.[PrimaryIndicator], spas.[ServiceBeginDate], spas.[ServiceEndDate],
--spa.[CreateDate]
--FROM [Edfi_Glendale].[edfi].[StudentProgramAssociation] spa
--left join Edfi_Glendale.[edfi].[StudentProgramAssociationService] spas on spas.StudentUSI = spa.StudentUSI
--and  spas.[EducationOrganizationId] = spa.[EducationOrganizationId]
--and  spas.[ProgramTypeId] = spa.[ProgramTypeId]
--and  spas.[ProgramName] = spa.[ProgramName]
--and  spas.[ProgramEducationOrganizationId] = spa.[ProgramEducationOrganizationId]
--and  spas.[BeginDate] = spa.BeginDate
--left join Edfi_Glendale.edfi.Descriptor sdesc on spas.ServiceDescriptorId = sdesc.DescriptorId 
--inner join [dbo].[v_EADM_StudentAssessment] sa on sa.StudentUSI = spa.StudentUSI
--where spa.ProgramName = 'Special Education'

SELECT [CodeValue]
      ,[ShortDescription]
      ,[StudentUSI]
      ,[EducationOrganizationId]
      ,[ProgramTypeId]
      ,[ProgramName]
      ,[ProgramEducationOrganizationId]
      ,[BeginDate]
      ,[ServiceDescriptorId]
      ,[PrimaryIndicator]
      ,[ServiceBeginDate]
      ,[ServiceEndDate]
      ,[CreateDate]
  FROM [dbo].[EADM_DIM_StudentSpecialEd_Cache]
GO
/****** Object:  View [dbo].[v_EADM_DIM_StudentStaff]    Script Date: 12/9/2018 8:08:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO










CREATE view [dbo].[v_EADM_DIM_StudentStaff]
as

--SELECT distinct edorg.EducationOrganizationId,edorg.NameOfInstitution,seoaa.StaffUSI,sdes.CodeValue as PositionTitle
--,stu.StudentUSI
--,ElectronicMailAddress
--  FROM 
--   -- Edfi_Glendale_V25.edfi.Student stu
--   dbo.v_EADM_DIM_Student stu
--   inner join 
--(
--	Select ssa.studentusi, ssa.schoolyear from Edfi_Glendale_V25.edfi.StudentSectionAssociation ssa
--	group by ssa.StudentUSI,ssa.SchoolYear
--) sy on sy.StudentUSI = stu.StudentUSI
--inner join Edfi_Glendale_V25.edfi.StudentSchoolAssociation ss with (nolock) on ss.StudentUSI = sy.StudentUSI and isnull(ss.SchoolYear,2012) = sy.SchoolYear and ss.ExitWithdrawDate is null
--inner join Edfi_Glendale_V25.edfi.EducationOrganization edorg with (nolock) on edorg.EducationOrganizationId = ss.SchoolId
--inner join Edfi_Glendale_V25.edfi.Descriptor d with (nolock) on d.DescriptorId = ss.EntryGradeLevelDescriptorId and d.namespace like '%gradelevel%'
--inner join Edfi_Glendale_V25.edfi.School sch on sch.SchoolId = edorg.EducationOrganizationId
--inner join Edfi_Glendale_V25.edfi.LocalEducationAgency lea on lea.LocalEducationAgencyId = sch.LocalEducationAgencyId
--inner join Edfi_Glendale_V25.[edfi].[SchoolCategory] sca on sch.SchoolId = sca.SchoolId
--inner join Edfi_Glendale_V25.[edfi].[SchoolCategoryType] scat on sca.SchoolCategoryTypeId = scat.SchoolCategoryTypeId
---- use the length of the educationOrgainizationId from StaffEducationOrganizationAssignmentAssociation to match schoolid so that we get all the schools/students
---- from the district that the Superintendent or Assistant Superintendent has access too
--inner join Edfi_Glendale_V25.edfi.StaffEducationOrganizationAssignmentAssociation seoaa on left(ss.SchoolId,len(seoaa.EducationOrganizationId)) = seoaa.EducationOrganizationId
--inner join Edfi_Glendale_V25.edfi.Descriptor sdes on seoaa.StaffClassificationDescriptorId = sdes.DescriptorId
--inner join Edfi_Glendale_V25.edfi.StaffEducationOrganizationEmploymentAssociation seoea on seoaa.StaffUSI = seoea.StaffUSI
--inner join Edfi_Glendale_V25.edfi.Staff staff on seoea.StaffUSI = staff.staffUSI 
--inner join Edfi_Glendale_V25.edfi.StaffElectronicMail mail on staff.StaffUSI = mail.StaffUSI 
--  where 
--  seoea.EndDate is null -- still employed
--  and 
--    (d.CodeValue like  '%Superindendent%'  or PositionTitle like '%superintendent%')
--  and seoaa.BeginDate < getdate() 
--  and seoaa.EndDate is null
--  and seoea.HireDate < GETDATE()
--  and seoea.EndDate is null
--union
--SELECT distinct edorg.EducationOrganizationId,edorg.NameOfInstitution,seoaa.StaffUSI,sdes.CodeValue as PositionTitle
--,stu.StudentUSI
--,ElectronicMailAddress
--  FROM 
--   [dbo].[v_EADM_DIM_Student] stu
--   --Edfi_Glendale_V25.edfi.Student stu
--inner join 
--(
--	Select ssa.studentusi, ssa.schoolyear from Edfi_Glendale_V25.edfi.StudentSectionAssociation ssa
--	group by ssa.StudentUSI,ssa.SchoolYear
--) sy on sy.StudentUSI = stu.StudentUSI
--inner join Edfi_Glendale_V25.edfi.StudentSchoolAssociation ss with (nolock) on ss.StudentUSI = sy.StudentUSI and isnull(ss.SchoolYear,2012) = sy.SchoolYear and ss.ExitWithdrawDate is null
--inner join Edfi_Glendale_V25.edfi.EducationOrganization edorg with (nolock) on edorg.EducationOrganizationId = ss.SchoolId
--inner join Edfi_Glendale_V25.edfi.Descriptor d with (nolock) on d.DescriptorId = ss.EntryGradeLevelDescriptorId and d.namespace like '%gradelevel%'
--inner join Edfi_Glendale_V25.edfi.School sch on sch.SchoolId = edorg.EducationOrganizationId
--inner join Edfi_Glendale_V25.edfi.LocalEducationAgency lea on lea.LocalEducationAgencyId = sch.LocalEducationAgencyId
--inner join Edfi_Glendale_V25.[edfi].[SchoolCategory] sca on sch.SchoolId = sca.SchoolId
--inner join Edfi_Glendale_V25.[edfi].[SchoolCategoryType] scat on sca.SchoolCategoryTypeId = scat.SchoolCategoryTypeId
--inner join Edfi_Glendale_V25.edfi.StaffEducationOrganizationAssignmentAssociation seoaa on ss.SchoolId = seoaa.EducationOrganizationId
--inner join Edfi_Glendale_V25.edfi.Descriptor sdes on seoaa.StaffClassificationDescriptorId = sdes.DescriptorId
--inner join Edfi_Glendale_V25.edfi.StaffEducationOrganizationEmploymentAssociation seoea on seoaa.StaffUSI = seoea.StaffUSI
--inner join Edfi_Glendale_V25.edfi.Staff staff on seoea.StaffUSI = staff.staffUSI 
--inner join Edfi_Glendale_V25.edfi.StaffElectronicMail mail on staff.StaffUSI = mail.StaffUSI 
--  where 
--  seoea.EndDate is null -- still employed
--  and 
--  sdes.CodeValue in ('assistant principal','principal') 
--union
--select distinct
--yy.EducationOrganizationId,yy.NameOfInstitution,yy.StaffUSI,yy.PositionTitle
--,yy.StudentUSI
--,yy.ElectronicMailAddress

--from (
--SELECT distinct  mail.ElectronicMailAddress,SEOaA.PositionTitle,s.FirstName as Teacher_FirstName
--,s.MiddleName as Teacher_MiddleName
--,s.LastSurname as Teacher_LastName
--,t1.ClassPeriodName,t1.ClassroomIdentificationCode,t1.StaffUSI,t1.SchoolId
--,t2.CodeValue as Termid
--,ssa.LocalCourseCode,ssa.StudentUSI
--,edorg.EducationOrganizationId
--,edorg.NameOfInstitution
--FROM Edfi_Glendale_V25.edfi.staffsectionassociation t1
--inner join Edfi_Glendale_V25.edfi.Descriptor t2
--on t1.TermDescriptorId = t2.DescriptorId
--inner join Edfi_Glendale_V25.edfi.StudentSectionAssociation ssa
--on t1.ClassroomIdentificationCode = ssa.ClassroomIdentificationCode
--and t1.ClassPeriodName = ssa.ClassPeriodName
--and t1.TermDescriptorId = ssa.TermDescriptorId
--and t1.UniqueSectionCode = ssa.UniqueSectionCode
--join Edfi_Glendale_V25.edfi.EducationOrganization edorg on t1.SchoolId = edorg.EducationOrganizationId
--inner join Edfi_Glendale_V25.edfi.StudentSchoolAssociation stusa
--on ssa.studentusi = stusa.StudentUSI
--inner join dbo.v_EADM_DIM_Student stu on stu.StudentUSI = ssa.StudentUSI
--inner join Edfi_Glendale_V25.edfi.Course c
--on t1.LocalCourseCode = c.CourseCode
--and t1.SchoolId = c.EducationOrganizationId
--inner join Edfi_Glendale_V25.edfi.Staff s
--on t1.StaffUSI = s.StaffUSI
--inner join Edfi_Glendale_V25.edfi.StaffElectronicMail mail
--on s.StaffUSI = mail.StaffUSI
--inner join Edfi_Glendale_V25.edfi.StaffEducationOrganizationAssignmentAssociation SEOAA
--on s.StaffUSI = SEOAA.StaffUSI
--where 
--ssa.EndDate >= t1.EndDate
--and stusa.EntryGradeLevelDescriptorId = (select d.DescriptorId from Edfi_Glendale_V25.edfi.Descriptor d where d.codevalue = 'eighth grade' and d.namespace like '%gradelevel%') 
---- just eighth graders
--and c.AcademicSubjectDescriptorId = (select d1.descriptorid from Edfi_Glendale_V25.edfi.descriptor d1 where d1.codevalue like '%math%' and d1.Namespace like '%academ%')

---- just math
--) as yy

SELECT [EducationOrganizationId]
      ,[NameOfInstitution]
      ,[StaffUSI]
      ,[PositionTitle]
      ,[StudentUSI]
      ,[ElectronicMailAddress]
  FROM [dbo].[EADM_DIM_StudentStaff_Cache]
GO
/****** Object:  View [dbo].[v_EADM_DIM_Subject]    Script Date: 12/9/2018 8:08:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






CREATE view [dbo].[v_EADM_DIM_Subject]
as
--Select distinct st.AcademicSubjectTypeId,sdes.AcademicSubjectDescriptorId,CodeValue as Subject,Description,ShortDescription  
--from [dbo].[v_EADM_StudentAssessment] sa with (nolock)
--join EdFi_Glendale_v25.edfi.Assessment a on a.AssessmentIdentifier = sa.AssessmentIdentifier and a.Namespace = sa.Namespace
--join EdFi_Glendale_v25.edfi.AssessmentAcademicSubject sub on a.AssessmentIdentifier = sub.AssessmentIdentifier
--join EdFi_Glendale_v25.edfi.AcademicSubjectDescriptor sdes with (nolock) on sdes.AcademicSubjectDescriptorId = sub.[AcademicSubjectDescriptorId]
--join edfi_glendale_v25.edfi.AcademicSubjectType st with (nolock) on st.AcademicSubjectTypeId = sdes.AcademicSubjectTypeId

SELECT [AcademicSubjectTypeId]
      ,[AcademicSubjectDescriptorId]
      ,[Subject]
      ,[Description]
      ,[ShortDescription]
  FROM [dbo].[EADM_DIM_Subject_Cache]
GO
/****** Object:  View [dbo].[v_EADM_DIM_UserSecurity]    Script Date: 12/9/2018 8:08:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE view [dbo].[v_EADM_DIM_UserSecurity]
as


--select ss.*,pbi.PowerBiEmailAddress from dbo.[v_EADM_DIM_StudentStaff] ss
--join 
----(
--	--select PositionTitle, DistrictEmailAddress from 
--	dbo.PowerBiIdMapping pbi --where [PowerBiEmailAddress] = @PowerBiEmailAddress

----)
-- --pbi
--  on pbi.DistrictEmailAddress = ss.ElectronicMailAddress


SELECT [EducationOrganizationId]
      ,[NameOfInstitution]
      ,[StaffUSI]
      ,[PositionTitle]
      ,[StudentUSI]
      ,[ElectronicMailAddress]
      ,[PowerBiEmailAddress]
  FROM [dbo].[EADM_DIM_UserSecurity_Cache]
GO
/****** Object:  View [dbo].[v_EADM_FACT_Assessment_NCE]    Script Date: 12/9/2018 8:08:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO













-- select * from [dbo].[v_EADM_FACT_Assessment_NCE] where AssessmentTitle like 'IXL%'

CREATE view [dbo].[v_EADM_FACT_Assessment_NCE]
as
----
---- I case the percentile rank 0 to be 1
---- I case the percentil rank 100 to be 99
----
--select 
--AssessmentIdentifier as AssessmentKey,
--AssessmentTitle, [Version], [StudentUSI], [ScaleScore], [NationalPercentile], [RawPercentRank], [LocalPercentile], 

--case
--when LocalPercentile =  	1	then	1.0
--when LocalPercentile =  	2	then	6.7
--when LocalPercentile =  	3	then	10.4
--when LocalPercentile =  	4	then	13.1
--when LocalPercentile =  	5	then	15.4
--when LocalPercentile =  	6	then	17.3
--when LocalPercentile =  	7	then	18.9
--when LocalPercentile =  	8	then	20.4
--when LocalPercentile =  	9	then	21.8
--when LocalPercentile =  	10	then	23.0
--when LocalPercentile =  	11	then	24.2
--when LocalPercentile =  	12	then	25.3
--when LocalPercentile =  	13	then	26.3
--when LocalPercentile =  	14	then	27.2
--when LocalPercentile =  	15	then	28.2
--when LocalPercentile =  	16	then	29.1
--when LocalPercentile =  	17	then	29.9
--when LocalPercentile =  	18	then	30.7
--when LocalPercentile =  	19	then	31.5
--when LocalPercentile =  	20	then	32.3
--when LocalPercentile =  	21	then	33.0
--when LocalPercentile =  	22	then	33.7
--when LocalPercentile =  	23	then	34.4
--when LocalPercentile =  	24	then	35.1
--when LocalPercentile =  	25	then	35.8
--when LocalPercentile =  	26	then	36.5
--when LocalPercentile =  	27	then	37.1
--when LocalPercentile =  	28	then	37.7
--when LocalPercentile =  	29	then	38.3
--when LocalPercentile =  	30	then	39.0
--when LocalPercentile =  	31	then	39.6
--when LocalPercentile =  	32	then	40.2
--when LocalPercentile =  	33	then	40.7
--when LocalPercentile =  	34	then	41.3
--when LocalPercentile =  	35	then	41.9
--when LocalPercentile =  	36	then	42.5
--when LocalPercentile =  	37	then	43.0
--when LocalPercentile =  	38	then	43.6
--when LocalPercentile =  	39	then	44.1
--when LocalPercentile =  	40	then	44.7
--when LocalPercentile =  	41	then	45.2
--when LocalPercentile =  	42	then	45.7
--when LocalPercentile =  	43	then	46.3
--when LocalPercentile =  	44	then	46.8
--when LocalPercentile =  	45	then	47.4
--when LocalPercentile =  	46	then	47.9
--when LocalPercentile =  	47	then	48.4
--when LocalPercentile =  	48	then	48.9
--when LocalPercentile =  	49	then	49.5
--when LocalPercentile =  	50	then	50.0
--when LocalPercentile =  	51	then	50.5
--when LocalPercentile =  	52	then	51.1
--when LocalPercentile =  	53	then	51.6
--when LocalPercentile =  	54	then	52.1
--when LocalPercentile =  	55	then	52.6
--when LocalPercentile =  	56	then	53.2
--when LocalPercentile =  	57	then	53.7
--when LocalPercentile =  	58	then	54.3
--when LocalPercentile =  	59	then	54.8
--when LocalPercentile =  	60	then	55.3
--when LocalPercentile =  	61	then	55.9
--when LocalPercentile =  	62	then	56.4
--when LocalPercentile =  	63	then	57.0
--when LocalPercentile =  	64	then	57.5
--when LocalPercentile =  	65	then	58.1
--when LocalPercentile =  	66	then	58.7
--when LocalPercentile =  	67	then	59.3
--when LocalPercentile =  	68	then	59.8
--when LocalPercentile =  	69	then	60.4
--when LocalPercentile =  	70	then	61.0
--when LocalPercentile =  	71	then	61.7
--when LocalPercentile =  	72	then	62.3
--when LocalPercentile =  	73	then	62.9
--when LocalPercentile =  	74	then	63.5
--when LocalPercentile =  	75	then	64.2
--when LocalPercentile =  	76	then	64.9
--when LocalPercentile =  	77	then	65.6
--when LocalPercentile =  	78	then	66.3
--when LocalPercentile =  	79	then	67.0
--when LocalPercentile =  	80	then	67.7
--when LocalPercentile =  	81	then	68.5
--when LocalPercentile =  	82	then	69.3
--when LocalPercentile =  	83	then	70.1
--when LocalPercentile =  	84	then	70.9
--when LocalPercentile =  	85	then	71.8
--when LocalPercentile =  	86	then	72.8
--when LocalPercentile =  	87	then	73.7
--when LocalPercentile =  	88	then	74.7
--when LocalPercentile =  	89	then	75.8
--when LocalPercentile =  	90	then	77.0
--when LocalPercentile =  	91	then	78.2
--when LocalPercentile =  	92	then	79.6
--when LocalPercentile =  	93	then	81.1
--when LocalPercentile =  	94	then	82.7
--when LocalPercentile =  	95	then	84.6
--when LocalPercentile =  	96	then	86.9
--when LocalPercentile =  	97	then	89.6
--when LocalPercentile =  	98	then	93.3
--when LocalPercentile =  	99	then	99.0
--end as NCE
-- from 
--(
--select 
--yy.AssessmentTitle,
--yy.AssessmentIdentifier,
--yy.Version,
--yy.StudentUSI,yy.ScaleScore,zz.NationalPercentile
--,PERCENT_RANK() over  (Partition by yy.AssessmentIdentifier order by cast(yy.scalescore as int)) as RawPercentRank
----,ROUND(100*PERCENT_RANK() over (order by cast(yy.scalescore as int)),0)
--,case when ROUND(100*PERCENT_RANK() over (Partition by yy.AssessmentIdentifier order by cast(yy.scalescore as int)),0) = 0 then 1
--when ROUND(100*PERCENT_RANK() over (Partition by yy.AssessmentIdentifier order by cast(yy.scalescore as int)),0) = 100 then 99
--else ROUND(100*PERCENT_RANK() over (Partition by yy.AssessmentIdentifier order by cast(yy.scalescore as int)),0)
--end
--as LocalPercentile

----zz.AssessmentTitle
--from 
--(
--Select
--sr.StudentUSI,
--ea.AssessmentIdentifier,
--a.AssessmentTitle, 
--a.Version,
--cast(min(Result) as int) as ScaleScore
----from Edfi_Glendale_V25.edfi.StudentAssessmentScoreResult sr with (nolock)
--from dbo.EADM_Assessments ea with (nolock)
--join Edfi_Glendale_V25.edfi.StudentAssessmentScoreResult sr with (nolock) on ea.assessmentidentifier = sr.assessmentidentifier and ea.NameSpace = sr.Namespace
----join dbo.EADM_Assessments ea with (nolock) on ea.assessmentidentifier = sr.assessmentidentifier and ea.NameSpace = sr.Namespace
--join EdFi_Glendale_v25.edfi.Assessment a on a.AssessmentIdentifier = ea.AssessmentIdentifier 
----join dbo.EADM_Assessments a with (nolock) on sr.AssessmentTitle = a.AssessmentTitle and a.Version = sr.Version and a.AcademicSubjectDescriptorId = sr.AcademicSubjectDescriptorId and a.AssessedGradeLevelDescriptorId = sr.AssessedGradeLevelDescriptorId and a.includeinnce = 1
--where sr.AssessmentReportingMethodTypeId = 28 --and sr.StudentUSI = 2
--group by sr.Studentusi,
--ea.AssessmentIdentifier,
--ea.Namespace,
--a.AssessmentTitle, 
--a.Version
--)  as yy
--left join
--(
--Select
--sr.StudentUSI,
--ea.AssessmentIdentifier,
--a.AssessmentTitle, 
--a.Version,
--cast(min(Result) as int) as NationalPercentile
--from dbo.EADM_Assessments ea with (nolock)
--join Edfi_Glendale_V25.edfi.StudentAssessmentScoreResult sr with (nolock) on ea.assessmentidentifier = sr.assessmentidentifier and ea.NameSpace = sr.Namespace
----from Edfi_Glendale_V25.edfi.StudentAssessmentScoreResult sr with (nolock)
----join dbo.EADM_Assessments ea with (nolock) on ea.assessmentidentifier = sr.assessmentidentifier and ea.NameSpace = sr.Namespace
--join EdFi_Glendale_v25.edfi.Assessment a on a.AssessmentIdentifier = ea.AssessmentIdentifier 
----join dbo.EADM_Assessments a with (nolock) on sr.AssessmentTitle = a.AssessmentTitle and a.Version = sr.Version and a.AcademicSubjectDescriptorId = sr.AcademicSubjectDescriptorId and a.AssessedGradeLevelDescriptorId = sr.AssessedGradeLevelDescriptorId and a.includeinnce = 1
--where sr.AssessmentReportingMethodTypeId = 21 --and sr.StudentUSI = 2
--group by 
--sr.StudentUSI,
--ea.AssessmentIdentifier,
--ea.namespace,
--a.AssessmentTitle, 
--a.Version

--) as zz 
--on yy.StudentUSI = zz.StudentUSI and yy.AssessmentTitle = zz.AssessmentTitle and yy.Version = zz.Version 
--) as nn
----order by StudentUSI,AssessmentTitle,
----AssessedGradeLevelDescriptorId,
----AcademicSubjectDescriptorId,
----Version
--GO

SELECT [AssessmentKey]
      ,[AssessmentTitle]
      ,[Version]
      ,[StudentUSI]
      ,[ScaleScore]
      ,[NationalPercentile]
      ,[RawPercentRank]
      ,[LocalPercentile]
      ,[NCE]
  FROM [dbo].[EADM_FACT_Assessment_NCE_Cache]
GO
/****** Object:  View [dbo].[v_EADM_FACT_AssessmentNumbersPivot]    Script Date: 12/9/2018 8:08:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO










/*
select *  from [dbo].[v_EADM_FACT_AssessmentNumbersPivot] p
left join (
	Select distinct studentUSI from [dbo].[v_EADM_FACT_DomainLevelScores] d with (nolock)
	where d.[AssessmentTitle] like 'IXL%'
) i on i.studentusi = p.studentusi
*/

CREATE view [dbo].[v_EADM_FACT_AssessmentNumbersPivot]
as
--Select NCE.StudentUSI,FSAMO_2016_NCE,FSAMO_2016_SCALE,FSAMO_2017_NCE,FSAMO_2017_SCALE,StarMathAug2018_NCE,StarMathAug2018_SCALE,StarMathDec2018_NCE,StarMathDec2018_SCALE,
--FSAMO_2016_NationalPercentile,FSAMO_2017_NationalPercentile,StarMathAug2018_NationalPercentile,StarMathDec2018_NationalPercentile,
--FSAMO_2016_PerfLevelDescriptorId,des.Description as FSA_2016_PerformanceLevel,
--FSAMO_2017_PerfLevelDescriptorId,des.Description as FSA_2017_PerformanceLevel,  
--StarMathAug2018_PerfLevelDescriptorId , des2.Description as StarMathAug2018_PerformanceLevel,  
--StarMathDec2018_PerfLevelDescriptorId, des3.Description as StarMathDec2018_PerformanceLevel,
--	perfMin.FSAMO_2016_PerfMinScore,
--	perfMin.FSAMO_2017_PerfMinScore,
--	perfMin.StarMathAug2018_PerfMinScore ,
--	perfMin.StarMathDec2018_PerfMinScore,
--	perfMax.FSAMO_2016_PerfMaxScore,
--	perfMax.FSAMO_2017_PerfMaxScore,
--	perfMax.StarMathAug2018_PerfMaxScore ,
--	perfMax.StarMathDec2018_PerfMaxScore,
--case when ixl.StudentUSI is null then 'N' else 'Y' end as IXL

--from
--(
--SELECT StudentUSI, sum([FSAMO3722016]) as FSAMO_2016_NCE, sum([FSAssessments-MATH-7]) as FSAMO_2017_NCE,sum([StarMathAug2018]) StarMathAug2018_NCE ,sum([StarMathDec2018]) StarMathDec2018_NCE
--    from dbo.v_EADM_FACT_Assessment_NCE nce
--    PIVOT(SUM(NCE) 
--          --FOR AssessmentTitle  IN ([FSAMO],[StarMathAug2018],[StarMathDec2018])) AS PVTTable
--		  FOR AssessmentKey  IN ([FSAssessments-MATH-7],[FSAMO3722016],[StarMathAug2018],[StarMathDec2018])) AS PVTTable
--	group by studentusi
--) NCE
--left join
--(
--SELECT StudentUSI,sum([FSAMO3722016]) as FSAMO_2016_PerfLevelDescriptorId, sum([FSAssessments-MATH-7]) as FSAMO_2017_PerfLevelDescriptorId,sum([StarMathAug2018]) StarMathAug2018_PerfLevelDescriptorId ,sum([StarMathDec2018]) StarMathDec2018_PerfLevelDescriptorId
--    from dbo.[v_EADM_FACT_StudentAssessmentPerformanceLevel] pl
--    PIVOT(SUM(PerformanceLevelDescriptorId) 
--          --FOR AssessmentTitle  IN ([FSAMO],[StarMathAug2018],[StarMathDec2018])) AS PVTTable
--		  FOR AssessmentKey  IN ([FSAssessments-MATH-7],[FSAMO3722016],[StarMathAug2018],[StarMathDec2018])) AS PVTTable
--	group by studentusi
--) Perf on perf.StudentUSI = nce.StudentUSI
--left join
--(
--SELECT 
--	StudentUSI,
--	cast(isnull(min([FSAMO3722016]),'0') as int) as FSAMO_2016_PerfMinScore,
--	cast(isnull(min([FSAssessments-MATH-7]),'0') as int) as FSAMO_2017_PerfMinScore,
--	cast(isnull(min([StarMathAug2018]),'0') as int) StarMathAug2018_PerfMinScore ,
--	cast(isnull(min([StarMathDec2018]),'0') as int) StarMathDec2018_PerfMinScore
	
--    from dbo.[v_EADM_FACT_StudentAssessmentPerformanceLevel] pl
--    PIVOT(MIN(MinimumScore) 
--          --FOR AssessmentTitle  IN ([FSAMO],[StarMathAug2018],[StarMathDec2018])) AS PVTTable
--		  FOR AssessmentKey  IN ([FSAssessments-MATH-7],[FSAMO3722016],[StarMathAug2018],[StarMathDec2018])) AS PVTTable
--	group by studentusi 
--) perfmin on perfmin.StudentUSI = nce.StudentUSI
--left join
--(
--SELECT 
--	StudentUSI,
--	cast(isnull(max([FSAMO3722016]),'0') as int) as FSAMO_2016_PerfMaxScore,
--	cast(isnull(max([FSAssessments-MATH-7]),'0') as int) as FSAMO_2017_PerfMaxScore,
--	cast(isnull(max([StarMathAug2018]),'0') as int) StarMathAug2018_PerfMaxScore ,
--	cast(isnull(max([StarMathDec2018]),'0') as int) StarMathDec2018_PerfMaxScore
	
--    from dbo.[v_EADM_FACT_StudentAssessmentPerformanceLevel] pl
--    PIVOT(max(MaximumScore) 
--          --FOR AssessmentTitle  IN ([FSAMO],[StarMathAug2018],[StarMathDec2018])) AS PVTTable
--		  FOR AssessmentKey  IN ([FSAssessments-MATH-7],[FSAMO3722016],[StarMathAug2018],[StarMathDec2018])) AS PVTTable
--	group by studentusi
--) perfmax on perfmax.StudentUSI = nce.StudentUSI
--left join 
--(

-- SELECT StudentUSI, sum([FSAMO3722016]) as FSAMO_2016_SCALE, sum([FSAssessments-MATH-7]) as FSAMO_2017_SCALE,sum([StarMathAug2018]) StarMathAug2018_SCALE ,sum([StarMathDec2018]) StarMathDec2018_SCALE
--    from dbo.v_EADM_FACT_Assessment_NCE nce
--    PIVOT(SUM(ScaleScore) 
--          --FOR AssessmentTitle IN ([FSAMO],[StarMathAug2018],[StarMathDec2018])) AS PVTTable
--		  FOR AssessmentKey  IN ([FSAssessments-MATH-7],[FSAMO3722016],[StarMathAug2018],[StarMathDec2018])) AS PVTTable
--group by studentusi
--) Scale on Scale.StudentUSI = NCE.StudentUSI
--left join 
--(

-- SELECT StudentUSI, sum([FSAMO3722016]) as FSAMO_2016_NationalPercentile, sum([FSAssessments-MATH-7]) as FSAMO_2017_NationalPercentile,
--					sum([StarMathAug2018]) StarMathAug2018_NationalPercentile ,sum([StarMathDec2018]) StarMathDec2018_NationalPercentile
--    from dbo.v_EADM_FACT_Assessment_NCE nce
--    PIVOT(SUM(NationalPercentile) 
--          --FOR AssessmentTitle IN ([FSAMO],[StarMathAug2018],[StarMathDec2018])) AS PVTTable
--		  FOR AssessmentKey  IN ([FSAssessments-MATH-7],[FSAMO3722016],[StarMathAug2018],[StarMathDec2018])) AS PVTTable
--group by studentusi
--) NationalPercentile on NationalPercentile.StudentUSI = NCE.StudentUSI
--left join Edfi_Glendale_V25.edfi.[PerformanceLevelDescriptor] pl on pl.PerformanceLevelDescriptorId = Perf.FSAMO_2016_PerfLevelDescriptorId
--left join Edfi_Glendale_V25.edfi.Descriptor des on des.DescriptorId = pl.PerformanceLevelDescriptorId

--left join Edfi_Glendale_V25.edfi.[PerformanceLevelDescriptor] pl0 on pl0.PerformanceLevelDescriptorId = Perf.FSAMO_2017_PerfLevelDescriptorId
--left join Edfi_Glendale_V25.edfi.Descriptor des0 on des0.DescriptorId = pl0.PerformanceLevelDescriptorId


--left join Edfi_Glendale_V25.edfi.[PerformanceLevelDescriptor] pl2 on pl2.PerformanceLevelDescriptorId = Perf.StarMathAug2018_PerfLevelDescriptorId
--left join Edfi_Glendale_V25.edfi.Descriptor des2 on des2.DescriptorId = pl2.PerformanceLevelDescriptorId

--left join Edfi_Glendale_V25.edfi.[PerformanceLevelDescriptor] pl3 on pl3.PerformanceLevelDescriptorId = Perf.StarMathDec2018_PerfLevelDescriptorId
--left join Edfi_Glendale_V25.edfi.Descriptor des3 on des3.DescriptorId = pl3.PerformanceLevelDescriptorId

--Left Join (
--Select distinct sa.StudentUSI from [dbo].[v_EADM_StudentAssessment] sa
--join dbo.EADM_Assessments a with (nolock) on a.AssessmentIdentifier = sa.AssessmentIdentifier and a.Namespace = sa.Namespace
--where a.AssessmentTitle like 'IXL%'
--) ixl on ixl.studentusi = NCE.StudentUSI

SELECT [StudentUSI]
      ,[FSAMO_2016_NCE]
      ,[FSAMO_2016_SCALE]
      ,[FSAMO_2017_NCE]
      ,[FSAMO_2017_SCALE]
      ,[StarMathAug2018_NCE]
      ,[StarMathAug2018_SCALE]
      ,[StarMathDec2018_NCE]
      ,[StarMathDec2018_SCALE]
      ,[FSAMO_2016_NationalPercentile]
      ,[FSAMO_2017_NationalPercentile]
      ,[StarMathAug2018_NationalPercentile]
      ,[StarMathDec2018_NationalPercentile]
      ,[FSAMO_2016_PerfLevelDescriptorId]
      ,[FSA_2016_PerformanceLevel]
      ,[FSAMO_2017_PerfLevelDescriptorId]
      ,[FSA_2017_PerformanceLevel]
      ,[StarMathAug2018_PerfLevelDescriptorId]
      ,[StarMathAug2018_PerformanceLevel]
      ,[StarMathDec2018_PerfLevelDescriptorId]
      ,[StarMathDec2018_PerformanceLevel]
      ,[FSAMO_2016_PerfMinScore]
      ,[FSAMO_2017_PerfMinScore]
      ,[StarMathAug2018_PerfMinScore]
      ,[StarMathDec2018_PerfMinScore]
      ,[FSAMO_2016_PerfMaxScore]
      ,[FSAMO_2017_PerfMaxScore]
      ,[StarMathAug2018_PerfMaxScore]
      ,[StarMathDec2018_PerfMaxScore]
      ,[IXL]
  FROM [dbo].[EADM_FACT_AssessmentNumbersPivot_Cache]
GO
/****** Object:  View [dbo].[v_EADM_FACT_DomainLevelScores]    Script Date: 12/9/2018 8:08:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



/*
Select * from [dbo].[v_EADM_FACT_DomainLevelScores]
*/

CREATE view [dbo].[v_EADM_FACT_DomainLevelScores]
as
---- Parent rows (Domain level)
--select 
--sasoa.StudentUSI, a.AssessmentTitle, a.Version,sasoa.IdentificationCode
--,oa.description,null as AdministrationDate
--,cast(res.Result as int) as RawScore
--,oa.MaxRawScore
--,(cast(res.Result as float) / cast(oa.MaxRawScore as float) * 100) as PercentCorrect
--, race.race, ISNULL(ab.TotalAbs, 0) AS Absences,  
--                         s.FirstName, s.MiddleName, s.LastSurname, s.StudentUniqueId, s.BirthDate, s.GenderCode, s.GenderDesc, s.DisabilityStatus, 
--                         s.EconomicDisadvantaged, s.Gifted, s.ELL, s.GradeLevel, s.GradeLevelDescriptorId, s.EntryDate, s.EducationOrganizationId, s.NameOfInstitution

--from
--dbo.EADM_Assessments ea with (nolock)
--join EdFi_Glendale_v25.edfi.Assessment a on ea.AssessmentIdentifier =  a.AssessmentIdentifier 
--join Edfi_Glendale_V25.edfi.StudentAssessmentStudentObjectiveAssessment SASOA with (nolock) on a.AssessmentIdentifier = sasoa.AssessmentIdentifier
--join [dbo].[v_EADM_DIM_Student] s on s.StudentUSI = SASOA.StudentUSI
--LEFT OUTER JOIN dbo.v_EADM_DIM_StudentChronicAbsence AS ab ON ab.StudentUSI = s.StudentUSI 
--LEFT OUTER JOIN 
--(SELECT        StudentUSI, CASE WHEN COUNT(RaceTypeId) > 1 THEN 'Two or More' ELSE MIN(Description) END AS race
--                               FROM            dbo.v_EADM_DIM_StudentRace
--                               GROUP BY StudentUSI) 
--AS race ON s.StudentUSI = race.StudentUSI
--inner join Edfi_Glendale_V25.edfi.ObjectiveAssessment OA  with (nolock)
--on SASOA.AssessmentIdentifier = OA.AssessmentIdentifier
--left join Edfi_Glendale_V25.edfi.StudentAssessmentStudentObjectiveAssessmentScoreResult res with (nolock) on res.StudentUSI = sasoa.StudentUSI and
--res.AssessmentIdentifier = sasoa.AssessmentIdentifier
--and res.IdentificationCode = sasoa.IdentificationCode
--  left join Edfi_Glendale_V25.edfi.AssessmentReportingMethodType rmt with (nolock) on rmt.AssessmentReportingMethodTypeId = res.AssessmentReportingMethodTypeId
--  left join Edfi_Glendale_V25.edfi.AssessmentItemResultType rt with (nolock) on rt.AssessmentItemResultTypeId = res.ResultDatatypeTypeId
--where 
-- OA.ParentIdentificationCode is null --<===== not null ParentIdentificationCode
-- and rmt.CodeValue = 'Raw score'
-- --and oa.AssessmentTitle = 'StarMathAug2018'
----order by 1 
--GO

SELECT [StudentUSI]
      ,[AssessmentTitle]
      ,[Version]
      ,[IdentificationCode]
      ,[description]
      ,[AdministrationDate]
      ,[RawScore]
      ,[MaxRawScore]
      ,[PercentCorrect]
      ,[race]
      ,[Absences]
      ,[FirstName]
      ,[MiddleName]
      ,[LastSurname]
      ,[StudentUniqueId]
      ,[BirthDate]
      ,[GenderCode]
      ,[GenderDesc]
      ,[DisabilityStatus]
      ,[EconomicDisadvantaged]
      ,[Gifted]
      ,[ELL]
      ,[GradeLevel]
      ,[GradeLevelDescriptorId]
      ,[EntryDate]
      ,[EducationOrganizationId]
      ,[NameOfInstitution]
  FROM [dbo].[EADM_FACT_DomainLevelScores_Cache]
GO
/****** Object:  View [dbo].[v_EADM_FACT_SkillLevelScores]    Script Date: 12/9/2018 8:08:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE view [dbo].[v_EADM_FACT_SkillLevelScores]
as
---- Child rows (Skill level)
--select 
--sasoa.StudentUSI, 
--sasoa.AssessmentIdentifier,
--a.AssessmentTitle, a.Version,sasoa.IdentificationCode
--,oa.description
--,cast(res.Result as int) as RawScore
--,oa.MaxRawScore
--,(cast(res.Result as float) / cast(oa.MaxRawScore as float) * 100) as PercentCorrect
--, OA.ParentIdentificationCode
--from
--dbo.EADM_Assessments ea
--join EdFi_Glendale_v25.edfi.Assessment a on a.AssessmentIdentifier = ea.AssessmentIdentifier
--join EdFi_Glendale_v25.edfi.StudentAssessmentStudentObjectiveAssessment SASOA on a.AssessmentIdentifier = sasoa.AssessmentIdentifier
---- AssessmentTitle and a.Version = sasoa.Version and a.AcademicSubjectDescriptorId = sasoa.AcademicSubjectDescriptorId and a.AssessedGradeLevelDescriptorId = SASOA.AssessedGradeLevelDescriptorId
--inner join Edfi_Glendale_V25.edfi.ObjectiveAssessment OA
--on SASOA.AssessmentIdentifier = OA.AssessmentIdentifier
--left join Edfi_Glendale_V25.edfi.StudentAssessmentStudentObjectiveAssessmentScoreResult res on res.StudentUSI = sasoa.StudentUSI and
--res.AssessmentIdentifier = SASOA.AssessmentIdentifier
----res.AssessmentTitle = sasoa.AssessmentTitle and res.Version = sasoa.Version and res.AcademicSubjectDescriptorId = sasoa.AcademicSubjectDescriptorId and res.AssessedGradeLevelDescriptorId = SASOA.AssessedGradeLevelDescriptorId
--and res.IdentificationCode = sasoa.IdentificationCode
--  left join Edfi_Glendale_V25.edfi.AssessmentReportingMethodType rmt on rmt.AssessmentReportingMethodTypeId = res.AssessmentReportingMethodTypeId
--  left join Edfi_Glendale_V25.edfi.AssessmentItemResultType rt on rt.AssessmentItemResultTypeId = res.ResultDatatypeTypeId
--  --left join Edfi_Glendale_V25.edfi.AcademicSubjectDescriptor asd on asd.AcademicSubjectDescriptorId = res.AcademicSubjectDescriptorId
--  --left join Edfi_Glendale_V25.edfi.Descriptor des on des.DescriptorId = asd.AcademicSubjectTypeId 
--  --left join Edfi_Glendale_V25.[edfi].[GradeLevelDescriptor] gld on gld.GradeLevelDescriptorId = res.AssessedGradeLevelDescriptorId
--  --left join Edfi_Glendale_V25.edfi.Descriptor gd on gd.DescriptorId = gld.GradeLevelTypeId
--where 
-- OA.ParentIdentificationCode is not  null --<===== not null ParentIdentificationCode
-- and rmt.CodeValue = 'Raw score'
-- --and oa.AssessmentTitle = 'StarMathAug2018'
----order by 1 

SELECT [StudentUSI]
      ,[AssessmentIdentifier]
      ,[AssessmentTitle]
      ,[Version]
      ,[IdentificationCode]
      ,[description]
      ,[RawScore]
      ,[MaxRawScore]
      ,[PercentCorrect]
      ,[ParentIdentificationCode]
  FROM [dbo].[EADM_FACT_SkillLevelScores_Cache]
GO
/****** Object:  View [dbo].[v_EADM_FACT_SkillLevelScores_BuildCache]    Script Date: 12/9/2018 8:08:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE view [dbo].[v_EADM_FACT_SkillLevelScores_BuildCache]
as
-- Child rows (Skill level)
select 
sasoa.StudentUSI, 
sasoa.AssessmentIdentifier,
a.AssessmentTitle, a.Version,sasoa.IdentificationCode
,oa.description
,cast(res.Result as int) as RawScore
,oa.MaxRawScore
,(cast(res.Result as float) / cast(oa.MaxRawScore as float) * 100) as PercentCorrect
, OA.ParentIdentificationCode
from
dbo.EADM_Assessments ea
join EdFi_Glendale_v25.edfi.Assessment a on a.AssessmentIdentifier = ea.AssessmentIdentifier
join EdFi_Glendale_v25.edfi.StudentAssessmentStudentObjectiveAssessment SASOA on a.AssessmentIdentifier = sasoa.AssessmentIdentifier
-- AssessmentTitle and a.Version = sasoa.Version and a.AcademicSubjectDescriptorId = sasoa.AcademicSubjectDescriptorId and a.AssessedGradeLevelDescriptorId = SASOA.AssessedGradeLevelDescriptorId
inner join Edfi_Glendale_V25.edfi.ObjectiveAssessment OA
on SASOA.AssessmentIdentifier = OA.AssessmentIdentifier and SASOA.IdentificationCode = OA.IdentificationCode
left join Edfi_Glendale_V25.edfi.StudentAssessmentStudentObjectiveAssessmentScoreResult res on res.StudentUSI = sasoa.StudentUSI and
res.AssessmentIdentifier = SASOA.AssessmentIdentifier
--res.AssessmentTitle = sasoa.AssessmentTitle and res.Version = sasoa.Version and res.AcademicSubjectDescriptorId = sasoa.AcademicSubjectDescriptorId and res.AssessedGradeLevelDescriptorId = SASOA.AssessedGradeLevelDescriptorId
and res.IdentificationCode = sasoa.IdentificationCode
  left join Edfi_Glendale_V25.edfi.AssessmentReportingMethodType rmt on rmt.AssessmentReportingMethodTypeId = res.AssessmentReportingMethodTypeId
  left join Edfi_Glendale_V25.edfi.AssessmentItemResultType rt on rt.AssessmentItemResultTypeId = res.ResultDatatypeTypeId
  --left join Edfi_Glendale_V25.edfi.AcademicSubjectDescriptor asd on asd.AcademicSubjectDescriptorId = res.AcademicSubjectDescriptorId
  --left join Edfi_Glendale_V25.edfi.Descriptor des on des.DescriptorId = asd.AcademicSubjectTypeId 
  --left join Edfi_Glendale_V25.[edfi].[GradeLevelDescriptor] gld on gld.GradeLevelDescriptorId = res.AssessedGradeLevelDescriptorId
  --left join Edfi_Glendale_V25.edfi.Descriptor gd on gd.DescriptorId = gld.GradeLevelTypeId
where 
 OA.ParentIdentificationCode is not  null --<===== not null ParentIdentificationCode
 and rmt.CodeValue = 'Raw score'
 --and oa.AssessmentTitle = 'StarMathAug2018'
--order by 1 
GO
/****** Object:  View [dbo].[v_EADM_StudentAssessment]    Script Date: 12/9/2018 8:08:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE view [dbo].[v_EADM_StudentAssessment]
as
--Select sa.* from [EdFi_Glendale_v25].edfi.StudentAssessment sa
--join dbo.EADM_Assessments ea on ea.AssessmentIdentifier = sa.AssessmentIdentifier and ea.Namespace = sa.Namespace


SELECT [StudentUSI]
      ,[AdministrationDate]
      ,[AdministrationEndDate]
      ,[SerialNumber]
      ,[AdministrationLanguageDescriptorId]
      ,[AdministrationEnvironmentTypeId]
      ,[RetestIndicatorTypeId]
      ,[ReasonNotTestedTypeId]
      ,[WhenAssessedGradeLevelDescriptorId]
      ,[EventCircumstanceTypeId]
      ,[EventDescription]
      ,[Id]
      ,[LastModifiedDate]
      ,[CreateDate]
      ,[AssessmentIdentifier]
      ,[StudentAssessmentIdentifier]
      ,[Namespace]
  FROM [dbo].[EADM_StudentAssessment_Cache]
GO
/****** Object:  View [dbo].[v_EADM_StudentSchoolYears]    Script Date: 12/9/2018 8:08:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE view [dbo].[v_EADM_StudentSchoolYears]
as
--Select ssa.studentusi, ssa.schoolyear from Edfi_Glendale.edfi.StudentSectionAssociation ssa
--join [dbo].[v_EADM_StudentAssessment] sa on sa.StudentUSI = ssa.studentusi
--group by ssa.StudentUSI,ssa.SchoolYear

SELECT [studentusi]
      ,[schoolyear]
  FROM [dbo].[EADM_StudentSchoolYears_Cache]
GO
/****** Object:  View [dbo].[v_EADM_SummaryView]    Script Date: 12/9/2018 8:08:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






/*
 select * from [dbo].[v_EADM_SummaryView]
*/

CREATE VIEW [dbo].[v_EADM_SummaryView]
AS
--SELECT        race.race, ISNULL(ab.TotalAbs, 0) AS Absences, n.StarMathAug2018_NCE, n.StarMathAug2018_SCALE, n.StarMathDec2018_NCE, n.StarMathDec2018_SCALE, 
--                         s.StudentUSI, s.FirstName, s.MiddleName, s.LastSurname, s.StudentUniqueId, s.BirthDate, s.GenderCode, s.GenderDesc, s.DisabilityStatus, 
--                         s.EconomicDisadvantaged, s.Gifted, s.ELL, s.GradeLevel, s.GradeLevelDescriptorId, s.EntryDate, s.EducationOrganizationId, s.NameOfInstitution, 
--                         --dbo.v_EADM_FACT_DomainLevelScores.AssessmentTitle, dbo.v_EADM_FACT_DomainLevelScores.Version, 
--                         --dbo.v_EADM_FACT_DomainLevelScores.IdentificationCode, dbo.v_EADM_FACT_DomainLevelScores.description, 
--                         --dbo.v_EADM_FACT_DomainLevelScores.AdministrationDate, dbo.v_EADM_FACT_DomainLevelScores.RawScore, 
--                         --dbo.v_EADM_FACT_DomainLevelScores.MaxRawScore, dbo.v_EADM_FACT_DomainLevelScores.PercentCorrect, 
--						 n.FSAMO_2017_SCALE, n.FSAMO_2017_NCE, 
--                         n.FSAMO_2016_SCALE, n.FSAMO_2016_NCE, n.FSAMO_2016_PerfLevelDescriptorId, n.FSA_2016_PerformanceLevel, n.FSAMO_2017_PerfLevelDescriptorId, 
--                         n.FSA_2017_PerformanceLevel, n.StarMathAug2018_PerfLevelDescriptorId, n.StarMathAug2018_PerformanceLevel, n.StarMathDec2018_PerfLevelDescriptorId, 
--                         n.StarMathDec2018_PerformanceLevel, s.HispanicLatinoEthnicity,
--						 n.[FSAMO_2016_NationalPercentile], n.[FSAMO_2017_NationalPercentile], n.[StarMathAug2018_NationalPercentile], n.[StarMathDec2018_NationalPercentile],
--						 n.IXL,
--						 n.[FSAMO_2016_PerfMinScore], n.[FSAMO_2017_PerfMinScore], n.[StarMathAug2018_PerfMinScore], n.[StarMathDec2018_PerfMinScore],
--						 n.[FSAMO_2016_PerfMaxScore], n.[FSAMO_2017_PerfMaxScore], n.[StarMathAug2018_PerfMaxScore], n.[StarMathDec2018_PerfMaxScore]

--FROM            dbo.v_EADM_FACT_AssessmentNumbersPivot AS n 
--INNER JOIN      dbo.v_EADM_DIM_Student AS s ON n.StudentUSI = s.StudentUSI 
----INNER JOIN      dbo.v_EADM_FACT_DomainLevelScores ON s.StudentUSI = dbo.v_EADM_FACT_DomainLevelScores.StudentUSI 
--LEFT OUTER JOIN dbo.v_EADM_DIM_StudentChronicAbsence AS ab ON ab.StudentUSI = n.StudentUSI 
--LEFT OUTER JOIN 
--(SELECT        StudentUSI, CASE WHEN COUNT(RaceTypeId) > 1 THEN 'Two or More' ELSE MIN(Description) END AS race
--                               FROM            dbo.v_EADM_DIM_StudentRace
--                               GROUP BY StudentUSI) 
--AS race ON s.StudentUSI = race.StudentUSI


SELECT [race]
      ,[Absences]
      ,[StarMathAug2018_NCE]
      ,[StarMathAug2018_SCALE]
      ,[StarMathDec2018_NCE]
      ,[StarMathDec2018_SCALE]
      ,[StudentUSI]
      ,[FirstName]
      ,[MiddleName]
      ,[LastSurname]
      ,[StudentUniqueId]
      ,[BirthDate]
      ,[GenderCode]
      ,[GenderDesc]
      ,[DisabilityStatus]
      ,[EconomicDisadvantaged]
      ,[Gifted]
      ,[ELL]
      ,[GradeLevel]
      ,[GradeLevelDescriptorId]
      ,[EntryDate]
      ,[EducationOrganizationId]
      ,[NameOfInstitution]
      ,[FSAMO_2017_SCALE]
      ,[FSAMO_2017_NCE]
      ,[FSAMO_2016_SCALE]
      ,[FSAMO_2016_NCE]
      ,[FSAMO_2016_PerfLevelDescriptorId]
      ,[FSA_2016_PerformanceLevel]
      ,[FSAMO_2017_PerfLevelDescriptorId]
      ,[FSA_2017_PerformanceLevel]
      ,[StarMathAug2018_PerfLevelDescriptorId]
      ,[StarMathAug2018_PerformanceLevel]
      ,[StarMathDec2018_PerfLevelDescriptorId]
      ,[StarMathDec2018_PerformanceLevel]
      ,[HispanicLatinoEthnicity]
      ,[FSAMO_2016_NationalPercentile]
      ,[FSAMO_2017_NationalPercentile]
      ,[StarMathAug2018_NationalPercentile]
      ,[StarMathDec2018_NationalPercentile]
      ,[IXL]
      ,[FSAMO_2016_PerfMinScore]
      ,[FSAMO_2017_PerfMinScore]
      ,[StarMathAug2018_PerfMinScore]
      ,[StarMathDec2018_PerfMinScore]
      ,[FSAMO_2016_PerfMaxScore]
      ,[FSAMO_2017_PerfMaxScore]
      ,[StarMathAug2018_PerfMaxScore]
      ,[StarMathDec2018_PerfMaxScore]
  FROM [dbo].[EADM_SummaryView_Cache]
GO
/****** Object:  StoredProcedure [dbo].[sp_EADM_LoadCacheTables]    Script Date: 12/9/2018 8:08:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- exec dbo.sp_EADM_LoadCacheTables
CREATE proc [dbo].[sp_EADM_LoadCacheTables]
as
begin
	BEGIN TRY --Start the Try Block..


		BEGIN TRANSACTION -- Start the transaction..
			Delete dbo.EADM_DIM_GradeLevel_Cache
			INSERT INTO [dbo].[EADM_DIM_GradeLevel_Cache]
					   ([GradeLevelDescriptorId]
					   ,[GradeLevel])
			Select [GradeLevelDescriptorId], [GradeLevel] from dbo.v_EADM_DIM_GradeLevel_BuildCache

			Delete dbo.EADM_DIM_Schools_Cache
			INSERT INTO [dbo].[EADM_DIM_Schools_Cache]
					   ([EducationOrganizationId]
					   ,[NameOfInstitution]
					   ,[SchoolCategoryTypeId]
					   ,[Description])
			select [EducationOrganizationId], [NameOfInstitution], [SchoolCategoryTypeId], [Description] from [dbo].[v_EADM_DIM_Schools_BuildCache]

			Delete dbo.EADM_DIM_Student_Cache
			INSERT INTO [dbo].[EADM_DIM_Student_Cache]
					   ([StudentUSI]
					   ,[FirstName]
					   ,[MiddleName]
					   ,[LastSurname]
					   ,[StudentUniqueId]
					   ,[BirthDate]
					   ,[GenderCode]
					   ,[GenderDesc]
					   ,[DisabilityStatus]
					   ,[EconomicDisadvantaged]
					   ,[Gifted]
					   ,[ELL]
					   ,[GradeLevel]
					   ,[GradeLevelDescriptorId]
					   ,[EntryDate]
					   ,[EducationOrganizationId]
					   ,[NameOfInstitution]
					   ,[SchoolCategoryTypeId]
					   ,[Description]
					   ,[HispanicLatinoEthnicity])

			Select	[StudentUSI], [FirstName], [MiddleName], [LastSurname], [StudentUniqueId], [BirthDate], [GenderCode], [GenderDesc], 
					[DisabilityStatus], [EconomicDisadvantaged], [Gifted], [ELL], [GradeLevel], [GradeLevelDescriptorId], [EntryDate],
					[EducationOrganizationId], [NameOfInstitution], [SchoolCategoryTypeId], [Description], [HispanicLatinoEthnicity] 
			from [dbo].[v_EADM_DIM_Student_BuildCache]

			Delete dbo.EADM_DIM_StudentChronicAbsence_Cache
			INSERT INTO [dbo].[EADM_DIM_StudentChronicAbsence_Cache]
					   ([StudentUSI]
					   ,[AttendanceEventCategoryTypeId]
					   ,[SchoolId]
					   ,[SchoolYear]
					   ,[CodeValue]
					   ,[Description]
					   ,[ShortDescription]
					   ,[TotalAbs])
			Select [StudentUSI], [AttendanceEventCategoryTypeId], [SchoolId], [SchoolYear], [CodeValue], [Description], [ShortDescription], [TotalAbs] from [dbo].[v_EADM_DIM_StudentChronicAbsence_BuildCache]

			Delete dbo.EADM_DIM_StudentRace_Cache
			INSERT INTO [dbo].[EADM_DIM_StudentRace_Cache]
					   ([StudentUSI]
					   ,[RaceTypeId]
					   ,[CodeValue]
					   ,[Description]
					   ,[ShortDescription])
			Select [StudentUSI], [RaceTypeId], [CodeValue], [Description], [ShortDescription]  from [dbo].[v_EADM_DIM_StudentRace_BuildCache]

			Delete dbo.EADM_DIM_StudentSpecialEd_Cache
			INSERT INTO [dbo].[EADM_DIM_StudentSpecialEd_Cache]
					   ([CodeValue]
					   ,[ShortDescription]
					   ,[StudentUSI]
					   ,[EducationOrganizationId]
					   ,[ProgramTypeId]
					   ,[ProgramName]
					   ,[ProgramEducationOrganizationId]
					   ,[BeginDate]
					   ,[ServiceDescriptorId]
					   ,[PrimaryIndicator]
					   ,[ServiceBeginDate]
					   ,[ServiceEndDate]
					   ,[CreateDate])
			SELECT [CodeValue]
				  ,[ShortDescription]
				  ,[StudentUSI]
				  ,[EducationOrganizationId]
				  ,[ProgramTypeId]
				  ,[ProgramName]
				  ,[ProgramEducationOrganizationId]
				  ,[BeginDate]
				  ,[ServiceDescriptorId]
				  ,[PrimaryIndicator]
				  ,[ServiceBeginDate]
				  ,[ServiceEndDate]
				  ,[CreateDate]
			  FROM [dbo].[v_EADM_DIM_StudentSpecialEd_BuildCache]

			Delete dbo.EADM_DIM_StudentStaff_Cache
			INSERT INTO [dbo].[EADM_DIM_StudentStaff_Cache]
					   ([EducationOrganizationId]
					   ,[NameOfInstitution]
					   ,[StaffUSI]
					   ,[PositionTitle]
					   ,[StudentUSI]
					   ,[ElectronicMailAddress])
			SELECT [EducationOrganizationId]
				  ,[NameOfInstitution]
				  ,[StaffUSI]
				  ,[PositionTitle]
				  ,[StudentUSI]
				  ,[ElectronicMailAddress]
			  FROM [dbo].[v_EADM_DIM_StudentStaff_BuildCache]

			Delete dbo.EADM_DIM_Subject_Cache
			INSERT INTO [dbo].[EADM_DIM_Subject_Cache]
					   ([AcademicSubjectTypeId]
					   ,[AcademicSubjectDescriptorId]
					   ,[Subject]
					   ,[Description]
					   ,[ShortDescription])
			SELECT [AcademicSubjectTypeId]
				  ,[AcademicSubjectDescriptorId]
				  ,[Subject]
				  ,[Description]
				  ,[ShortDescription]
			  FROM [dbo].[v_EADM_DIM_Subject_BuildCache]

			Delete dbo.EADM_DIM_UserSecurity_Cache
			INSERT INTO [dbo].[EADM_DIM_UserSecurity_Cache]
					   ([EducationOrganizationId]
					   ,[NameOfInstitution]
					   ,[StaffUSI]
					   ,[PositionTitle]
					   ,[StudentUSI]
					   ,[ElectronicMailAddress]
					   ,[PowerBiEmailAddress])
			SELECT [EducationOrganizationId]
				  ,[NameOfInstitution]
				  ,[StaffUSI]
				  ,[PositionTitle]
				  ,[StudentUSI]
				  ,[ElectronicMailAddress]
				  ,[PowerBiEmailAddress]
			  FROM [dbo].[v_EADM_DIM_UserSecurity_BuildCache]

			Delete dbo.EADM_FACT_Assessment_NCE_Cache
			INSERT INTO [dbo].[EADM_FACT_Assessment_NCE_Cache]
					   ([AssessmentKey]
					   ,[AssessmentTitle]
					   ,[Version]
					   ,[StudentUSI]
					   ,[ScaleScore]
					   ,[NationalPercentile]
					   ,[RawPercentRank]
					   ,[LocalPercentile]
					   ,[NCE])
			SELECT [AssessmentKey]
				  ,[AssessmentTitle]
				  ,[Version]
				  ,[StudentUSI]
				  ,[ScaleScore]
				  ,[NationalPercentile]
				  ,[RawPercentRank]
				  ,[LocalPercentile]
				  ,[NCE]
			  FROM [dbo].[v_EADM_FACT_Assessment_NCE_BuildCache]

			Delete dbo.EADM_FACT_AssessmentNumbersPivot_Cache
			INSERT INTO [dbo].[EADM_FACT_AssessmentNumbersPivot_Cache]
					   ([StudentUSI]
					   ,[FSAMO_2016_NCE]
					   ,[FSAMO_2016_SCALE]
					   ,[FSAMO_2017_NCE]
					   ,[FSAMO_2017_SCALE]
					   ,[StarMathAug2018_NCE]
					   ,[StarMathAug2018_SCALE]
					   ,[StarMathDec2018_NCE]
					   ,[StarMathDec2018_SCALE]
					   ,[FSAMO_2016_NationalPercentile]
					   ,[FSAMO_2017_NationalPercentile]
					   ,[StarMathAug2018_NationalPercentile]
					   ,[StarMathDec2018_NationalPercentile]
					   ,[FSAMO_2016_PerfLevelDescriptorId]
					   ,[FSA_2016_PerformanceLevel]
					   ,[FSAMO_2017_PerfLevelDescriptorId]
					   ,[FSA_2017_PerformanceLevel]
					   ,[StarMathAug2018_PerfLevelDescriptorId]
					   ,[StarMathAug2018_PerformanceLevel]
					   ,[StarMathDec2018_PerfLevelDescriptorId]
					   ,[StarMathDec2018_PerformanceLevel]
					   ,[FSAMO_2016_PerfMinScore]
					   ,[FSAMO_2017_PerfMinScore]
					   ,[StarMathAug2018_PerfMinScore]
					   ,[StarMathDec2018_PerfMinScore]
					   ,[FSAMO_2016_PerfMaxScore]
					   ,[FSAMO_2017_PerfMaxScore]
					   ,[StarMathAug2018_PerfMaxScore]
					   ,[StarMathDec2018_PerfMaxScore]
					   ,[IXL])
			SELECT [StudentUSI]
				  ,[FSAMO_2016_NCE]
				  ,[FSAMO_2016_SCALE]
				  ,[FSAMO_2017_NCE]
				  ,[FSAMO_2017_SCALE]
				  ,[StarMathAug2018_NCE]
				  ,[StarMathAug2018_SCALE]
				  ,[StarMathDec2018_NCE]
				  ,[StarMathDec2018_SCALE]
				  ,[FSAMO_2016_NationalPercentile]
				  ,[FSAMO_2017_NationalPercentile]
				  ,[StarMathAug2018_NationalPercentile]
				  ,[StarMathDec2018_NationalPercentile]
				  ,[FSAMO_2016_PerfLevelDescriptorId]
				  ,[FSA_2016_PerformanceLevel]
				  ,[FSAMO_2017_PerfLevelDescriptorId]
				  ,[FSA_2017_PerformanceLevel]
				  ,[StarMathAug2018_PerfLevelDescriptorId]
				  ,[StarMathAug2018_PerformanceLevel]
				  ,[StarMathDec2018_PerfLevelDescriptorId]
				  ,[StarMathDec2018_PerformanceLevel]
				  ,[FSAMO_2016_PerfMinScore]
				  ,[FSAMO_2017_PerfMinScore]
				  ,[StarMathAug2018_PerfMinScore]
				  ,[StarMathDec2018_PerfMinScore]
				  ,[FSAMO_2016_PerfMaxScore]
				  ,[FSAMO_2017_PerfMaxScore]
				  ,[StarMathAug2018_PerfMaxScore]
				  ,[StarMathDec2018_PerfMaxScore]
				  ,[IXL]
			  FROM [dbo].[v_EADM_FACT_AssessmentNumbersPivot_BuildCache]

			Delete dbo.EADM_FACT_DomainLevelScores_Cache
			INSERT INTO [dbo].[EADM_FACT_DomainLevelScores_Cache]
					   ([StudentUSI]
					   ,[AssessmentTitle]
					   ,[Version]
					   ,[IdentificationCode]
					   ,[description]
					   ,[AdministrationDate]
					   ,[RawScore]
					   ,[MaxRawScore]
					   ,[PercentCorrect]
					   ,[race]
					   ,[Absences]
					   ,[FirstName]
					   ,[MiddleName]
					   ,[LastSurname]
					   ,[StudentUniqueId]
					   ,[BirthDate]
					   ,[GenderCode]
					   ,[GenderDesc]
					   ,[DisabilityStatus]
					   ,[EconomicDisadvantaged]
					   ,[Gifted]
					   ,[ELL]
					   ,[GradeLevel]
					   ,[GradeLevelDescriptorId]
					   ,[EntryDate]
					   ,[EducationOrganizationId]
					   ,[NameOfInstitution])
			SELECT [StudentUSI]
				  ,[AssessmentTitle]
				  ,[Version]
				  ,[IdentificationCode]
				  ,[description]
				  ,[AdministrationDate]
				  ,[RawScore]
				  ,[MaxRawScore]
				  ,[PercentCorrect]
				  ,[race]
				  ,[Absences]
				  ,[FirstName]
				  ,[MiddleName]
				  ,[LastSurname]
				  ,[StudentUniqueId]
				  ,[BirthDate]
				  ,[GenderCode]
				  ,[GenderDesc]
				  ,[DisabilityStatus]
				  ,[EconomicDisadvantaged]
				  ,[Gifted]
				  ,[ELL]
				  ,[GradeLevel]
				  ,[GradeLevelDescriptorId]
				  ,[EntryDate]
				  ,[EducationOrganizationId]
				  ,[NameOfInstitution]
			  FROM [dbo].[v_EADM_FACT_DomainLevelScores_BuildCache]

			Delete dbo.EADM_FACT_SkillLevelScores_Cache
			INSERT INTO [dbo].[EADM_FACT_SkillLevelScores_Cache]
					   ([StudentUSI]
					   ,[AssessmentIdentifier]
					   ,[AssessmentTitle]
					   ,[Version]
					   ,[IdentificationCode]
					   ,[description]
					   ,[RawScore]
					   ,[MaxRawScore]
					   ,[PercentCorrect]
					   ,[ParentIdentificationCode])
			SELECT [StudentUSI]
				  ,[AssessmentIdentifier]
				  ,[AssessmentTitle]
				  ,[Version]
				  ,[IdentificationCode]
				  ,[description]
				  ,[RawScore]
				  ,[MaxRawScore]
				  ,[PercentCorrect]
				  ,[ParentIdentificationCode]
			  FROM [dbo].[v_EADM_FACT_SkillLevelScores_BuildCache]

			Delete dbo.EADM_FACT_StudentAssessmentPerformanceLevel_Cache
			INSERT INTO [dbo].[EADM_FACT_StudentAssessmentPerformanceLevel_Cache]
					   ([AssessmentKey]
					   ,[AssessmentTitle]
					   ,[StudentUSI]
					   ,[PerformanceLevelDescriptorId]
					   ,[PerformanceLevelMet]
					   ,[CreateDate]
					   ,[AssessmentReportingMethodTypeId]
					   ,[AssessmentIdentifier]
					   ,[StudentAssessmentIdentifier]
					   ,[Namespace]
					   ,[PerformanceLevelCodeValue]
					   ,[PerformanceLevelDescription]
					   ,[PerformanceLevelShortDescription]
					   ,[MinimumScore]
					   ,[MaximumScore])
			SELECT [AssessmentKey]
				  ,[AssessmentTitle]
				  ,[StudentUSI]
				  ,[PerformanceLevelDescriptorId]
				  ,[PerformanceLevelMet]
				  ,[CreateDate]
				  ,[AssessmentReportingMethodTypeId]
				  ,[AssessmentIdentifier]
				  ,[StudentAssessmentIdentifier]
				  ,[Namespace]
				  ,[PerformanceLevelCodeValue]
				  ,[PerformanceLevelDescription]
				  ,[PerformanceLevelShortDescription]
				  ,[MinimumScore]
				  ,[MaximumScore]
			  FROM [dbo].[v_EADM_FACT_StudentAssessmentPerformanceLevel_BuildCache]
			Delete dbo.EADM_student_ELL_Cache
			INSERT INTO [dbo].[EADM_student_ELL_Cache]
					   ([StudentUSI]
					   ,[ELL])
			SELECT [StudentUSI]
				  ,[ELL]
			  FROM [dbo].[v_EADM_student_ELL_BuildCache]

			Delete dbo.EADM_student_gifted_Cache
			INSERT INTO [dbo].[EADM_student_gifted_Cache]
					   ([StudentUSI]
					   ,[gifted])
			SELECT [StudentUSI]
				  ,[gifted]
			  FROM [dbo].[v_EADM_student_gifted_BuildCache]

			Delete dbo.EADM_StudentAssessment_Cache
			INSERT INTO [dbo].[EADM_StudentAssessment_Cache]
					   ([StudentUSI]
					   ,[AdministrationDate]
					   ,[AdministrationEndDate]
					   ,[SerialNumber]
					   ,[AdministrationLanguageDescriptorId]
					   ,[AdministrationEnvironmentTypeId]
					   ,[RetestIndicatorTypeId]
					   ,[ReasonNotTestedTypeId]
					   ,[WhenAssessedGradeLevelDescriptorId]
					   ,[EventCircumstanceTypeId]
					   ,[EventDescription]
					   ,[Id]
					   ,[LastModifiedDate]
					   ,[CreateDate]
					   ,[AssessmentIdentifier]
					   ,[StudentAssessmentIdentifier]
					   ,[Namespace])
			SELECT [StudentUSI]
				  ,[AdministrationDate]
				  ,[AdministrationEndDate]
				  ,[SerialNumber]
				  ,[AdministrationLanguageDescriptorId]
				  ,[AdministrationEnvironmentTypeId]
				  ,[RetestIndicatorTypeId]
				  ,[ReasonNotTestedTypeId]
				  ,[WhenAssessedGradeLevelDescriptorId]
				  ,[EventCircumstanceTypeId]
				  ,[EventDescription]
				  ,[Id]
				  ,[LastModifiedDate]
				  ,[CreateDate]
				  ,[AssessmentIdentifier]
				  ,[StudentAssessmentIdentifier]
				  ,[Namespace]
			  FROM [dbo].[v_EADM_StudentAssessment_BuildCache]

			Delete dbo.EADM_StudentSchoolYears_Cache
			INSERT INTO [dbo].[EADM_StudentSchoolYears_Cache]
					   ([studentusi]
					   ,[schoolyear])
			SELECT [studentusi]
				  ,[schoolyear]
			  FROM [dbo].[v_EADM_StudentSchoolYears_BuildCache]

			Delete dbo.EADM_SummaryView_Cache
			INSERT INTO [dbo].[EADM_SummaryView_Cache]
					   ([race]
					   ,[Absences]
					   ,[StarMathAug2018_NCE]
					   ,[StarMathAug2018_SCALE]
					   ,[StarMathDec2018_NCE]
					   ,[StarMathDec2018_SCALE]
					   ,[StudentUSI]
					   ,[FirstName]
					   ,[MiddleName]
					   ,[LastSurname]
					   ,[StudentUniqueId]
					   ,[BirthDate]
					   ,[GenderCode]
					   ,[GenderDesc]
					   ,[DisabilityStatus]
					   ,[EconomicDisadvantaged]
					   ,[Gifted]
					   ,[ELL]
					   ,[GradeLevel]
					   ,[GradeLevelDescriptorId]
					   ,[EntryDate]
					   ,[EducationOrganizationId]
					   ,[NameOfInstitution]
					   ,[FSAMO_2017_SCALE]
					   ,[FSAMO_2017_NCE]
					   ,[FSAMO_2016_SCALE]
					   ,[FSAMO_2016_NCE]
					   ,[FSAMO_2016_PerfLevelDescriptorId]
					   ,[FSA_2016_PerformanceLevel]
					   ,[FSAMO_2017_PerfLevelDescriptorId]
					   ,[FSA_2017_PerformanceLevel]
					   ,[StarMathAug2018_PerfLevelDescriptorId]
					   ,[StarMathAug2018_PerformanceLevel]
					   ,[StarMathDec2018_PerfLevelDescriptorId]
					   ,[StarMathDec2018_PerformanceLevel]
					   ,[HispanicLatinoEthnicity]
					   ,[FSAMO_2016_NationalPercentile]
					   ,[FSAMO_2017_NationalPercentile]
					   ,[StarMathAug2018_NationalPercentile]
					   ,[StarMathDec2018_NationalPercentile]
					   ,[IXL]
					   ,[FSAMO_2016_PerfMinScore]
					   ,[FSAMO_2017_PerfMinScore]
					   ,[StarMathAug2018_PerfMinScore]
					   ,[StarMathDec2018_PerfMinScore]
					   ,[FSAMO_2016_PerfMaxScore]
					   ,[FSAMO_2017_PerfMaxScore]
					   ,[StarMathAug2018_PerfMaxScore]
					   ,[StarMathDec2018_PerfMaxScore])
			SELECT [race]
				  ,[Absences]
				  ,[StarMathAug2018_NCE]
				  ,[StarMathAug2018_SCALE]
				  ,[StarMathDec2018_NCE]
				  ,[StarMathDec2018_SCALE]
				  ,[StudentUSI]
				  ,[FirstName]
				  ,[MiddleName]
				  ,[LastSurname]
				  ,[StudentUniqueId]
				  ,[BirthDate]
				  ,[GenderCode]
				  ,[GenderDesc]
				  ,[DisabilityStatus]
				  ,[EconomicDisadvantaged]
				  ,[Gifted]
				  ,[ELL]
				  ,[GradeLevel]
				  ,[GradeLevelDescriptorId]
				  ,[EntryDate]
				  ,[EducationOrganizationId]
				  ,[NameOfInstitution]
				  ,[FSAMO_2017_SCALE]
				  ,[FSAMO_2017_NCE]
				  ,[FSAMO_2016_SCALE]
				  ,[FSAMO_2016_NCE]
				  ,[FSAMO_2016_PerfLevelDescriptorId]
				  ,[FSA_2016_PerformanceLevel]
				  ,[FSAMO_2017_PerfLevelDescriptorId]
				  ,[FSA_2017_PerformanceLevel]
				  ,[StarMathAug2018_PerfLevelDescriptorId]
				  ,[StarMathAug2018_PerformanceLevel]
				  ,[StarMathDec2018_PerfLevelDescriptorId]
				  ,[StarMathDec2018_PerformanceLevel]
				  ,[HispanicLatinoEthnicity]
				  ,[FSAMO_2016_NationalPercentile]
				  ,[FSAMO_2017_NationalPercentile]
				  ,[StarMathAug2018_NationalPercentile]
				  ,[StarMathDec2018_NationalPercentile]
				  ,[IXL]
				  ,[FSAMO_2016_PerfMinScore]
				  ,[FSAMO_2017_PerfMinScore]
				  ,[StarMathAug2018_PerfMinScore]
				  ,[StarMathDec2018_PerfMinScore]
				  ,[FSAMO_2016_PerfMaxScore]
				  ,[FSAMO_2017_PerfMaxScore]
				  ,[StarMathAug2018_PerfMaxScore]
				  ,[StarMathDec2018_PerfMaxScore]
			  FROM [dbo].[v_EADM_SummaryView_BuildCache]
		COMMIT TRAN -- Transaction Success!

	END TRY
	BEGIN CATCH
	IF @@TRANCOUNT > 0
		ROLLBACK TRAN --RollBack in case of Error
		-- you can Raise ERROR with RAISEERROR() Statement including the details of the exception
	END CATCH
end
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[54] 4[18] 2[9] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "n"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 389
               Right = 338
            End
            DisplayFlags = 280
            TopColumn = 7
         End
         Begin Table = "s"
            Begin Extent = 
               Top = 39
               Left = 917
               Bottom = 168
               Right = 1137
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "v_EADM_FACT_DomainLevelScores"
            Begin Extent = 
               Top = 191
               Left = 917
               Bottom = 420
               Right = 1109
            End
            DisplayFlags = 280
            TopColumn = 1
         End
         Begin Table = "ab"
            Begin Extent = 
               Top = 88
               Left = 406
               Bottom = 326
               Right = 669
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "race"
            Begin Extent = 
               Top = 106
               Left = 718
               Bottom = 201
               Right = 888
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 44
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         W' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_EADM_SummaryView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'idth = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 3645
         Alias = 900
         Table = 3195
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_EADM_SummaryView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_EADM_SummaryView'
GO
