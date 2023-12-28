SELECT DATAS, to_char(datas, 'HH24') AS hour, CITY_ID, ADVANCE_TIME, TEMP
FROM NWP.GROUND_DATA
WHERE CITY_ID = 936 
      AND model_id = 5
      /*AND ADVANCE_TIME = 1 */
      AND datas >= '25-12-2023'
      AND to_char(datas, 'HH24') = '00'
ORDER BY datas, advance_time;
