SELECT PRJ.NAME as NAME, PRJ.MONTH_COUNT * sum(WORKER.SALARY) as PRICE
FROM (
  SELECT ID, NAME, DATEDIFF(mm, START_DATE, FINISH_DATE) as MONTH_COUNT
  FROM PROJECT
) as PRJ
join PROJECT_WORKER ON PRJ.ID = PROJECT_WORKER.PROJECT_ID
join WORKER ON WORKER.ID = PROJECT_WORKER.WORKER_ID
GROUP BY PRJ.ID
ORDER BY PRICE DESC;