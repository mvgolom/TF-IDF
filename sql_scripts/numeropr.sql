use ghtorrent_restore;
SELECT p.id, p.name, count(*)
FROM projects p, pull_requests pr
WHERE pr.base_repo_id = p.id
INTO OUTFILE '/var/lib/mysql-files/projects.csv' 
FIELDS TERMINATED BY ';' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\n';


