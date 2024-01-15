BEGIN TRY
    SELECT 1/0;
END TRY

BEGIN CATCH
    SELECT
        ERROR_NUMBER() ErrorNumber,
        ERROR_SEVERITY() errorSeverity,
        ERROR_STATE() ErrorState,
        ERROR_PROCEDURE() ErrorProcedure,
        ERROR_LINE() ErrorLine,
        ERROR_MESSAGE() ErrorMessage;
END CATCH;