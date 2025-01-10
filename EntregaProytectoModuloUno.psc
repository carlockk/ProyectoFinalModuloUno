Algoritmo Costos 
    Definir precio_producto, total, cantidad, costo_fijo_envio, total_neto, precio_final, descuento_total, iva_total como Real 
    Definir desc como Caracter
    Dimension arreglo_de_compras[5]
	
    costo_fijo_envio <- 10; cupon_descuento <- 0.10; iva <- 0.12; descuento <- 0.05; peso_producto_unidad <- 3
	
    // Validar el precio del producto
    Repetir
        Escribir "Ingrese el precio del producto, no puede estar vacío:" 
        Leer precio_producto 
    Hasta Que precio_producto > 0
	
    // Validar la cantidad de productos
    Repetir
        Escribir "Ingrese cantidad a comprar, no puede estar vacío:"
        Leer cantidad 
    Hasta Que cantidad > 0
	
    total <- precio_producto * cantidad
    total_neto <- total 
    descuento_total <- 0
	
    Para i <- 1 Hasta 2 Hacer
        Si (cantidad >= 2) Y (i = 1) Entonces
            descuento_cantidad <- total_neto * descuento
            total_neto <- total_neto - descuento_cantidad
            descuento_total <- descuento_total + descuento_cantidad
        Sino
            Si i = 2 Entonces
                Repetir
                    Escribir "Tiene descuento???(1 = si / 2 = no)"
                    Leer desc
                Hasta Que desc = "1" O desc = "2"
				
                Si desc = "1" Entonces
                    descuento_cupon <- total_neto * cupon_descuento
                    total_neto <- total_neto - descuento_cupon
                    descuento_total <- descuento_total + descuento_cupon
                Fin Si
            Fin Si
        Fin Si
    Fin Para
	
    iva_total <- total_neto * iva
    total_neto <- total_neto + iva_total
	
    costo_envio <- costo_fijo_envio + (peso_producto_unidad * cantidad)
    precio_final <- total_neto + costo_envio
	
    arreglo_de_compras[0] <- precio_producto
    arreglo_de_compras[1] <- descuento_total
    arreglo_de_compras[2] <- iva_total
    arreglo_de_compras[3] <- costo_envio
    arreglo_de_compras[4] <- precio_final
	
    Escribir "Detalle:" 
    Escribir "Precio original: $", arreglo_de_compras[0]
    Escribir "Descuento total: $", arreglo_de_compras[1]
    Escribir "IVA (12%): $", arreglo_de_compras[2]
    Escribir "Costo de envío: $", arreglo_de_compras[3]
    Escribir "Costo final del producto: $", arreglo_de_compras[4]
Fin Algoritmo
