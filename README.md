# scripts
For monitor 

## download
`sudo wget https://raw.githubusercontent.com/WilliamGuozi/scripts/main/kas-ping.sh -O kas-ping.sh`

## execute
`sudo chmod +x kas-ping.sh && ./kas-ping.sh &`

## stop 
`sudo ps -ef |grep kas-ping |grep -v grep | awk '{print $2}'|xargs kill -9`
