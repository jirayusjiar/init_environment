list.of.packages <-
    c(
        "devtools",
        "gtools",
        "pROC",
        "parallel",
        "randomForest",
        "compiler",
        "car",
        "Hmisc",
        "stats",
        "reshape2",
        "moments",
        "ROCR",
        "effsize",
        "gtools",
        "foreach",
        "doMC",
        "plyr",
        "caret",
        "ScottKnottESD",
        "rms",
        "combinat"
    )
installedPackages <- installed.packages()[, "Package"]
new.packages <-
    list.of.packages[!(list.of.packages %in% installedPackages)]
if (length(new.packages))
    install.packages(new.packages, repos = "http://cran.rstudio.com/", dependencies=TRUE)
if (!('DefectData' %in% installedPackages))
    # if DefectData is not loaded
    devtools::install_github("klainfo/DefectData")
