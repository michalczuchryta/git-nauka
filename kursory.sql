DECLARE
    CURSOR C1 IS
        SELECT * 
        FROM pracownicy;
    l_zmienna pracownicy.nazwisko%TYPE;
    
BEGIN
    OPEN C1;
        LOOP
        FETCH C1 INTO l_zmienna;
            UPDATE pracownicy
            SET nazwisko = UPPER(nazwisko)
            WHERE nazwisko = l_zmienna;
            EXIT WHEN C1%ROWCOUNT = 5;
        END LOOP;
    CLOSE C1;
END;
/