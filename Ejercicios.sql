-- Crear una tabla
CREATE TABLE usuarios (
    id NUMBER PRIMARY KEY,
    user_id number NOT NULL,
    seniority VARCHAR2(50) NOT NULL
);

-- Insertar un registros
INSERT INTO "DEIMOS"."USUARIOS" (ID, USER_ID, SENIORITY) VALUES ('5', '15243', 'senior');

-- Confirmar los cambios
COMMIT;

-- Consultar tu tabla
SELECT * FROM usuarios;