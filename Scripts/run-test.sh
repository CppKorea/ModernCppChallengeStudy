
# Argument check: Install directory. Use default if the variable is undefined
if [ -z $1 ]; then
    DIR=./Solved ;
else
    DIR=$1 ;
fi
pushd $DIR;

# Find all programs with given name
# echo `ls | grep -i 'Problem*'`

for program in `ls | grep -i 'Problem*'`
do
	echo $program;  # disply program's name
    ./$program --reporter compact;     # execute the test program
done

popd;
