#!/bin/bash

cd scripts
groupadd -g $GROUP_ID fakegroup
useradd -g fakegroup -r -u $USER_ID fakeuser
su fakeuser -c "touch ISoMuchLoveLinux.log"
vartwo=$(id)
whoami > ISoMuchLoveLinux.log
vars=($vartwo)
echo "${vars[0]} ${vars[1]}" >> ISoMuchLoveLinux.log
cd ../
