declare @idtabela int, @tabela varchar(255), @coluna varchar(255), @valorProcurado varchar(255)

--Coloque aqui a palavra ou expressão que deseja procurar
set @valorProcurado = 'Funcionário-NET'

drop table ##tmpFindString

create table ##tmpFindString (table_name varchar(255), string varchar(255))

DECLARE db_cursor CURSOR FOR  
select id from sys.sysobjects where xtype = 'u'
OPEN db_cursor   
FETCH NEXT FROM db_cursor INTO @idtabela

WHILE @@FETCH_STATUS = 0   
BEGIN   

DECLARE db_cursorColunas CURSOR FOR  
select a.name as tabela, b.name as coluna from sys.sysobjects a
inner join
sys.syscolumns b
on a.id = b.id 
where b.xtype in (167,175,231,239) and a.xtype = 'u'
and a.id = @idtabela
/*
167 varchar
175 char
231 nvarchar
239 nchar*/
OPEN db_cursorColunas   
FETCH NEXT FROM db_cursorColunas INTO @tabela, @coluna

WHILE @@FETCH_STATUS = 0   
BEGIN   
exec('
insert ##tmpFindString
select '''  + @tabela + ''', string = '''+@valorProcurado+'''
from ' + @tabela + ' where '+@coluna+' like ''%'+@valorProcurado+'%''')
   
   FETCH NEXT FROM db_cursorColunas INTO @tabela, @coluna 
END   

CLOSE db_cursorColunas   
DEALLOCATE db_cursorColunas 
   
   FETCH NEXT FROM db_cursor INTO @idtabela 
END   

CLOSE db_cursor   
DEALLOCATE db_cursor 

   
select distinct * from ##tmpFindString