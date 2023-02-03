# install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo "\r\n What type of a Mac do you have? (press 1 or 2, then press Enter)"
echo "  1) Apple Silicon based Mac (M1, M2..)"
echo "  2) Intel based Mac"

read n
case $n in
	1)
		echo "\r\nPerforming specific steps for your system..."
		/bin/bash -c ./apple-silicon-based.sh
		echo "\r\nDone."
		;;
	2)
		echo "\r\nPerforming specific steps for your system..."
		/bin/bash -c ./intel-based.sh
		echo "\r\nDone."
		;;
	*)
		echo "invalid option";;
esac

brew install --cask r
brew install --cask rstudio

echo "\r\nRun these two commands inside RStudio to complete the install:\r\n"
echo 'install.packages("devtools")'
echo 'devtools::install_github("dexter-psychometrics/dexterMML")'
echo "\r\n"
