object paquete{
    var estaPago = false
    var destino = puenteDeBrooklyn
    var mensajero = neo

    method puedeSerEntregado(){
        return estaPago and destino.cumpleRestricciones(mensajero)
    }

    method pagar(){
        estaPago = true
    }

    method destino (_destino){
        destino = _destino 
    }

    method destino(){
        return destino
    }

    method mensajero(_mensajero){
        mensajero = _mensajero
    }

    method mensajero(){
        return mensajero
    }
}

object puenteDeBrooklyn{
    method cumpleRestricciones (mensajero){
        return mensajero.peso() < 1000
    }
}

object laMatrix{
    method cumpleRestricciones (mensajero){
        return mensajero.puedeLlamar()
    }
}

object jeanGray{
    const peso = 65
    const puedeLlamar = true

    method peso(){
        return peso
    }

    method puedeLlamar(){
        return puedeLlamar
    }
}

object neo{
    const peso = 0
    var puedeLlamar = true

    method peso(){
        return peso
    }

    method puedeLlamar (tieneCredito){
        puedeLlamar = tieneCredito
    }

    method puedeLlamar(){
        return puedeLlamar
    }
}

object saraConnor{
    var pesoPropio = 60
    var vehiculo = moto
    const puedeLlamar = false

    method peso(){
        return pesoPropio + vehiculo.peso()
    }

    method pesoPropio(_pesoPropio){
        pesoPropio = _pesoPropio
    }

    method pesoPropio(){
        return pesoPropio
    }

    method vehiculo (_vehiculo){
        vehiculo = _vehiculo
    }

    method vehiculo(){
        return vehiculo
    }

    method puedeLlamar(){
        return puedeLlamar
    }
}

object moto{
    method peso(){
        return 100
    }
}

object camion{
    var cantidadDeAcoplados = 0

    method peso(){
        return 500 + 500 * cantidadDeAcoplados
    }

    method cantidadDeAcoplados (_cantidadDeAcoplados){
        cantidadDeAcoplados = _cantidadDeAcoplados
    }

    method cantidadDeAcoplados(){
        return cantidadDeAcoplados
    }
}