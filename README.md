## Dockerized latexalpha2

[![](https://images.microbadger.com/badges/image/stevenliuyi/latexalpha2.svg)](https://hub.docker.com/r/stevenliuyi/latexalpha2)

Docker image that hosts [latexalpha2](https://github.com/stevenliuyi/latex-alpha2) with Mathics.

### Example

Compile a TeX file `example.tex` with latexalpha2 and Mathics:

```bash
docker run -dit --name latexalpha2 stevenliuyi/latexalpha2
docker cp example.tex latexalpha2:/latexalpha2
docker exec latexalpha2 pdflatex -shell-escape example.tex
docker exec latexalpha2 sh -c "asy example-*.asy"
docker exec latexalpha2 pdflatex -shell-escape example.tex
docker cp latexalpha2:/latexalpha2/example.pdf .
```
