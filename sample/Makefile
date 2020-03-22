all:
	mkdir -p Output
	(cd Output; scribble --html ../sample.scrbl)
	(cd Output; scribble --pdf ../sample.scrbl)
	@echo "Be sure to view both Output/sample.html and Output/sample.pdf"
clean:
	rm -rf Output
