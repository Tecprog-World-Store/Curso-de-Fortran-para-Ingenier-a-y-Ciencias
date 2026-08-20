# Curso de Fortran para Ingeniería y Ciencias
## Tecprog World E.I.R.L. — TW EDUCA
**Edición 2026 | Windows 11 | Visual Studio Community 2026 | Intel oneAPI Base Toolkit + HPC Toolkit | Intel Fortran Compiler 2026**

Este repositorio constituye la edición actualizada del curso de Fortran orientado a estudiantes, ingenieros y profesionales de ciencias que requieren desarrollar, compilar y verificar programas de cálculo científico en Windows 11. La organización mantiene la secuencia temática histórica del curso —introducción, operaciones básicas, arrays, estructuras de control, entrada/salida, funciones, subrutinas y módulos— y añade una aplicación integradora de ingeniería, evaluaciones rápidas por módulo y una evaluación final con calificación de 0 a 20.

## 1. Entorno de desarrollo adoptado

El curso se desarrolla con el mismo ecosistema de compilación empleado en trabajos técnicos de SWAT+:

- Windows 11 de 64 bits.
- Visual Studio Community 2026 con herramientas de desarrollo C++.
- Intel oneAPI Base Toolkit.
- Intel oneAPI HPC Toolkit.
- Intel Fortran Compiler 2026.
- Inicialización del entorno Intel mediante:
  `C:\Program Files (x86)\Intel\oneAPI\setvars.bat`

Los scripts incluidos detectan primero `ifx` y, como compatibilidad, intentan utilizar `ifort` cuando este se encuentre disponible en la instalación. El objetivo es que cada ejemplo pueda compilarse tanto desde una consola Intel oneAPI como desde PowerShell después de cargar el entorno de compilación.

## 2. Resultados de aprendizaje

Al finalizar el curso, el participante podrá:

1. Crear, compilar y ejecutar programas Fortran en Windows 11.
2. Declarar variables, constantes y expresiones numéricas con control de tipos.
3. Procesar vectores y matrices mediante arrays.
4. Implementar decisiones y ciclos con estructuras de control.
5. Leer y escribir datos desde consola y archivos externos.
6. Implementar funciones y subrutinas con interfaces claras.
7. Organizar código reutilizable mediante módulos.
8. Integrar los elementos anteriores en un problema de ingeniería con resultados numéricos verificables.

## 3. Arquitectura académica

| Módulo | Tema | Evidencia principal |
|---|---|---|
| 00 | Instalación y compilación | Programa `hola_fortran.f90` compilado |
| 01 | Introducción | Variables, tipos y estructura de programa |
| 02 | Operaciones básicas | Cálculos aritméticos y conversión de unidades |
| 03 | Arrays y matrices | Operaciones con vectores y matrices |
| 04 | Estructuras de control | `if`, `select case`, `do`, `exit`, `cycle` |
| 05 | Entrada/salida (I/O) | Lectura y escritura de archivos |
| 06 | Funciones | Funciones con `result` y argumentos |
| 07 | Subrutinas | `subroutine`, `call`, `intent` |
| 08 | Módulos | `module`, `contains`, `use` |
| 09 | Aplicación de ingeniería | Cálculo hidráulico con archivo de entrada |
| 10 | Evaluaciones públicas | Cuestionarios y hoja de respuestas |
| PRIVADO | Claves Tecprog World | Respuestas y utilidad de calificación |

## 4. Convenciones del curso

- Los fuentes modernos utilizan extensión `.f90`.
- Se recomienda `implicit none` en todos los programas.
- Los ejemplos priorizan precisión, legibilidad y reproducibilidad.
- Los resultados esperados se documentan cuando son necesarios para validar el aprendizaje.
- La bibliografía recomendada se lista mediante referencias; no se redistribuyen libros ni archivos protegidos por derechos de autor.

## 5. Compilación rápida

Abra **PowerShell** y ejecute, desde el módulo correspondiente:

```powershell
.\compilar.ps1
```

El script busca la instalación de oneAPI, ejecuta `setvars.bat`, detecta el compilador Intel disponible y genera el ejecutable en la carpeta `build`.

También puede compilar manualmente desde una consola Intel oneAPI:

```powershell
ifx programa.f90 /exe:programa.exe
```

o, en instalaciones que aún incluyan el compilador clásico:

```powershell
ifort programa.f90 /exe:programa.exe
```

## 6. Sistema de evaluación

Cada módulo dispone de una evaluación rápida de **5 preguntas**, con **4 puntos por respuesta correcta**, para una nota máxima de **20 puntos**.

Escala sugerida:

| Nota | Interpretación |
|---:|---|
| 0–10 | Requiere reforzamiento |
| 11–13 | Aprobado básico |
| 14–16 | Buen dominio |
| 17–18 | Muy buen dominio |
| 19–20 | Dominio sobresaliente |

La **evaluación final** también se califica de 0 a 20 y combina preguntas conceptuales con resultados numéricos verificables. Las claves oficiales no se incluyen en la distribución pública; se conservan en un paquete privado para Tecprog World E.I.R.L.

## 7. Certificación

Para fines de certificación empresarial se recomienda exigir:

- cumplimiento de las actividades prácticas;
- entrega de la evaluación final;
- nota mínima aprobatoria definida por Tecprog World;
- registro del participante y de su calificación;
- código interno de certificado.

Ejemplo de código:
`TW-FORTRAN-2026-0001`

## 8. Bibliografía recomendada

- Metcalf, M., Reid, J., & Cohen, M. *Modern Fortran Explained*. Oxford University Press.
- Chapman, S. J. *Fortran for Scientists and Engineers*. McGraw-Hill.
- Chivers, I., & Sleightholme, J. *Introduction to Programming with Fortran*. Springer.
- Curcic, M. *Modern Fortran: Building Efficient Parallel Applications*. Manning.
- Intel. *Intel Fortran Compiler Developer Guide and Reference*.
- Fortran-lang Community. *Fortran Programming Language — Learn and Documentation*.

## 9. Licencia y uso

El código desarrollado específicamente para esta edición debe publicarse bajo la licencia elegida por Tecprog World E.I.R.L. No se recomienda copiar al nuevo repositorio libros, archivos binarios ni material editorial del repositorio histórico. Las referencias bibliográficas son únicamente recomendaciones de estudio.

## 10. Organización

**Tecprog World E.I.R.L. — TW EDUCA**  
Curso: **Fortran para Ingeniería y Ciencias**  
Edición: **2026**
