--LISTAR TODAS LAS EMPRESAS POR SUCURSAL
CREATE PROCEDURE SP_L_EMPRESA_01
@COM_ID INT
AS
BEGIN
	SELECT * FROM TM_EMPRESA
	WHERE 
	COM_ID = @COM_ID
END

--OBTENER REGISTRO POR ID
CREATE PROCEDURE SP_L_EMPRESA_02
@EMP_ID INT
AS
BEGIN
	SELECT * FROM TM_EMPRESA
	WHERE 
	EMP_ID = @EMP_ID
	AND EST=1
END

--ELIMINAR REGISTRO 
CREATE PROCEDURE SP_D_EMPRESA_01
@EMP_ID INT
AS
BEGIN
	UPDATE TM_EMPRESA
	SET
		EST=0
	WHERE 
	EMP_ID = @EMP_ID
END

--REGISTRAR NUEVO REGISTRO
CREATE PROCEDURE SP_I_EMPRESA_01
@COM_ID INT,
@EMP_NOM VARCHAR(150),
@EMP_NIT VARCHAR(150)
AS
BEGIN
	INSERT INTO TM_EMPRESA
	(EMP_NOM,EMP_NIT,FECH_CREA,EST)
	VALUES
	(@EMP_NOM,@COM_ID,GETDATE(),1)
END

--ACTUALIZAR REGISTRO
CREATE PROCEDURE SP_U_EMPRESA_01
@EMP_ID INT,
@COM_ID INT,
@EMP_NOM VARCHAR(150),
@EMP_NIT VARCHAR(150)

AS
BEGIN
	UPDATE TM_EMPRESA	
	SET
	EMP_NOM = @EMP_NOM,
	EMP_NIT = @EMP_NIT
	WHERE
	EMP_ID = @EMP_ID
END