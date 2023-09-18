# The quran package
Copyright © 2019-2023

The package is prepared for typesetting some of Urdu translations of the Holy Quran.
The supported translations are done  by `Abul A'ala Maududi`, `Ahmed Raza Khan`,
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
