# Render an RMarkdown report

This section describes how to render an RMarkdown report within a simple R conda environment on a Command Line Interface (cluster or linux environment). This could be achieved in two possible ways:

*  Creating/activating a conda environment and installing packages on commandline
*  Using an `environment.yml` file that documents the package dependencies

Both work but the second way is the recommended one, which will be described below.

1. Create an `environment.yml` file, that looks something like

	```
	#name of the conda environment
	name: HowRYou
		
	#the paths that conda takes a look for packages. Avoid using anaconda channel as we have
	#experienced issues using it 
	channels:
		- conda-forge
		- bioconda
		- defaults
		
	#install following packages in the conda environment
	#change according to the packages you are using in your RMardown file. 
	#The first three are required (are R essentail). You can also change the versions to
	# meet the requirements of your analysis 
	dependencies:
		- r-base=3.4.1
		- pandoc=1.19
		- r-rmarkdown=1.6
		- r-here
	```

2. Create a conda environment (in this case `HowRYou` is the conda environment name specified in the `environment.yml` file. `-p` flag should point to your miniconda installation path. To find how to install conda, check [this](https://docs.conda.io/projects/conda/en/latest/user-guide/install/) 

	```
	conda env create -p /path/to/miniconda/envs/HowRYou --file environment.yml
	```

3. Activate this conda environment

	```
	conda activate HowRYou
	```
	
4. Run the RMarkdown file

	```
	Rscript -e "rmarkdown::render('HowRYou.Rmd')"
	```
	
	To pass arguments to the Rmd script (in this case two arguments - an input directory location and name of the input vcf file)
	
	```
	Rscript -e "rmarkdown::render('HowRYou.Rmd', params = list(directory = './data', file = 'dummy.txt'))"
	``` 
	
5. An [example](https://github.com/skanwal/Play/blob/master/RLadiesMelb/HowRYou.Rmd) of a rendered script used in the above step # 4

## Advantages:

- Reproducibility - ability to perform the analysis multiple times
- Portability - being able to move code from one machine or platform to another
- Flexibility - change easily in response to different user and system requirements 
