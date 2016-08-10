//Soccer Coordinator Project One



var Sharks: [String] = []           //Shark Team
var Raptors: [String] = []          //Raptors Team
var Dragons: [String] = []          //Dragons Team
var parents: [String] = []          //Array containing the parents' names
var switchString: [String] = []     //Empty array to carry operations in the loops
var totalYesCount: Int = 0          //this variable holds total number of experienced players
var totalNoCount: Int = 0           //this variable holds the total number of inexperienced playes
var numberOfTeams = 3               // Number of teams. This information was provided in the project

// dictionary containing the name of the player and its experience

let playerNameAndExperience: [String:String] =
    ["Joe Smith":"YES",
     "Jill Tanner":"YES",
     "Bill Bon":"YES",
     "Eva Gordon":"NO",
     "Matt Gill":"NO",
     "Kimmy Stein":"NO",
    "Sammy Adams":"NO",
    "Karl Saygan":"YES",
    "Suzane Greenberg":"YES",
    "Sal Dali":"NO",
    "Joe Kavalier":"NO",
    "Ben Finkelstein":"NO",
    "Diego Soto":"YES",
    "Chloe Alaska":"NO",
    "Arnold Willis":"NO",
    "Phillip Helm":"YES",
    "Les Clay":"YES",
    "Herschel Krustofski":"YES"]

//This for loop separates the total number of experienced and inexperienced players.
for (playerName, playerExperience) in playerNameAndExperience
{
    if playerExperience == "YES"
    {
        totalYesCount += 1
    }
    else
    {
        totalNoCount += 1
    }
}


//This variable holds the amount of people per team. If the number of people change, the variable is updated automatically
var personsPerTeam = playerNameAndExperience.count/numberOfTeams

//This variable holds the amount of experienced players per team. If the number of people change, the variable is updated automatically
var totalExperiencedPerTeam = totalYesCount/numberOfTeams
var totalInexperiencedPerTeam = totalYesCount/numberOfTeams




//Finding experienced players and distributing them equally between all available teams.
//We found that we have 9 experienced and 9 inexperienced players. The number of experience per team is calculated dividing the 
// total number of experienced players by the number of teams
 
for (playerName, playerExperience) in playerNameAndExperience
{
    if playerExperience == "YES"
    {
        if Sharks.count < totalExperiencedPerTeam {
            Sharks.append(playerName)
        }
        else if Raptors.count < totalExperiencedPerTeam {
            Raptors.append(playerName)
        }
        else if Dragons.count < totalExperiencedPerTeam {
            Dragons.append(playerName)
        }
    }
    
}

//Now that we already have 3 experienced members per team, we need to fill the remaining spots with Inexperienced players.

for (playerName, playerExperience) in playerNameAndExperience
{
    if playerExperience == "NO"
    {
        if Sharks.count < personsPerTeam {
            Sharks.append(playerName)
        }
        else if Raptors.count < personsPerTeam {
            Raptors.append(playerName)
        }
        else if Dragons.count < personsPerTeam {
            Dragons.append(playerName)
        }
    }
    
}



print(Sharks)
print(Raptors)
print(Dragons)
