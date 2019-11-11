#!/usr/bin/env bash

function abort()
{
    # set -e will exit on first error. so set -vxe..
    # http://stackoverflow.com/questions/2870992/automatic-exit-from-bash-shell-script-on-error
    echo >&2 '
    ***************
    *** ABORTED ***
    ***************
    '
    # date ; 
    dts=$(date +"%Y-%m-%d_%H.%M.%S"); 
    echo "started at: ${dts1} "
    echo "An error occurred. Exiting at ... ${dts}" >&2
    exit 1
}

# comment out the next two lines to disable the abort on error. [ trap and set -e]..
# commented out it will not stop - just continue after and error and go to completion.
# You will have to find the error way back somewhere in the terminal. You may want that to happen. You have a choice.
trap 'abort' 0
set -e
echo
echo
echo Press ctrl-c now if you want to stop and not run this.
echo
date
timeout1=20 ; read -t "${timeout1}" -p "Press ENTER or wait $timeout1 seconds..." || true ;  echo ;


dts1=$(date +"%Y-%m-%d_%H.%M.%S");
echo "starting at:  ${dts1}"

# Add your script below.... If an error occurs, the abort() function will be called.
#----------------------------------------------------------
# ===> Your script goes here.........................


# usage:      chmod +x *.sh ; ./curl500times.sh


# signin

hostport=http://10.4.1.228:6036
crd='{"user": {"email":"a","password":"a"}}'
#
tmpfile=/tmp/tmp_2019-11-06_Wed_12.59-PM_tmp
curl -i -H "Content-Type: application/json" -X POST -i -d "$crd"  ${hostport}/users/sign_in.json > ${tmpfile}
cat ${tmpfile}|grep token >  ${tmpfile}2 ; tokn1=$(<"${tmpfile}2")  echo "$tokn1" ; echo $crd
  echo ${tmpfile} ;echo "${tmpfile}2"
  echo -e  "\ntmp1"; cat ${tmpfile} ; echo -e '\n---------------------------------'
  echo "tmp2"; cat "${tmpfile}2" 
  echo -e tmp3; cat "${tmpfile}3" 
  tokn2=$(<"${tmpfile}3") ; echo $tokn2;
cat "${tmpfile}2" | sed "s/{.*\"token\":\"\([^\"]*\).*}/\1/g" > "${tmpfile}3"
# set tokn variable...
# not sure why this doesn;t work.
tokn=$(echo $tokn1 | sed "s/{.*\"token\":\"\([^\"]*\).*}/\1/g") && echo "variable tokn=$tokn"
tokn=$tokn2
echo "variable tokn again=$tokn"


# get lots of data..

dts=$(date +"%Y-%m-%d_%H.%M.%S");  echo  Just the spacer only __ $dts \_\_ -=-=-=-=-=-=-=-=-=-=-=-
for ((n=0;n<500;n++))
do
  curl -i --header 'content-type: application/json' --header "authorization: Bearer ${tokn}"  --request GET --url ${hostport}/depts.json
  curl -i --header 'content-type: application/json' --header "authorization: Bearer ${tokn}"  --request GET --url ${hostport}/machines.json
  curl -i --header 'content-type: application/json' --header "authorization: Bearer ${tokn}"  --request GET --url ${hostport}/operations.json
  curl -i --header 'content-type: application/json' --header "authorization: Bearer ${tokn}"  --request GET --url ${hostport}/parts.json
  curl -i --header 'content-type: application/json' --header "authorization: Bearer ${tokn}"  --request GET --url ${hostport}/tbl_customers.json
  curl -i --header 'content-type: application/json' --header "authorization: Bearer ${tokn}"  --request GET --url ${hostport}/tbl_htpc_reasons.json
  curl -i --header 'content-type: application/json' --header "authorization: Bearer ${tokn}"  --request GET --url ${hostport}/tbl_quality_issues.json
done
echo '.......'
echo '.......'
echo  started at:  $dts 
dts=$(date +"%Y-%m-%d_%H.%M.%S");
echo ended at:  $dts




### finish up.. ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
set +vx
pwd
# echo  '----------------------------------------> !!! Reached end of file !!!'
echo  .
set +vx
#

# Done!....................
trap : 0
date
dts=$(date +"%Y-%m-%d_%H.%M.%S"); echo "  ending at:  ${dts}"
echo >&2 '

!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!!!!!!!!!!!!!!   DONE    !!!**
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

'
#
