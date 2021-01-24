CREATE FUNCTION BELIRLI_ARALIKTA_REZERVASYON_YAPAN_MUŞTERILER(@ENAZ INT ,@ENCOK INT)
RETURNS @VALUES TABLE
(
	FIRST_NAME NVARCHAR(200),
	LAST_NAME NVARCHAR(200),
	PRICE_FOR_STAY INT
)
AS
BEGIN
	INSERT @VALUES 
	SELECT U.FIRST_NAME,U.LAST_NAME,B.PRICE_FOR_STAY
	FROM BOOKINGS B
	INNER JOIN USERS U ON B.USERID = U.ID
	INNER JOIN PROPERTIES P ON B.PROPERTY_ID = P.ID
	WHERE PRICE_FOR_STAY>@ENAZ AND PRICE_FOR_STAY<@ENCOK
RETURN
END

SELECT * FROM BELIRLI_ARALIKTA_REZERVASYON_YAPAN_MUŞTERILER(800,1000)