Retornam ou não valor.

Sintaxe.

CREATE OR REPLACE FUNCTION calculo
(numero in number)
RETURN number
IS
	BEGIN
     RETURN (numero + 30)
    END calculo;
