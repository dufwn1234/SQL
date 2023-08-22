SELECT a.ANIMAL_ID, a.ANIMAL_TYPE, a.NAME
    from ANIMAL_OUTS as a
    join ANIMAL_INS as b on a.ANIMAL_ID=b.ANIMAL_ID
    where b.SEX_UPON_INTAKE like 'Intact%' 
        and a.SEX_UPON_OUTCOME in ('Neutered Male','Spayed Female')