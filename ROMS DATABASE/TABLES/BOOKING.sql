CREATE TABLE BOOKINGS
(
ID INT PRIMARY KEY,
PROPERTY_ID INT,
USERID INT,
CHECK_IN_DATE DATETIME,
CHECK_OUT_DATE DATETIME,
PRICE_FOR_STAY FLOAT,
TAX_PAID FLOAT,
SITE_FEES FLOAT,
AMOUNT_PAID FLOAT,
IS_REFUND BIT,
CANCAL_DATE DATETIME,
REFUND_PAID FLOAT,
TRANSACTION_ID INT,
BOOKING_DATE DATETIME,
CREATED DATETIME,
MODIFIED DATETIME,
STATUS TINYINT,
	CONSTRAINT FK_PROPERTY_3 FOREIGN KEY(PROPERTY_ID) REFERENCES PROPERTIES(ID),
	CONSTRAINT FK_USER_3 FOREIGN KEY(USERID) REFERENCES USERS(ID),
	CONSTRAINT FK_TRANSACTION FOREIGN KEY(TRANSACTION_ID) REFERENCES TRANSACTIONS(ID)
)