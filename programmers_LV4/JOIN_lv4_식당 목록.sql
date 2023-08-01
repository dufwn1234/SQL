SELECT a.MEMBER_NAME, b.REVIEW_TEXT, DATE_FORMAT(b.REVIEW_DATE,'%Y-%m-%d') as REVIEW_DATE
    FROM MEMBER_PROFILE as a
    JOIN REST_REVIEW as b on a.MEMBER_ID = b.MEMBER_ID
    where a.MEMBER_ID = (select MEMBER_ID from REST_REVIEW group by MEMBER_ID ORDER BY count(*) DESC LIMIT 1)
    order by 3,2;