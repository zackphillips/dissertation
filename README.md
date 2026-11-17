# dissertation

My PhD dissertation from the Waller Lab at UC Berkeley: *Quantitative Microscopy using Coded Illumination* (2019).

CI builds the PDF on every push to `main` and publishes it to:

- https://zackphillips.com/dissertation/dissertation.pdf (GitHub Pages, opens inline)
- the [`latest` release](https://github.com/zackphillips/dissertation/releases/tag/latest) (download)

Pull requests build the PDF as a workflow artifact without publishing.

## Build locally

```bash
./compile.sh
```

Uses [Tectonic](https://tectonic-typesetting.github.io/) if installed (same engine as CI, runs BibTeX automatically), otherwise `xelatex` + `bibtex`.
