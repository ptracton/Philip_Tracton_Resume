AUTHOR = Philip_Tracton

LATEX = latex
DVIPDF = dvipdf
LATEX_OPTIONS = 

SRC_DIR = src
OUTPUT_DIR = outputs
TEMP_DIR = tmp
RESUME_SRC = $(SRC_DIR)/$(AUTHOR)_Resume.tex
RESUME_PDF = $(OUTPUT_DIR)/$(AUTHOR)_Resume.pdf

RM = /bin/rm


all:
	$(LATEX) $(LATEX_OPTIONS) -output-directory=$(TEMP_DIR) $(RESUME_SRC)
	$(LATEX) $(LATEX_OPTIONS) -output-directory=$(TEMP_DIR) $(RESUME_SRC)
	$(DVIPDF) $(TEMP_DIR)/$(AUTHOR)_Resume.dvi $(RESUME_PDF)


clean:
	$(RM) -rf $(SRC_DIR)/*~ $(SRC_DIR)/*pdf $(SRC_DIR)/*log $(SRC_DIR)/*gz $(SRC_DIR)/*aux $(SRC_DIR)/*out  *~ $(TEMP_DIR)/*  $(OUTPUT_DIR)/*