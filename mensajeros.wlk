object paquete{
    var estaPago = false
    var destino = puenteDeBrooklyn
    var mensajero = neo

    method puedeSerEntregado(){
        return estaPago and mensajero.puedeLlevarlo(destino)
    }

    method pagar(){
        estaPago = true
    }

    method destino(){
        return destino
    }

    method destino (_destino){
        destino = _destino 
    }

    method mensajero(){
        return mensajero
    }

    method mensajero(_mensajero){
        mensajero = _mensajero
    }
}

object puenteDeBrooklyn{
    method pasaRestricciones (mensajero){
        return mensajero.peso() < 1000
    }
}

object laMatrix{
    method pasaRestricciones (mensajero){
        return mensajero.puedeLlamar()
    }
}

object jeanGray{
    const peso = 65
    const puedeLlamar = true

    method puedeLlevarlo(destino){
        return destino.pasaRestricciones (self)
    }

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

    method puedeLlevarlo(destino){
        return destino.pasaRestricciones (self)
    }

    method puedeLlamar(){
        return puedeLlamar
    }

    method peso(){
        return peso
    }

    method puedeLlamar (tieneCredito){
        puedeLlamar = tieneCredito
    }
}

object saraConnor{
    var peso = 60
    var vehiculo = moto
    const puedeLlamar = false

    method puedeLlevarlo(destino){
        return destino.pasaRestricciones (self)
    }

    method peso(){
        return peso + vehiculo.peso()
    }

    method peso(_peso){
        peso = _peso
    }

    method vehiculo(){
        return vehiculo
    }

    method vehiculo (_vehiculo){
        vehiculo = _vehiculo
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

    method cantidadDeAcoplados(){
        return cantidadDeAcoplados
    }

    method cantidadDeAcoplados (_cantidadDeAcoplados){
        cantidadDeAcoplados = _cantidadDeAcoplados
    }
}