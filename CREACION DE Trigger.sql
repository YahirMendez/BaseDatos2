CREATE OR REPLACE FUNCTION validar_monto_pago()
RETURNS TRIGGER
AS $$
BEGIN
    IF NEW.monto >= 20000 THEN
        RAISE EXCEPTION
        'No se puede realizar la inscripción. Excedio le monto maximo de $ 20,000.';
    END IF;
    RETURN NEW;

END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_validar_monto_pago
BEFORE INSERT
ON pagos
FOR EACH ROW
EXECUTE FUNCTION validar_monto_pago();

INSERT INTO pagos (id_estudiante, id_periodo, concepto, monto, metodo_pago, referencia) VALUES
(4, 2, 'Inscripción', 3500, 'Transferencia', 'REF005');

INSERT INTO pagos (id_estudiante, id_periodo, concepto, monto, metodo_pago, referencia) VALUES
(4, 2, 'Inscripción', 35000, 'Transferencia', 'REF006');