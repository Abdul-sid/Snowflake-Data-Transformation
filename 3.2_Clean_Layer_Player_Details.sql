USE schema cricket.clean

create or replace table player_clean_tbl as 
select 
    rcm.info:match_type_number::int as match_type_number, 
    p.path::text as country,
    team.value:: text as player_name,
    stg_file_name ,
    stg_file_row_number,
    stg_file_hashkey,
    stg_modified_ts
from cricket.raw.match_raw_tbl rcm,
lateral flatten (input => rcm.info:players) p,
lateral flatten (input => p.value) team;

SELECT * FROM player_clean_tbl

desc table player_clean_tbl

ALTER TABLE player_clean_tbl
MODIFY COLUMN MATCH_TYPE_NUMBER SET NOT NULL;

ALTER TABLE player_clean_tbl
MODIFY COLUMN COUNTRY SET NOT NULL;

ALTER TABLE player_clean_tbl
MODIFY COLUMN PLAYER_NAME SET NOT NULL;

ALTER TABLE cricket.clean.match_detail_clean
add constraint pk_match_type_number primary key (match_type_number)

ALTER TABLE player_clean_tbl
add constraint fk_match_id
foreign key (match_type_number)
references cricket.clean.match_detail_clean (match_type_number)