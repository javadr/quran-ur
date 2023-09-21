.ONESHELL:

.PHONY: all
all: readme doc test cleanup

.PHONY: doc
doc:
	$(MAKE) -C doc
	cd doc || exit
	xelatex quran-ur-doc
	xelatex quran-ur-doc

.PHONY: test
test:
	$(MAKE) -C sample  quran-ur-test.tex
	cd sample || exit
	xelatex quran-ur-test
	cd .. || exit

.PHONY: cleanup
cleanup:
	$(MAKE) clean
	$(MAKE) clean -C doc -f ../Makefile
	$(MAKE) clean -C tex -f ../Makefile
	$(MAKE) clean -C sample -f ../Makefile

.PHONY: clean
clean:
	@rm -fv ./*.{aux,log,toc,idx,hd,out} ./*~

.PHONY: dev
dev:
	cd tex || exit
	sudo cp -v *.def quran-ur.sty /usr/local/texlive/2023/texmf-dist/tex/latex/quran-ur


.PHONY: ctan
ctan:
	$(MAKE) cleanup
	mkdir -p quran-ur/doc quran-ur/tex
	cp -v README        quran-ur
	cd tex || exit
	cp -v quran-ur.sty  ../quran-ur/tex
	cp -v qurantext-ur*.translation.def ../quran-ur/tex
	cd ../doc/ || exit
	cp -v quran-ur-doc.pdf quran-ur-doc.tex quran.png ../quran-ur/doc
	cd ../sample || exit
	cp -v quran-ur-test*    ../quran-ur/doc
	cd ..
	zip -r quran-ur.zip quran-ur
	mv -fv quran-ur.zip ..
	rm -rfv ../quran-ur
	mv -fv quran-ur ..

QURANDATE := $(shell grep "quranurdate{" tex/quran-ur.sty | cut -d'{' -f2 | tr -d '}')
QURANVERSION := $(shell grep "quranurversion{" tex/quran-ur.sty | cut -d'{' -f2 | tr -d '}')
YEAR := $(shell date +%Y)
readme-file := README

.PHONY: readme
readme:
	@echo "_____________________" > "${readme-file}"
	@echo "The quran-ur package" >> "${readme-file}"
	@echo "v${QURANVERSION}" >> "${readme-file}"
	@echo "" >> "${readme-file}"
	@echo "The package is prepared for typesetting some of Urdu translations of the Holy Quran." >> "${readme-file}"
	@echo -e "The supported translations are done  by \`Abul A'ala Maududi\`, \`Ahmed Raza Khan\`," >> "${readme-file}"
	@echo -e "\`Ahmed Ali\`, \`Fateh Muhammad Jalandhry\`, \`Tahir ul Qadri\`, \`Syed Zeeshan Haider Jawadi\`," >> "${readme-file}"
	@echo -e "\`Muhammad Junagarhi\`, and \`Muhammad Hussain Najafi\`." >> "${readme-file}"
	@echo "" >> "${readme-file}"
	@echo "For more information, please see the documentation." >> "${readme-file}"
	@echo "" >> "${readme-file}"
	@echo "Current version release date: ${QURANDATE}" >> "${readme-file}"
	@echo "___________________" >> "${readme-file}"
	@echo "Seiied-Mohammad-Javad Razvian" >> "${readme-file}"
	@echo "javadr@gmail.com" >> "${readme-file}"
	@echo "" >> "${readme-file}"
	@echo "Copyright © 2019-${YEAR}" >> "${readme-file}"
	@echo "It may be distributed and/or modified under the LaTeX Project Public License," >> "${readme-file}"
	@echo "version 1.3c or higher (your choice). The latest version of" >> "${readme-file}"
	@echo "this license is at: http://www.latex-project.org/lppl.txt" >> "${readme-file}"
	@echo "" >> "${readme-file}"
	@echo "This work is “author-maintained” (as per LPPL maintenance status)" >> "${readme-file}"
	@echo "by Seiied-Mohammad-Javad Razavian." >> "${readme-file}"
