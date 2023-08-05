SELECT a.FLAVOR
    from FIRST_HALF as a
    join (select FLAVOR,sum(TOTAL_ORDER) as TOTAL_ORDER  from JULY group by FLAVOR) as b on a.FLAVOR = b.FLAVOR
    group by a.FLAVOR
    order by a.TOTAL_ORDER + b.TOTAL_ORDER desc
    limit 3;