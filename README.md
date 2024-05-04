# A Dossier of PostScript
## By Chubak Bidpaa

This repository contains Markdown documents that cover various aspects of PostScript. 

With GNU m4, you can compile it all into one single Markdown document:

```
make markdown
```

However, if you install the venerible Pandoc:

```
# Joe Q. LinuxUser (aka me): 
sudo apt install pandoc

# Fedor-tippers:
sudo dnf install pandoc

# Rich people of old money: 
sudo yum install epel-release
sudo yum install pandoc 
# The noveu-riche:
sudo dnf install pandoc

# Autistic people people: 
sudo pacman -S pandoc

# Octagenarians:
sudo zypper install pandoc

# REALLY rich people:
brew install pandoc
```

After that:

```
make pdf
make html
make latex
```

Really you can use Pandoc to convert it to anything (except PostScript, but you can convert the PDF to PS using `a2ps` or `pdf2ps`).

Enjoy.


PS (hehe, get it?): See [postscript-manpages](https://github.com/Chubek/postscript-manpages)

