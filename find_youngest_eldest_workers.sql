use init_db;

-- Вибрати наймолодшого працівника
with YoungestWorker as (
    select
        'YOUNGEST' as type,
        NAME,
        BRITHDAY
    from
        worker
    order by
        BRITHDAY asc
    limit 1
)

-- Вибрати найстаршого працівника
, EldestWorker  as (
    select
        'OLDEST' as type,
        NAME,
        BRITHDAY
    from
        worker
    order by
        BRITHDAY asc
    limit 1
)

-- Об'єднати результати
select * from YoungestWorker
union all
select * from EldestWorker;