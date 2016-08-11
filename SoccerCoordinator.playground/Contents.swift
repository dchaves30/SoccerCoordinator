//Soccer Coordinator Project One

//---------- BEGIN VARIABLES, ARRAYS AND DICTIONARIES Declaration -----------\\

var Sharks: [String] = []           //Shark Team
var Raptors: [String] = []          //Raptors Team
var Dragons: [String] = []          //Dragons Team
var totalYesCount: Int = 0          //this variable holds total number of experienced players
var totalNoCount: Int = 0           //this variable holds the total number of inexperienced playes
var numberOfTeams = 3               // Number of teams. This information was provided in the project

//dictionary containing the parents' names
var parents: [String:String] = [
    "Jim and Jan Smith":"Joe Smith",
    "Clara Tanner":"Jill Tanner",
    "Sara and Jenny Bon":"Bill Bon",
    "Wendy and Mike Gordon":"Eva Gordon",
    "Charles and Sylvia Gill":"Matt Gill",
    "Bill and Hillary Stein":"Kimmy Stein",
    "Jeff Adams":"Sammy Adams",
    "Heather Bledsoe":"Karl Saygan",
    "Henrietta Dumas":"Suzane Greenberg",
    "Gala Dali":"Sal Dali",
    "Sam and Elaine Kavalier":"Joe Kavalier",
    "Aaron and Jill Finkelstein":"Ben Finkelstein",
    "Robin and Sarika Soto":"Diego Soto",
    "David and Jamie Alaska":"Chloe Alaska",
    "Claire Willis":"Arnold Willis",
    "Thomas Helm and Eva Jones":"Phillip Helm",
    "Wynonna Brown":"Les Clay",
    "Hyman and Rachel Krustofski":"Herschel Krustofski" ]

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

//The variables below holds the amount of experienced players per team. If the number of people change, the variable is updated automatically

var totalExperiencedPerTeam = totalYesCount/numberOfTeams // Stores the total of experienced players per team
var totalInexperiencedPerTeam = totalYesCount/numberOfTeams // Stores the total of inexperienced players per team


//---------------- END VARIABLE DECLARATION---------------------\\


// This function sends the letter to the parents.
func sendLetter (parentName: String, childName: String, dateAndTime: String, teamName: String)
{
    print("Dear \(parentName), it is my pleasure to inform you that \(childName) was assigned to the team \(teamName). The first team practice is scheduled to \(dateAndTime). See you there!")
}


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

//------------Print the Teams and Team Members---------

print("--------------TEAMS------------")
print("Shark Team:\n")
for n in Sharks
{
    print(n)
}
print("\nRaptor Team:\n")
for n in Raptors
{
    print(n)
}
print("\nDragon Team:\n")
for n in Dragons
{
    print(n)
}
print("-----------------------------\n")

//-----------End print Team and Team Members-----------

//Send the letter to the parents

for (guardianName, playerName) in parents
{
    
    if Sharks.contains(playerName)
    {
        print("Letter to \(playerName)'s parents:")
        sendLetter(guardianName, childName: playerName, dateAndTime: "March 17, 3pm", teamName: "Sharks")
        print("\n")
        
    }
    else if Raptors.contains(playerName)
    {
        
        print("Letter to \(playerName)'s parents:")
        sendLetter(guardianName, childName: playerName, dateAndTime: "March 18, 1pm", teamName: "Raptors")
        print("\n")
        
    }
    else if Dragons.contains(playerName)
    {
        
        print("Letter to \(playerName)'s parents:")
        sendLetter(guardianName, childName: playerName, dateAndTime: "March 17, 1pm", teamName: "Dragons")
        print("\n")
        
    }
    
   
}

print("Total letters sent: \(parents.count)")





