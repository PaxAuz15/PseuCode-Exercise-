Algoritmo JP050
	Escribir "Programa para Coordinacion Academica"
	exploracionNota = 0
	acumuladorCalificacion = 0
	sintesisNota = 0
	parcialNota = 0
	procedimentalNota = 0
	investigacionNota = 0
	acumuladorNotaFinal = 0
	promedioNotaFinalGrupal = 0

	Para contadorEstudiante<-1 Hasta 5 Hacer
		Escribir "Digite las calificaciones del estudiante " contadorEstudiante ", estas deben estar entre 1 y 5"

		Repetir
			Escribir "La nota de exploracion"
			Leer exploracionNota
		Hasta Que exploracionNota >= 1 Y exploracionNota <= 5

		Repetir
			Escribir "Escriba 1 si es asignatura de alta intensidad"
			Escribir "Escriba 2 si es asignatura de baja intensidad"
			Leer intensidadAsignatura
		Hasta Que intensidadAsignatura =1 O intensidadAsignatura = 2

		Si intensidadAsignatura = 1 Entonces
			Para contadorIntensidad1 <-1 Hasta 4 Hacer
				Repetir
					Escribir  "Digite la calificacion #" contadorIntensidad1
					Leer investigacionGuiada
					acumuladorCalificacion = acumuladorCalificacion + investigacionGuiada
				Hasta Que investigacionGuiada >= 1 Y investigacionGuiada <= 5
			FinPara
			investigacionNota = acumuladorCalificacion / 4
			acumuladorCalificacion = 0
		SiNo
			Para contadorIntensidad1 <-1 Hasta 2 Hacer
				Repetir
					Escribir  "Digite la calificacion #" contadorIntensidad1
					Leer investigacionGuiada
					acumuladorCalificacion = acumuladorCalificacion + investigacionGuiada
				Hasta Que investigacionGuiada >= 1 Y investigacionGuiada <= 5
			FinPara
			investigacionNota = acumuladorCalificacion / 2
			acumuladorCalificacion = 0
		Fin Si

		Repetir
			Escribir "La nota de sintesis"
			Leer sintesisNota
		Hasta Que sintesisNota >= 1 Y sintesisNota <= 5
		Repetir
			Escribir "La nota de parcial"
			Leer parcialNota
		Hasta Que parcialNota >= 1 Y parcialNota <= 5
		Repetir
			Escribir "La nota de meta procedimental"
			Leer procedimentalNota
		Hasta Que procedimentalNota >= 1 Y procedimentalNota <= 5

		notaExploracion = exploracionNota * 0.10
		notaInvestigacion = investigacionNota * 0.35
		notaSintesis = sintesisNota * 0.25
		notaParcial = parcialNota * 0.20
		notaProcedimental = procedimentalNota * 0.10
		calificacionFinal = notaExploracion + notaInvestigacion + notaSintesis + notaParcial + notaProcedimental

		Si calificacionFinal<4 Entonces
			Escribir  "El estudiante #" contadorEstudiante " ha reprobado. Con un promedio de " calificacionFinal
		SiNo
			Escribir "El estudiante #" contadorEstudiante " esta aprobado. Con un promedio de " calificacionFinal
		Fin Si

		acumuladorNotaFinal = acumuladorNotaFinal + calificacionFinal
		exploracionNota = 0
		investigacionNota=0
		sintesisNota = 0
		parcialNota = 0
		procedimentalNota = 0
		notaExploracion = 0
		notaInvestigacion = 0
		notaParcial = 0
		notaProcedimental = 0
		notaSintesis = 0
		calificacionFinal = 0
		acumuladorCalificacion = 0

	Fin Para

	promedioNotaFinalGrupal = acumuladorNotaFinal / 5
	Escribir "El promedio de calificaciones es de " promedioNotaFinalGrupal

FinAlgoritmo