
# Argument check: Install directory. Use default if the variable is undefined
if [ -z $1 ]; then
    DIR=./Solved ;
else
    DIR=$1 ;
fi
pushd $DIR;

# Forward leftover params to test program
# https://stackoverflow.com/questions/1537673/how-do-i-forward-parameters-to-other-command-in-bash-script
shift;
# echo "$@";

# Find all programs with given name
# echo `ls | grep -i 'Problem*'`
for program in `ls | grep -i 'Problem*'`
do
	echo $program;  # disply program's name
    ./$program $@;  # execute the test program
done

popd;
