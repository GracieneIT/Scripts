SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[split_part] (
@TargetStr varchar(2000),
@SearchedStr varchar(1),
@Occurrence int
)

RETURNS varchar(1024)
as
begin
	declare @currPos int, @pos int, @counter int, @ret varchar(1000), @TargetStrLen int, @TotalOccurences  int
	set @TargetStrLen  = LEN (@TargetStr)
	set @TotalOccurences = DATALENGTH(@TargetStr)-DATALENGTH(REPLACE(@TargetStr,@SearchedStr,''))
	if @TargetStrLen = 0
		RETURN(@ret)
	else
	begin
		set @pos = CHARINDEX(@SearchedStr, @TargetStr,  1)
		if @pos = 0
			RETURN(@ret)
		else
		begin
			set @counter = 1		
			if @Occurrence = 1 
				set @ret = LEFT(@TargetStr, @pos -1) 
			else
			begin
				while (@counter < @Occurrence)
				begin
					set @currPos = CHARINDEX(@SearchedStr, @TargetStr, @pos + 1)
					set @counter = @counter + 1
					if @currPos =0
						set @ret= SUBSTRING (@TargetStr, @pos +1, @TargetStrLen) 
					else
						set @ret = SUBSTRING(@TargetStr, @pos+1, @currPos-@pos-1)
					set @pos = @currPos	
				end
					if (@counter > @TotalOccurences+1)
					set @ret = ''
			end
		end
	end
		RETURN(@ret)
end