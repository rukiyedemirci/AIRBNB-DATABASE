﻿CREATE TRIGGER TRG_REZARVASYONU_GUNCELLEME
ON VW_MUSTERI_REZARVASYONLARI
INSTEAD OF DELETE
AS
BEGIN
SET NOCOUNT ON;
IF(SELECT COUNT(*) FROM deleted) > 0
BEGIN
DECLARE @ID INT
SELECT @ID = ID FROM deleted
UPDATE VW_MUSTERI_REZARVASYONLARI
SET STATUS = 0
WHERE ID = @ID;
IF @@ROWCOUNT = 0
RAISERROR('Eşleşme yok. Pasifleştirme işlemi yapılamadı.', 10, 1)
END;
SET NOCOUNT OFF;
END;