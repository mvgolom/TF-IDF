USE ghtorrent_restore;

SELECT id,name from projects
INTO OUTFILE '/var/lib/mysql-files/projects.csv' 
			FIELDS TERMINATED BY '|' 
			ENCLOSED BY '"' 
			LINES TERMINATED BY '\n';
			/var/lib/mysql-files/query.csv