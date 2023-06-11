
CREATE   FUNCTION dbo.fn_QueryTextToXML(@Query VARCHAR(MAX))
RETURNS XML
AS
BEGIN
  DECLARE @XML XML
  SELECT @XML = TRY_CONVERT(XML, ISNULL(TRY_CONVERT(XML, 
                                        '<?query --' +
                                        REPLACE
                                                        (
                                                            REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(
                                                            REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(
                                                            REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(
                                                                CONVERT
                                                                (
                                                                    VARCHAR(MAX),
                                                                    N'--' + NCHAR(13) + NCHAR(10) + @Query + NCHAR(13) + NCHAR(10) + N'--' COLLATE Latin1_General_Bin2
                                                                ),
                                                                NCHAR(31),N'?'),NCHAR(30),N'?'),NCHAR(29),N'?'),NCHAR(28),N'?'),NCHAR(27),N'?'),NCHAR(26),N'?'),NCHAR(25),N'?'),NCHAR(24),N'?'),NCHAR(23),N'?'),NCHAR(22),N'?'),
                                                                NCHAR(21),N'?'),NCHAR(20),N'?'),NCHAR(19),N'?'),NCHAR(18),N'?'),NCHAR(17),N'?'),NCHAR(16),N'?'),NCHAR(15),N'?'),NCHAR(14),N'?'),NCHAR(12),N'?'),
                                                                NCHAR(11),N'?'),NCHAR(8),N'?'),NCHAR(7),N'?'),NCHAR(6),N'?'),NCHAR(5),N'?'),NCHAR(4),N'?'),NCHAR(3),N'?'),NCHAR(2),N'?'),NCHAR(1),N'?'),
                                                            NCHAR(0),
                                                            N'')
                                            + '--?>'),
                                '<?query --' + NCHAR(13) + NCHAR(10) +
                                'Could not render the query due to XML data type limitations.' + NCHAR(13) + NCHAR(10) +
                                '--?>'))
  RETURN @XML
END
