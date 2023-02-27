DECLARE 
    TYPE typ_varray IS VARRAY(20) OF pracownicy.nazwisko%TYPE;
    nazwa_kolekcji typ_varray := typ_varray();

BEGIN
    SELECT nazwisko
    BULK COLLECT INTO nazwa_kolekcji
    FROM pracownicy;

    FOR i IN nazwa_kolekcji.FIRST..nazwa_kolekcji.LAST
    LOOP
    dbms_output.put_line(nazwa_kolekcji(i));
    
    END LOOP;
END;
/
