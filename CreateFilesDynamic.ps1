#This will create the number of individual metadata files with defined variables imported from a CSV file
$userobjects = Import-csv C:\Project\metadata.csv
$total=$userobjects.count
$StartNumber=1
$a=($total+$StartNumber)-1
DO
{
new-item C:\Project\Metadata\$StartNumber.txt
add-content -Path C:\Project\Metadata\$StartNumber.json -Value ('
{
    "attributes": [
      {
        "trait_type": "Space Program",
        "value": "'+$userobjects.SProgram[$StartNumber-1]+'"
      },
  {
        "trait_type": "Species",
        "value": "Cat"
      },
      {
        "trait_type": "Breed",
        "value": "'+$userobjects.Breed[$StartNumber-1]+'"
      },    
      {
        "trait_type": "Personality",
        "value": "'+$userobjects.Personality[$StartNumber-1]+'"
      },
      {
        "trait_type": "Hero Level",
        "value": "'+$userobjects.Hero[$StartNumber-1]+'"
      },
      {
        "trait_type": "Blood Type",
        "value": "'+$userobjects.BType[$StartNumber-1]+'"
      },
      {
        "trait_type": "Backround",
        "value": "Space"
      },
      {
        "display_type": "Number",
        "trait_type": "Generation",
        "value": 2
      }
    ],
    "description": "Genesis collection of interstellar cat heros exploring the cosmos and beyond",
    
    "name": "Cats In Outer Space #'+($StartNumber)+'"')
$StartNumber
$StartNumber++
} While ($StartNumber -le $a)
