# 🌿 EcoVerde Antioquia S.A.S. — Entorno Dockerizado

Proyecto del producto integrador del programa ADSO — SENA CTMA.  
Implementación de un entorno Dockerizado para el despliegue de una página web institucional.

---

## 📌 Descripción del proyecto

EcoVerde Antioquia S.A.S. es una microempresa dedicada al mantenimiento de zonas verdes, diseño de jardines y suministro de materiales para construcción. Este proyecto resuelve los problemas de configuración manual y falta de reproducibilidad del entorno mediante Docker, permitiendo que la aplicación funcione igual en cualquier equipo.

---

## 🗂️ Estructura del proyecto

```
proyecto-ecoverde/
├── app/
│   └── index.html        ← Página web institucional de EcoVerde
├── evidencias/           ← Capturas de pantalla del proceso
├── Dockerfile            ← Instrucciones para construir la imagen Docker
├── compose.yml           ← Orquestación de servicios con Docker Compose
└── README.md             ← Este archivo
```

---

## ⚙️ Requisitos previos

- Git instalado
- Docker Desktop instalado y en ejecución

---

## 🚀 Cómo levantar el proyecto

**1. Clonar el repositorio**
```bash
git clone https://github.com/tu-usuario/proyecto-ecoverde.git
cd proyecto-ecoverde
```

**2. Levantar los servicios con Docker Compose**
```bash
docker compose up --build -d
```

**3. Ver la página en el navegador**  
Abrir: [http://localhost:8080](http://localhost:8080)

**4. Detener los servicios**
```bash
docker compose down
```

---

## 🐳 Explicación de los componentes Docker

### Dockerfile
Construye una imagen basada en `nginx:alpine`. Copia el archivo `index.html` al directorio que nginx sirve por defecto. Expone el puerto 80.

### compose.yml — Servicios
| Servicio | Descripción |
|----------|-------------|
| `web` | Servidor nginx que publica la página HTML en el puerto 8080 |
| `db` | Base de datos MySQL 8.0 lista para uso futuro |

### Volumen
- `datos_db`: persiste los datos de MySQL aunque el contenedor se detenga o elimine.
- `./app`: sincroniza la carpeta local con el contenedor del servidor web.

### Red
- `red_ecoverde` (tipo bridge): permite que los servicios `web` y `db` se comuniquen entre sí de forma aislada.

---

## 📋 Comandos de verificación (evidencias)

```bash
# Ver estado de Git
git status
git log --oneline

# Ver imágenes Docker
docker images

# Ver contenedores activos
docker ps

# Ver volúmenes
docker volume ls

# Ver redes
docker network ls

# Levantar con Compose
docker compose up --build -d
```

---

## 🔄 Relación con DevOps

Este proyecto aplica principios DevOps básicos:

- **Reproducibilidad**: cualquier persona puede clonar el repositorio y levantar el entorno con un solo comando.
- **Control de versiones**: todo el código y la configuración están versionados con Git.
- **Reducción de deuda técnica**: se elimina la configuración manual y las diferencias entre entornos.
- **Automatización**: Docker Compose orquesta los servicios automáticamente.

---

## 👩‍💻 Autora

Aprendiz MARIA PAULA HERRERA RIVAS ADSO — SENA CTMA  
Programa: Análisis y Desarrollo de Software
