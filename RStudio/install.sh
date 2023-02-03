# install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

mkdir -p ~/.R

if uname -m | grep -q 'arm64'; then
	echo "\r\nLooks like you have an Apple Silicon CPU type... performing specific install steps\r\n"
	cp ./Makevars-applesilicon ~/.R/Makevars
else
	echo "\r\nLooks like you have an Intel CPU type... performing specific install steps\r\n"
	cp ./Makevars-intel ~/.R/Makevars
fi

brew install --cask r
brew install --cask rstudio

echo "\r\nInstalling DevTools and DexterMML..."
R -e "install.packages('devtools', repos='http://cran.us.r-project.org')\ndevtools::install_github('dexter-psychometrics/dexterMML')"
echo "\r\nAll done.\r\n"
