JAVACMD=`which java`
JAVA_OPTS=""
cd /kafka-lenses
echo -Dlenses.license.file="/kafka-lenses/license.json"
eval exec "\"$JAVACMD\"" \
     ${JAVA_OPTS} \
     -Dlenses.license.file=/kafka-lenses/license.json \
     -cp /kafka-lenses/kafka-lenses-assembly-1.0.jar \
     com.landoop.kafka.lenses.Main /kafka-lenses/lenses.conf
exit $?
