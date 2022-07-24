#!/bin/bash
#1から800までの値をrecpt1にチャンネルとして渡し、事前に指定した秒数だけ録画を試みる。

#カレントディレクトリ
cdir=`dirname $0`

#tsファイル保存先ディレクトリ
tsdir="${cdir}/ts"

#録画時間(秒)
duration=90

mkdir -p "${tsdir}"

#前回のファイルが残っているかも知れないので、念のため削除
rm -f "${tsdir}/*.ts"


for channel in {1..801}
do
echo ''
echo "************************************************************************************************"
echo time     = `date +%Y%m%d%H%M%S`
echo  channel =  ${channel}
/usr/local/bin/recpt1 --strip --b25 ${channel} ${duration} ${tsdir}/${channel}.ts
echo "************************************************************************************************"
echo ''
done
