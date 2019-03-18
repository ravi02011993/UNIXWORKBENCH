count_tot=$(ls -1 | wc -l)
function read_count {
read count
check_count
}
function check_count
{
echo "You entered $count"

    while [[ $count -ge $count_tot+1 ]] || [[ $count -le $count_tot-1 ]]
do
   if [[ $count -le $count_tot-1  ]]
   then
    echo "You guessed too low! guess a bigger number"
    read_count
else
   echo "You guessed too big! guess a smaller number"
    read_count
fi
done
}
echo "Hi ! please guess the number of files  in the current folder :) "
read_count

if [[ $count -eq $count_tot ]]
then
    echo "congratulations! You guessed it right"
fi 
echo "ending the game! Thanks for participation"


