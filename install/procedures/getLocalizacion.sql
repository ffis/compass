IF OBJECT_ID ( 'dbo.getLocalizacion', 'P' ) IS NOT NULL
    DROP PROCEDURE dbo.getLocalizacion;
GO
CREATE PROCEDURE dbo.getLocalizacion
AS
    SET NOCOUNT ON;
    SELECT LastName, FirstName, JobTitle, Department
    FROM HumanResources.vEmployeeDepartment;
GO
