
# Investigacion Sistemas Operativos 1
[![ima1so.jpg](https://i.postimg.cc/j5Z3Sd13/ima1so.jpg)](https://postimg.cc/Vr0W71mX)


## Tipos de Kernel y sus diferencias

El kernel es el núcleo o componente central del sistema operativo. Este se encarga de gestionar los recursos del sistema, proporcionar una interfaz para las aplicaciones y realizar tareas importantes como la administración de la memoria, la gestión de procesos y el acceso a los dispositivos de hardware. Los diferentes tipos de kernel se clasifican dependiendo de cómo interactúan con el hardware y las aplicaciones.


| Kernel | Definicion     |
| :-------- | :------- |
| Kernel Monolítico |El kernel monolítico es el tipo más antiguo y simple de kernel. En este enfoque, todas las funciones del sistema operativo se ejecutan en un único espacio de direcciones y contexto de ejecución. Esto significa que todas las funcionalidades, como la gestión de archivos, el controlador de dispositivos y la planificación de procesos, están integradas en un único núcleo. Si una parte del kernel falla, todo el sistema puede verse afectado. Algunos ejemplos de sistemas operativos que utilizan kernels monolíticos son Linux y Unix.|
| Kernel Microkernel | Este adopta un enfoque minimalista al trasladar la mayor parte de las funcionalidades del sistema operativo fuera del kernel principal y hacia espacio de usuario. Tambien se encarga solo de las tareas esenciales, como la gestión de la memoria, la comunicación entre procesos y la programación básica del hardware. Otras funcionalidades, como los sistemas de archivos y los controladores de dispositivos, se ejecutan como procesos en espacio de usuario. Esto mejora la estabilidad y seguridad del sistema, ya que un fallo en un componente no afectará al resto del sistema. |
| Kernel Híbrido | Este kernel combina características del kernel monolítico y del microkernel. Aunque algunas funcionalidades se ejecutan en el espacio de usuario para mejorar la estabilidad, otras funciones críticas aún residen en el espacio del kernel para obtener un mejor rendimiento. Los kernels híbridos buscan encontrar un equilibrio entre la simplicidad y la flexibilidad. |


|  |  **Tipos de Kernels**   | |
| :--------: | :-------: |:-------:
**Kernel Monolítico**| **Kernel Microkernel** | **Kernel Híbrido**|
|[![kr-mono.jpg](https://i.postimg.cc/0ykSgbHh/kr-mono.jpg)](https://postimg.cc/XpPqd7Wg)|[![microke.jpg](https://i.postimg.cc/vZ0VGbJT/microke.jpg)](https://postimg.cc/Bj16g9Qf)|[![hibrkr-removebg-preview.png](https://i.postimg.cc/D03g17yF/hibrkr-removebg-preview.png)](https://postimg.cc/r0gxkXrY)|

 ## Diferencias

Cada tipo de kernel tiene sus ventajas y desventajas. Los kernels monolíticos suelen ser más rápidos y eficientes debido a su diseño integrado, pero pueden ser menos robustos y más susceptibles a fallas. Los kernels microkernel son más seguros y estables, pero pueden incurrir en una disminución del rendimiento debido a la comunicación entre procesos en el espacio de usuario. Los kernels híbridos intentan aprovechar lo mejor de ambos enfoques, ofreciendo una combinación de rendimiento y estabilidad. Es importante tener en cuenta que la elección del tipo de kernel está determinada por las necesidades y objetivos del sistema operativo y, en última instancia, influye en su diseño, rendimiento y seguridad. 



## User vs Kernel Mode
Modo de Usuario proporciona un ambiente protegido y controlado para la ejecución de aplicaciones de usuario, lo que garantiza la estabilidad y seguridad del sistema. Por otro lado, el Modo de Kernel es esencial para realizar tareas críticas del sistema y proporciona acceso completo a los recursos del hardware y memoria, lo que le permite realizar funciones fundamentales del sistema operativo. La distinción entre estos dos modos es crucial para mantener un sistema operativo equilibrado, estable y seguro.
Estos modos determinan los niveles de privilegios y accesos que tienen los programas y procesos en relación con el núcleo del sistema operativo:

| Característica            | Modo de Usuario (User Mode)                   | Modo de Kernel (Kernel Mode)               |
|---------------------------|----------------------------------------------|-------------------------------------------|
| Nivel de Privilegios      | Privilegios limitados y restringidos.       | Acceso completo a todos los recursos del sistema.   |
| Acceso a Recursos         | Acceso a recursos protegidos mediante mecanismos de protección.  | Acceso directo a todos los recursos de hardware y memoria.|
| Funcionalidades          | Ejecuta aplicaciones de usuario y programas normales.    | Gestiona tareas críticas del sistema, como administración de memoria, dispositivos y planificación de procesos.|
| Interrupciones y Excepciones | No puede manejar interrupciones y excepciones del hardware. | Puede manejar interrupciones y excepciones del hardware.|
| Estabilidad y Seguridad   | Más seguro y menos propenso a causar fallos graves en el sistema. | Menos seguro debido al acceso directo a recursos del sistema, lo que puede causar fallas graves en caso de errores.|
| Tiempo de Ejecución       | Menor tiempo de ejecución debido a restricciones en el acceso a recursos. | Mayor tiempo de ejecución debido al acceso completo a todos los recursos del sistema.|
