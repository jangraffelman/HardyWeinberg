M25p <-
function(RR, alpha.f=c(0.333,0.333, 0.333), alpha.m=c(0.333,0.333, 0.333)) { 
 x.m <- RR[1:3]
 x.f <- RR[4:6]
    a.f <- alpha.f[1] + x.f[1]  
    b.f <- alpha.f[2] + x.f[2] 
    c.f <- alpha.f[3] + x.f[3] 

    a.m <- alpha.m[1] + x.m[1]  
    b.m <- alpha.m[2] + x.m[2] 
    c.m <- alpha.m[3] + x.m[3] 

    dens <- lfactorial(sum(x.f)) + lfactorial(sum(x.m)) - sum(lfactorial(x.f)) - sum(lfactorial(x.m)) +
		lgamma(sum(alpha.f)) + lgamma(sum(alpha.m)) - sum(lgamma(alpha.f)) - sum(lgamma(alpha.m)) +
		lgamma(a.f) + lgamma(b.f) + lgamma(c.f) - lgamma(a.f+b.f+c.f) + lgamma(a.m) + lgamma(b.m) + lgamma(c.m)  - lgamma(a.m+b.m+c.m) 


        dens <- exp(dens)

    return(dens)

}
