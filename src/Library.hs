module Library where
import PdePreludat
--esExceso:: int -> bool

{- (esExceso velocidad) = (velocidad > 60)
 def. de la funcion             codigo propiamente dicho       

-} 
limiteVelocidad = 130 -- en realidad NO es una asignacion de un valor a una variable, 
                        --sino una FUNCION constante:  f(x) = 130 --> para cualquier x, f va a ser 130

esExceso :: Number -> Bool -- nombreDeLaFuncion :: DOMINIO(tipoDatoEntrante ) -> IMAGEN(tipoDatoSaliente)
esExceso velocidad = velocidad > limiteVelocidad

valorMulta velocidad -- acá hay un '=' implícito, lo de abajo es una funcion por partes: 
    | esExceso velocidad = velocidad * 1000 
    | otherwise = 0;
    {-al llamar a la funcion valorMulta con el valor 150, se hace valorMulta(150), y luego
    evalua la 1ra parte de la funcion: exExceso(150) --> como sí lo es, esExceso vale TRUE,
    y como vale TRUE, valorMulta va a valer lo que sea que esté luego del "TRUE ="  -}

    puntosDeDescuento valor
    | valor > 150000 = 10
    | valor > 100000 = 5
    | otherwise = 0



puntosPorVelocidad velocidad=
    (puntosDeDescuento . valorMulta) velocidad