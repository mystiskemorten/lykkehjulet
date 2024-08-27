# Lykkehjulet

Avhengigheter:

- [gum](https://github.com/charmbracelet/gum)
- [vhs](https://github.com/charmbracelet/vhs)
  - [ttyd](https://github.com/tsl0922/ttyd)
  - [ffmpeg](https://ffmpeg.org/)

> [!NOTE]
> Det går an å kjøre vhs uten avhengigheter med Docker, [se her](https://github.com/charmbracelet/vhs?tab=readme-ov-file#installation)

## Hvordan kan Lykkehjulet brukes

- Legg inn ønsket navn i fila `NAVN`
- Kjør `./generate-tape.sh NAVN`
- Kjør `vhs lykkehjulet.tape`

Etterpå burde det være en `lykkehjulet.gif`-fil som ser nesten slik ut:
![Lykkehjulet](lykkehjulet.gif)
