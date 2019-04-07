main:
	gitbook install
	gitbook serve

pdf:
	mkdir -p dist
	gitbook pdf . dist/usdsa2018.pdf
