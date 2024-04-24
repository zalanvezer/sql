CREATE user oybtvs without login
grant SELECT ON Vendeg to oybtvs
execute As user = 'oybtvs'
SELECT * FROM Vendeg
revert
SELECT * FROM Vendeg