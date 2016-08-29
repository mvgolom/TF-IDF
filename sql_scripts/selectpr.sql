select DATE_FORMAT("%Y-%m-01", substr(prh.created_at, 0, 20)) as month, 
 count(*) as opened 
from pull_requests pr, pull_request_history prh, projects p, users u 
where pr.id = prh.pull_request_id 
  and p.id = pr.base_repo_id 
  and p.owner_id = u.id 
  and p.name = 'RxJava' 
  and u.login = 'Netflix'
  and prh.action = 'opened' 
group by month