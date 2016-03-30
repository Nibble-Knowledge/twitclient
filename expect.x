set arg1 [lindex $argv 0]
set timeout 6000000
spawn /cygdrive/c/Program\ Files\ \(x86\)/PuTTY/plink.exe -serial $arg1 -sercfg 9600,8,n,N
expect "ZZ"
set tpid [exp_pid -i $spawn_id]
exec kill -9 $tpid