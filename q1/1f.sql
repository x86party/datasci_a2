/*
	Return number of unique documents that contain both
	the term 'transactions' and the term 'world'
*/

select docid from Frequency where term='world'
intersect
select docid from Frequency where term='transactions'


;
/* Return all documents with more than 300 terms 

select count(*) from
(
	select docid from Frequency
	group by docid
	having sum(count) > 300
)
;
*/