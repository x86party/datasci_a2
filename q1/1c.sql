/* 
	πterm( σdocid=10398_txt_earn and count=1(frequency)) 
 	U
 	πterm( σdocid=925_txt_trade and count=1(frequency)) 
*/

select count(*) from
(
	select term from Frequency where docid='925_txt_trade' and count=1
	union 
	select term from Frequency where docid='10398_txt_earn' and count=1
);

/*
select * from (
    select * from Frequency where docid='10398_txt_earn' and count=1
    )
union
select * from (
    select * from Frequency where docid='925_txt_trade' and count=1
    )
;*/