# ClimateChangeR

This is a project intended to help display the rise in global temperatures, as a clean, and colored map. It uses R to create the map, based on data provided by the World Bank


This program is best operated in GitHub Codespaces, but when this is not possible, use RStudio for the R script. Required libraries are "ggplot", "rnaturalearth", "sf", and "wbstats", all for the R script. For the Python script, again, try to use GitHub Codespaces, but when not possible, use the latest version of Python. Using the built in IDLE that comes with Python should suffise. In addition, make sure to install "imageio" library, for image processing. In addition, the Animator script contains a file path, which will work perfectly if the repository is forked, and GitHub Codespaces is used. However, if running on a local machine, please ensure to change the file path to match the local folder of images. The "Animator.py" script will output a GIF file to whichever folder it is being run in. 


**How It's Made**:
Tech used: R, Python

I started off with a YouTube tutorial to create the basis for the R script, since I was new to R. Next, I modified the R script to use the Climate Change API as opposed to the one preprovided. In addition, I modified the scale bar to not use a percentage, and instead use a number. In addition, I changed the map to use a worldwide map, and cleared some of the field curvature applied to the map. Next I started on the Animator script. This one was even more difficult, because I did not know how imageio worked, but I preservered and finished it to a working state. 


**Lessons Learned:**
This project taught me how to use R, in addition to manipulating images in Python. Using R, a statistis-based language helped me start to learn the importance of languages like R, and the role they play within the software development ecosystem/industry. In addition, despite the number of Python projects I have complete, I have rarely worked with images. 


**Installations (All three are necessary to run):**
Python: https://www.python.org/downloads
RStudio: https://posit.co/download/rstudio-desktop/
R: https://cran.r-project.org/bin/windows/base/


**Credits:**
https://youtu.be/KZcKv3HgzII?si=5-_3YNSbYalHAdb_, Felix Analytics 
