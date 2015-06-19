JDK_FILE="jdk-8u45-linux-x64.tar.gz"
echo "Checking if $JDK_FILE needs to be downloaded."
if [ -f "$JDK_FILE" ]; then
   echo "$JDK_FILE already exists."	
else
   echo "Could not find $JDK_FILE, downloading now."
   apt-get install -y wget 
   wget --no-check-certificate --header "Cookie: oraclelicense=accept-securebackup-cookie" \
         http://download.oracle.com/otn-pub/java/jdk/8u45-b14/jdk-8u45-linux-x64.tar.gz
   echo "Finished downloading $JDK_FILE."
fi