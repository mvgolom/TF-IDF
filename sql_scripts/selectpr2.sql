use ghtorrent_restore;
SELECT count(*)
FROM projects p, pull_requests pr
WHERE pr.base_repo_id = p.id