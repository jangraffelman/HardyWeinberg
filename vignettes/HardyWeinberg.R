### R code from vignette source 'HardyWeinberg.Rnw'
### Encoding: ISO8859-1

###################################################
### code chunk number 1: HardyWeinberg.Rnw:489-490
###################################################
options(prompt = "R> ", continue = "+ ", width = 70, useFancyQuotes = FALSE)


###################################################
### code chunk number 2: HardyWeinberg.Rnw:497-499 (eval = FALSE)
###################################################
## install.packages("HardyWeinberg")
## library("HardyWeinberg")


###################################################
### code chunk number 3: HardyWeinberg.Rnw:507-508 (eval = FALSE)
###################################################
## vignette("HardyWeinberg")


###################################################
### code chunk number 4: HardyWeinberg.Rnw:519-522
###################################################
library("HardyWeinberg")
x <- c(MM = 298, MN = 489, NN = 213)
HW.test <- HWChisq(x, verbose = TRUE)


###################################################
### code chunk number 5: HardyWeinberg.Rnw:533-534
###################################################
HW.test <- HWChisq(x, cc = 0, verbose = TRUE)


###################################################
### code chunk number 6: HardyWeinberg.Rnw:540-541
###################################################
HW.lrtest <- HWLratio(x, verbose = TRUE)


###################################################
### code chunk number 7: HardyWeinberg.Rnw:547-548
###################################################
HW.exacttest <- HWExact(x, verbose = TRUE)


###################################################
### code chunk number 8: HardyWeinberg.Rnw:563-565
###################################################
x <- c(MN = 489, NN = 213, MM = 298)
HW.test <- HWChisq(x, verbose = TRUE)


###################################################
### code chunk number 9: HardyWeinberg.Rnw:577-578
###################################################
HW.results <- HWAlltests(x, verbose = TRUE)


###################################################
### code chunk number 10: HardyWeinberg.Rnw:590-599
###################################################
x <- c(MM = 298, MN = 489, NN = 213)
n <- sum(x)
nM <- mac(x) 
pw4 <- HWPower(n, nM, alpha = 0.05, test = "exact", theta = 4, 
               pvaluetype = "selome")
print(pw4)
pw8 <- HWPower(n, nM, alpha = 0.05, test = "exact", theta = 8, 
               pvaluetype = "selome")
print(pw8)


###################################################
### code chunk number 11: HardyWeinberg.Rnw:639-661
###################################################
n <- 100
m <- 100
X1 <- HWData(m, n, p = rep(0.5, m))$Xt
X2 <- HWData(m, n)$Xt
X3 <- HWData(m, n, p = rep(0.5, m), f = rep(0.5, m))$Xt
X4 <- HWData(m, n, f = rep(0.5, m))$Xt
X5 <- HWData(m, n, p = rep(c(0.2, 0.4, 0.6, 0.8), 25), pfixed = TRUE)$Xt
X6 <- HWData(m, n, exactequilibrium = TRUE)$Xt
opar <- par(mfrow = c(3, 2),mar = c(1, 0, 3, 0) + 0.1)
par(mfg = c(1, 1))
HWTernaryPlot(X1, main = "(a)", vbounds = FALSE)
par(mfg = c(1, 2))
HWTernaryPlot(X2, main = "(b)", vbounds = FALSE)
par(mfg = c(2, 1))
HWTernaryPlot(X3, main = "(c)", vbounds = FALSE)
par(mfg = c(2, 2))
HWTernaryPlot(X4, main = "(d)", vbounds = FALSE)
par(mfg = c(3, 1))
HWTernaryPlot(X5, main = "(e)", vbounds = FALSE)
par(mfg = c(3, 2))
HWTernaryPlot(X6, main = "(f)", vbounds = FALSE)
par(opar)


###################################################
### code chunk number 12: HardyWeinberg.Rnw:680-683 (eval = FALSE)
###################################################
data("HapMapCHBChr1")
HWTernaryPlot(HapMapCHBChr1, region = 1, vbounds = FALSE)
HWTernaryPlot(HapMapCHBChr1, region = 7, vbounds = FALSE)


###################################################
### code chunk number 13: HardyWeinberg.Rnw:705-709 (eval = FALSE)
###################################################
data("HapMapCHBChr1")
HWQqplot(HapMapCHBChr1)
SimulatedData <- HWData(nm = 225, n = 84, p = af(HapMapCHBChr1))$Xt
HWQqplot(SimulatedData)


