/* ΕΡΩΤΗΜΑ Α*/
SELECT   BicycleCount,BicycleCategoryPrice,Name FROM  BIKECAT WHERE BicycleCategoryPrice > 5.00 ;
/* ΕΡΩΤΗΜΑ Β*/
SELECT   BicycleCount,BicycleCategoryPrice,Name FROM  BIKECAT WHERE BicycleCategoryPrice > 5.00 AND BicycleCount =0;
/* ΕΡΩΤΗΜΑ Γ*/
SELECT   BicycleCount,BicycleCategoryPrice,Name FROM  BIKECAT WHERE BicycleCategoryPrice < 100.00 OR BicycleCount =0;
/* ΕΡΩΤΗΜΑ Δ*/
SELECT   BicycleCount,BicycleCategoryPrice,Name FROM  BIKECAT WHERE NOT BicycleCount =1;
/* ΕΡΩΤΗΜΑ Ε*/
SELECT   cAFM,bPlateNumber,OutDate,NVL(InDate,TO_DATE ('01/01/2001','DD/MM/YYYY')) FROM BOOKING WHERE InDate IS NULL;
/* ΕΡΩΤΗΜΑ ΣΤ*/
SELECT   BicycleCount,BicycleCategoryPrice,Name FROM  BIKECAT WHERE BicycleCategoryPrice  BETWEEN 5.00 AND 100.00 ;
/* ΕΡΩΤΗΜΑ Ζ*/
SELECT   BicycleCount,BicycleCategoryPrice,Name FROM  BIKECAT WHERE BicycleCategoryPrice IN (5.00,100.00) ;
/* ΕΡΩΤΗΜΑ Η*/
SELECT   BicycleCount,BicycleCategoryPrice,Name FROM  BIKECAT WHERE Name LIKE 'MOU%' ;
/* ΕΡΩΤΗΜΑ Θ*/
SELECT   bPlateNumber,bColor,bWeight,bWheelDiameter,bCost,bBookTimes,BikeCatName FROM BICYCLE WHERE bWheelDiameter>bBookTimes ;
/* ΕΡΩΤΗΜΑ Ι*/
SELECT DISTINCT bColor FROM BICYCLE;
/* ΕΡΩΤΗΜΑ Κ*/
SELECT   cAFM,bPlateNumber,OutDate,InDate FROM BOOKING WHERE InDate= TO_DATE ('12/04/2023','DD/MM/YYYY') ;