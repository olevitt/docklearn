FROM rocker/r-ver:3.5.1
RUN apt-get update && apt-get install -y  git-core make pandoc pandoc-citeproc libcurl4-openssl-dev libssl-dev libxml2-dev libcurl4-openssl-dev zlib1g-dev
RUN echo "options(repos = c(CRAN = 'https://cran.rstudio.com/'), download.file.method = 'libcurl')" >> /usr/local/lib/R/etc/Rprofile.site
RUN Rscript -e 'install.packages("tidyverse")'
RUN R -e 'install.packages("remotes")'
RUN R -e 'remotes::install_github("r-lib/remotes", ref = "97bbf81")'
RUN Rscript -e 'remotes::install_version("magrittr", version = "1.5")'
RUN Rscript -e 'remotes::install_version("purrr", version = "0.3.3")'
RUN Rscript -e 'remotes::install_version("rmarkdown", version = "1.16")'
RUN Rscript -e 'remotes::install_version("stringr", version = "1.4.0")'
RUN Rscript -e 'remotes::install_version("ggplot2", version = "3.2.1")'
RUN Rscript -e 'remotes::install_version("dplyr", version = "0.8.3")'
RUN Rscript -e 'remotes::install_version("knitr", version = "1.25")'
RUN Rscript -e 'remotes::install_version("readr", version = "1.3.1")'
RUN Rscript -e 'remotes::install_version("learnr", version = "0.1.0")'
RUN Rscript -e 'remotes::install_github("rstudio/parsons")'
RUN Rscript -e 'install.packages("tidyverse")'
#RUN Rscript -e 'remotes::install_github("vincentguyader/docklearn")'
EXPOSE 3838
