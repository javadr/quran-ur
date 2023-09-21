# The quran package
Copyright © 2019-2023

The `quran-ur` package is an extension of the `quran` LaTeX package, designed to enhance the typesetting of the Holy Quran by incorporating specific Urdu translations. It provides support for German translations carried out by notable translators such as `Abul A'ala Maududi`, `Ahmed Raza Khan`,
`Ahmed Ali`, `Fateh Muhammad Jalandhry`, `Tahir ul Qadri`, `Syed Zeeshan Haider Jawadi`,
`Muhammad Junagarhi`, and `Muhammad Hussain Najafi`.

### Sample

```
\documentclass{article}

\usepackage{arabxetex}
\usepackage{quran-ur}

\begin{document}

    \begin{arab}[utf]
        \quransurahur[108]
        \medskip
        \quransurahur*[108]
    \end{arab}

\end{document}
```

### Documentation
For more details, please refer to [this link](http://mirrors.ctan.org/macros/unicodetex/latex/quran-ur/doc/quran-ur-doc.pdf).

## License

[The LaTeX project public license (LPPL), version 1.3c](https://www.latex-project.org/lppl/lppl-1-3c/)

## Citation

```tex
@misc{quran,
  title={{quran}: An easy way to typeset any part of The Holy Quran},
  url={https://ctan.org/pkg/quran},
  note={Software available from https://github.com/javadr/quran},
  author={Javad Razavian},
  year={2015},
}
```