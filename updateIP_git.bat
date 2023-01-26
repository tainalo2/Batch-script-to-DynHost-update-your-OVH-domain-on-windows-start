if not defined in_subprocess (cmd /k set in_subprocess=y ^& %0 %*) & exit )
for /F %%I in ('curl https://www.purpletwit.com/myIp') do set IP=%%I
set myOVHdomain=YourDomain
set myOVHlogin=YourID
set myOVHpassword=YourPassword
curl "http://www.ovh.com/nic/update?system=dyndns&hostname=%myOVHdomain%&myip=%IP%" -u %myOVHlogin%:%myOVHpassword%
pause