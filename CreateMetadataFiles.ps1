#This will create the number of individual metadata files defined as variable tot
#written by Sue@Rombakis 11/23/2022
$total=500
$a=1
DO
{
new-item C:\Project\Metadata\$a.txt
add-content -Path C:\Project\Metadata\$a.txt -Value ('
{
    "attributes": [
      {
        "trait_type": "Space Program",
        "value": "USA"
      },
  {
        "trait_type": "Species",
        "value": "Cat"
      },
      {
        "trait_type": "Breed",
        "value": "Red Spotted"
      },    
      {
        "trait_type": "Personality",
        "value": "Chill"
      },
      {
        "trait_type": "Hero Level",
        "value": "Common"
      },
      {
        "trait_type": "Blood Type",
        "value": "A+"
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
    
    "name": "Cats In Outer Space #'+($a))
$a
$a++
} While ($a -le $total)
