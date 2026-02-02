# Documentación AS400

Documentación técnica y didáctica de programas RPG IV en AS400 (IBM i).

## Archivos Disponibles

- **Luz_Maria_Mogollon.md** - Documentación completa en formato Markdown
- **Luz_Maria_Mogollon.pdf** - Documentación en formato PDF (generado automáticamente)
- **Luz_Maria_Mogollon.rpgle** - Código fuente del programa RPG

## Descargar en PDF

El archivo PDF se genera automáticamente desde el archivo Markdown. Puedes:

1. **Descargar directamente**: Haz clic en el archivo `Luz_Maria_Mogollon.pdf` en GitHub y luego en "Download"
2. **Generar localmente**: Ejecuta el script `generate_pdf.sh` si tienes pandoc instalado:
   ```bash
   ./generate_pdf.sh
   ```

### Generación Automática

El PDF se actualiza automáticamente mediante GitHub Actions cada vez que se modifica el archivo Markdown. El workflow:
- Se ejecuta automáticamente cuando se actualiza `Luz_Maria_Mogollon.md`
- También puede ejecutarse manualmente desde la pestaña "Actions" en GitHub
- Utiliza pandoc y XeLaTeX para generar un PDF profesional con tabla de contenidos

### Requisitos para generación local

Si deseas generar el PDF localmente, necesitas:
- pandoc
- texlive-xetex
- texlive-lang-spanish

En Ubuntu/Debian:
```bash
sudo apt-get install pandoc texlive-xetex texlive-lang-spanish
```

