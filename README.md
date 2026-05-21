# Sistema de Facturación Legacy - Grupo A (Evaluación Unidad 2)

## Información del Estudiante
* **Nombre:** Maria Belen Becerra Rivera
* [cite_start]**Materia:** Computación en la Nube [cite: 2]
* [cite_start]**Aplicación Asignada:** `legacy-billing` (Puerto 3000) [cite: 46]

## Arquitectura CI/CD e IaC Implementada
Se diseñó e implementó un ciclo de vida automatizado compuesto por los siguientes hitos fundamentales:
1. [cite_start]**Integración Continua (CI) en develop:** Automatización mediante GitHub Actions que configura un entorno virtualizado con Node.js 20, instala dependencias y valida la estabilidad del código ejecutando pruebas automáticas con éxito (`npm test`) antes de permitir la integración[cite: 60, 61, 65].
2. [cite_start]**Infraestructura como Código (IaC) Modular:** Organización modular de Terraform separando las responsabilidades de red (`modules/network` para Security Groups) y cómputo (`modules/compute` para instancias EC2) para una arquitectura limpia, versionada y libre de valores hardcodeados[cite: 38, 77, 79, 88].
3. [cite_start]**Despliegue Continuo (CD) en main:** Pipeline en GitHub Actions que, al recibir cambios en la rama `main`, se autentica de forma segura en AWS Academy mediante credenciales temporales y automatiza secuencialmente las fases de aprovisionamiento con aprobación automática[cite: 96, 99, 100].
4. [cite_start]**Estrategia GitOps (Evento de Seguridad):** Modificación reactiva de la infraestructura controlada exclusivamente por cambios en el código (`variables.tf`), logrando el escalado vertical a una instancia `t3.micro` y la restricción estricta de tráfico entrante por el puerto 3000 a la dirección IP pública del administrador (/32)[cite: 41, 109, 112, 114].

## Parámetros de Validación Funcional
* [cite_start]**URL o IP Pública de Acceso:** http://54.227.54.243:3000 [cite: 123, 125]
