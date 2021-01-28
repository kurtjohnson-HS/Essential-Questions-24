/*
The following SQL adds Assessment Reporting Method descriptors for Mastery Connect data imports
*/

--- CHANGE TO YOUR ODS DB
use EdFi_Ods
GO

DECLARE @namespace VARCHAR(MAX)= 'http://www.curriculumassociates.com';

DECLARE @CodeValues TABLE (Value NVARCHAR(50))
INSERT INTO @CodeValues VALUES ('Time on Task (minutes)')
INSERT INTO @CodeValues VALUES ('Duration (min)')
INSERT INTO @CodeValues VALUES ('Quantile Range')
INSERT INTO @CodeValues VALUES ('Lexile Range')
INSERT INTO @CodeValues VALUES ('Annual Typical Growth Measure')
INSERT INTO @CodeValues VALUES ('Annual Stretch Growth Measure')
INSERT INTO @CodeValues VALUES ('Mid On Grade Level Scale Score')
INSERT INTO @CodeValues VALUES ('Rush Flag')

DECLARE @value VARCHAR(50)

DECLARE db_cursor CURSOR FOR  
SELECT Value FROM @CodeValues
OPEN db_cursor   
FETCH NEXT FROM db_cursor INTO @value   

WHILE @@FETCH_STATUS = 0   
BEGIN   
		IF NOT EXISTS (Select CodeValue from [edfi].[Descriptor] d INNER JOIN [edfi].[AssessmentReportingMethodDescriptor] armd ON armd.AssessmentReportingMethodDescriptorId = d.DescriptorId WHERE d.Namespace = @namespace AND CodeValue = @value) 
			BEGIN;
				PRINT 'Inserting ' + @value
				INSERT INTO [edfi].[Descriptor] (Namespace, CodeValue,Description,ShortDescription) VALUES (@namespace, @value, @value, @value);
				INSERT INTO [edfi].[AssessmentReportingMethodDescriptor] VALUES(@@IDENTITY);
			END;

       FETCH NEXT FROM db_cursor INTO @value   
END   

CLOSE db_cursor   
DEALLOCATE db_cursor

GO