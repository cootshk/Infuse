echo $1
DISPLAY_NAME=${1}
echo $DISPLAY_NAME
cat speed.mcfunction | sed "s/speed/${DISPLAY_NAME}/g" | sed "s/Speed/${DISPLAY_NAME^}/g" > ${DISPLAY_NAME}.mcfunction