clear all
cd "C:\Users\josel\Documents\github_learning\session_intro_git\code"
sysuse auto.dta
reg price i.foreign mpg
outreg2 using ..//tables//auto.tex, ctitle("firstreg") tex

sort make mpg
drop if _n==_N
compress
save ..//data//auto_modified.dta, replace
