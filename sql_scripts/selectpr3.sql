SELECT PR.head_repo_id, COUNT(PR.id)
FROM pull_requests PR
GROUP BY (PR.head_repo_id);