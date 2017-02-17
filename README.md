Travis: [![Build Status](https://travis-ci.org/ch4413/SimulationValues.svg?branch=master)](https://travis-ci.org/ch4413/SimulationValues)
Appveyor: [![Build status](https://ci.appveyor.com/api/projects/status/ixvnaqqder8fo3rd?svg=true)](https://ci.appveyor.com/project/ch4413/simulationvalues)
# SimulationValues

##Simulation Values R Package

To install Simulation Values you'll need ghit's help. Run the script below install Simulation Values and see all of the functions inside it:

```
check_pkg_ghit <- function() {
  if(!require(devtools)) {
    message("installing the 'devtools' package")
    install.packages("devtools")
    require(devtools)
  }
}

check_pkg_ghit()

devtools::install_github("ch4413/SimulationValues")
library(SimulationValues)
ls("package:SimulationValues")

```

## Getting Started with Simulation Values

The first thing we could do is test the function sim_values:

```
sim_values(50, "Normal", mean = 10)

```
