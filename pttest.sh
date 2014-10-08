#!/bin/bash
#受信できそうなチャンネルを片端から30秒間録画する。

#カレントディレクトリ
cdir=`dirname $0`
#tsファイル保存先ディレクトリ
tsdir=${cdir}/ts

#前回のファイルが残っているかも知れないので、念のため削除
rm -f ${tsdir}/*.ts

for channel in `seq 1 300`
do
echo ${channel}
/usr/local/bin/recpt1 --strip --b25 ${channel} 30 ${tsdir}/${channel}.ts
done