* Essentials of Applied Data Analysis
* IPSA-USP Summer School 2017
* Leonardo Sangali Barone
* Stata Simulation - Coins

* install new ado (aka package w/ new functions) using the command findit
findit heads

* toss 10 a fair coin
heads, flips(10)

* toss 100 a fair coin
heads, flips(100)
	 
* toss 1000 a fair coin
heads, flips(1000)
	 
* toss 1000000 a fair coin
heads, flips(1000000)

* toss 100 a biased coin w/ P(Head) = 0.3
heads, flips(100) prob(.3)	 
	
* toss 1000 a biased coin w/ P(Head) = 0.3
heads, flips(1000) prob(.3)	 

