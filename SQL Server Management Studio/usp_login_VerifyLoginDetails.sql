USE [WindyCityPOS]
GO
/****** Object:  StoredProcedure [dbo].[usp_login_VerifyLoginDetails]    Script Date: 10/22/2020 10:06:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[usp_login_VerifyLoginDetails]
(
	@UserName NVARCHAR(50)
   ,@Password NVARCHAR(50)
)
AS
	BEGIN
		SELECT '#' FROM [dbo].[UserLogin]
		WHERE [UserName] = @UserName
		AND	  [Password] = @Password

	END
