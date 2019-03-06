#!bin/bash
cd /usr/local/java

wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie"  https://download.oracle.com/otn-pub/java/jdk/8u201-b09/42970487e3af4f5aa5bca3f542482c60/jdk-8u201-linux-x64.tar.gz

tar -zxvf jdk*

rm -rf jdk*.tar.gz
cd jdk*

jhome=`pwd`
echo $jhome
echo "JAVA_HOME=${jhome}" >> /etc/profile
echo "CLASSPATH=\$JAVA_HOME/lib" >> /etc/profile
echo "PATH=\$PATH:\$JAVA_HOME/bin" >> /etc/profile


source /etc/profile
