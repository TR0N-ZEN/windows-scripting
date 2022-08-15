$x = (winget list)

# echo $x
# echo "#############################"
# echo $x[6]
# echo $x[7]
# echo $x[-1]

$i = 0
foreach ($line in $x)
{
  echo "[$i]$line"
  $i++
}