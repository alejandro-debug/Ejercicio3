#Lectura y comprension de script basico grails.

#Se busca obtener como output del script, una tabla con tres columnas: "Sucursal", "Fecha del evento" y "Descripcion".

import me.*;
def upsPullTrkService = ctx.getBean('upsPullTrkService')
def s = Shipment.get(27528954729)
def tn = s.trackingNumber
def trackingData = upsPullTrkService.getTrkEvents([tn])
trackingData.each { td ->
println "------------------------------------------------"
println "${td.sucursal} - ${td.eventDate} - ${td.description}"
}
"Done"