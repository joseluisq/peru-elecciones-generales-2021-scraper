<!DOCTYPE html>
<html lang="es">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="JSON Scraper de las Elecciones Generales Perú 2021">
    <meta charset="UTF-8">
    <title>Elecciones Generales 2021</title>
    <style>
        html {
            background-color: #fff;
            font-size: 16px;
            -moz-osx-font-smoothing: grayscale;
            -webkit-font-smoothing: antialiased;
            min-width: 300px;
            overflow-x: hidden;
            overflow-y: scroll;
            text-rendering: optimizeLegibility;
            -webkit-text-size-adjust: 100%;
            -moz-text-size-adjust: 100%;
            text-size-adjust: 100%;
        }
        body {
            font-family: -apple-system,BlinkMacSystemFont,Segoe UI,Helvetica,Arial,sans-serif,Apple Color Emoji,Segoe UI Emoji;
            max-width: 50rem;
            padding: 1.25rem;
            margin: 0 auto;
            color: #4a4a4a;
            font-size: 1rem;
            font-weight: 400;
            line-height: 1.5;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            border-spacing: 0;
        }
        table td,
        table th {
            text-align: right;
            border: 1px solid #dbdbdb;
            border-width: 0 0 1px;
            padding: .5rem .75rem;
            vertical-align: top;
            border-width: 1px;
        }
        h1 {
            text-align: center;
        }
        h1,h2,h3 {
            color: #333;
            line-height: 1.125;
        }
        blockquote {
            background-color: #f5f5f5;
            border-left: 5px solid #dbdbdb;
            padding: 0.1rem 1.5rem;
            margin: 0;
        }
        code, pre {
            padding: .2em .4em;
            margin: 0;
            font-size: 85%;
            background-color: #f5f5f5;
            border-radius: 6px;
            font-family: SFMono-Regular,Consolas,Liberation Mono,Menlo,monospace;
        }
    </style>
</head>
<body>

# JSON Scraper de las Elecciones Generales Perú 2021

> Un simple JSON [Scraper](https://es.wikipedia.org/wiki/Web_scraping) de las [Eleciones Generales Perú 2021](https://www.resultados.eleccionesgenerales2021.pe/EG2021/EleccionesPresidenciales/RePres/T) inpirado en [NYT Vote Scraper](https://github.com/alex/nyt-2020-election-scraper).

Esta applicación web Hace un simple JSON scraping de la página de resultados de la [ONPE](https://www.onpe.gob.pe/) sobre las [Eleciones Generales Perú 2021](https://www.resultados.eleccionesgenerales2021.pe/EG2021/EleccionesPresidenciales/RePres/T) y crea un registro ([`commit`](https://git-scm.com/docs/git-commit)) en un repositorio de [Git](https://git-scm.com/).

El objetivo es poder ver el historial y las diferencias de resultados ([`diff`](https://git-scm.com/docs/git-diff)) via el archivo [elecciones_generales_2021.json](https://github.com/joseluisq/peru-elecciones-generales-2021-scraper/blob/master/elecciones_generales_2021.json).

El contenido de esta página es actualizada cada 30 minutos.

{{body}}

## Código fuente del proyecto

https://github.com/joseluisq/peru-elecciones-generales-2021-scraper

</body>
</html>
