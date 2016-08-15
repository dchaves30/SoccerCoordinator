//Soccer Coordinator Project One

//---------- BEGIN VARIABLES, ARRAYS AND DICTIONARIES Declaration -----------\\

var Sharks: [[String:String]] = []          //Shark Team
var Raptors: [[String:String]] = []         //Raptors Team
var Dragons: [[String:String]] = []          //Dragons Team
var totalYesCount: Int = 0          //this variable holds total number of experienced players
var totalNoCount: Int = 0           //this variable holds the total number of inexperienced playes
var numberOfTeams = 3               // Number of teams. This information was provided in the project
var experiencedPlayers: [[String:String]] = [] //this collections holds experienced players information
var inexperiencedPlayers: [[String:String]] = [] //this collections holds Ineexperienced players information
var letter: [String:String] = [:] //This dictionary holds the parent/child pair for the letters



//dictionary cointaining each player's info
let player1: [String: String] = ["name":"Joe Smith", "height":"42", "experienced":"true", "guardianNames":"Jim and Jan Smith"]
let player2: [String: String] = ["name":"Jill Tanner", "height":"36", "experienced":"true", "guardianNames":"Clara Tanner"]
let player3: [String: String] = ["name":"Bill Bon", "height":"43", "experienced":"true", "guardianNames":"Sara and Jenny Bon"]
let player4: [String: String] = ["name":"Eva Gordon", "height":"45", "experienced":"false", "guardianNames":"Wendy and Mike Gordon"]
let player5: [String: String] = ["name":"Matt Gill", "height":"40", "experienced":"false", "guardianNames":"Charles and Sylvia Gill"]
let player6: [String: String] = ["name":"Kimmy Stein", "height":"41", "experienced":"false", "guardianNames":"Bill and Hillary Stein"]
let player7: [String: String] = ["name":"Sammy Adams", "height":"45", "experienced":"false", "guardianNames":"Jeff Adams"]
let player8: [String: String] = ["name":"Karl Saygan", "height":"42", "experienced":"true", "guardianNames":"Heather Bledsoe"]
let player9: [String: String] = ["name":"Suzane Greenberg", "height":"44", "experienced":"true", "guardianNames":"Henrietta Dumas"]
let player10: [String: String] = ["name":"Sal Dali", "height":"41", "experienced":"false", "guardianNames":"Gaia Dali"]
let player11: [String: String] = ["name":"Joe Kavalier", "height":"39", "experienced":"false", "guardianNames":"Sam and Elaine Kavalier"]
let player12: [String: String] = ["name":"Ben Fikelstein", "height":"44", "experienced":"false", "guardianNames":"Aaron and Jill Fikelstein"]
let player13: [String: String] = ["name":"Diego Soto", "height":"41", "experienced":"true", "guardianNames":"Robin and Sarika Soto"]
let player14: [String: String] = ["name":"Chloe Alaska", "height":"47", "experienced":"false", "guardianNames":"David and Jamie Alaska"]
let player15: [String: String] = ["name":"Arnold Willis", "height":"43", "experienced":"false", "guardianNames":"Claire Willis"]
let player16: [String: String] = ["name":"Phillip Heim", "height":"44", "experienced":"true", "guardianNames":"Thomas Helm and Eva Jones"]
let player17: [String: String] = ["name":"Les Clay", "height":"42", "experienced":"true", "guardianNames":"Wyonna Brown"]
let player18: [String: String] = ["name":"Herschel Krustofski", "height":"45", "experienced":"true", "guardianNames":"Hyman and Rachel Krustofski"]


//This array is a colletion of all the players

let allPlayers:[[String:String]] = [player1,player2,player3,player4,player5,player6,player7,player8,player9,player10,player11,player12,player13,player14,player15,player16,player17,player18]

//This variable holds the amount of people per team. If the number of people change, the variable is updated automatically
var personsPerTeam = allPlayers.count/numberOfTeams


//This for loop separates the total number of experienced and inexperienced players.

for players in allPlayers
{
    if players["experienced"] == "true"
        {
            for (key, value) in players
            {
                if key == "name"
                {
                    experiencedPlayers.append(players)
                }
              
                
            }
        }
    else if players["experienced"] == "false"
    {
        for (key1, value1) in players
        {
            if key1 == "name"
            {
                inexperiencedPlayers.append(players)
            }
        }
    }
   
}


//The variables below holds the amount of experienced players per team. If the number of people change, the variable is updated automatically

var totalExperiencedPerTeam = experiencedPlayers.count/numberOfTeams // Stores the total of experienced players per team
var totalInexperiencedPerTeam = inexperiencedPlayers.count/numberOfTeams // Stores the total of inexperienced players per team



//---------------- END VARIABLE DECLARATION---------------------\\


// This function sends the letter to the parents.
func sendLetter (parentName: String, childName: String, dateAndTime: String, teamName: String)
{
    print("Dear \(parentName), it is my pleasure to inform you that \(childName) was assigned to the team \(teamName). The first team practice is scheduled to \(dateAndTime). See you there!")
}


//Finding experienced players and distributing them equally between all available teams.
//We found that we have 9 experienced and 9 inexperienced players. The number of experience per team is calculated dividing the 
// total number of experienced players by the number of teams

for players in experiencedPlayers
{
    if Sharks.count < totalExperiencedPerTeam {
            Sharks.append(players)
        
        }
        else if Raptors.count < totalExperiencedPerTeam {
            Raptors.append(players)
        }
        else if Dragons.count < totalExperiencedPerTeam {
            Dragons.append(players)
        }
    
}


//Now that we already have 3 experienced members per team, we need to fill the remaining spots with Inexperienced players.

for playerName in inexperiencedPlayers
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


//------------Print the Teams and Team Members, and guardian names ---------

print("--------------TEAMS------------")
print("Shark Team:\n")
for n in Sharks
{
    for (key, value) in n
    {
        if key == "name"
        {
            print("Player Name: \(value)")
        }
        else if key == "guardianNames"
        {
            print("Guardian Name: \(value)")
        }
        
    }
    print()
}

print("\nRaptor Team:\n")
for n in Raptors
{
    for (key, value) in n
    {
        if key == "name"
        {
            print("Player Name: \(value)")
        }
        else if key == "guardianNames"
        {
            print("Guardian Name: \(value)")
        }
        
        
    }
    print()
}
print("\nDragon Team:\n")
for n in Dragons
{
    for (key, value) in n
    {
        if key == "name"
        {
            print("Player Name: \(value)")
        }
        else if key == "guardianNames"
        {
            print("Guardian Name: \(value)")
        }
        
        
    }
    print()
}
print("-----------------------------\n")


//-----------End print Team and Team Members-----------


print("------------------------ SHARKS LETTERS ----------------------------")

//--------------------- SEND LETTER TO PARENTS -------------------------//

//Send the letter to the Shark Team parents

for n in Sharks
{
    
    var teamName = "Sharks"
    var dateAndTime = "March 17, 3pm"
    
    for (key, value) in n
    {
    
        switch key
        {
            case "name":
            letter.updateValue(value, forKey: key)
            case "guardianNames":
            letter.updateValue(value, forKey: key)
            default: "no name found"
        }
        
    }
    
    var parent = letter["guardianNames"]
    var child = letter["name"]
    
    sendLetter(parent!, childName: child!, dateAndTime: dateAndTime, teamName: teamName)
    print()
}

print("------------------------ DRAGONS LETTERS ----------------------------")

//Send the letter to the Dragons Team parents

for n in Dragons
{
    
    var teamName = "Dragons"
    var dateAndTime = "March 17, 1pm"
    
    for (key, value) in n
    {
        
        switch key
        {
        case "name":
            letter.updateValue(value, forKey: key)
        case "guardianNames":
            letter.updateValue(value, forKey: key)
        default: "no name found"
        }
        
    }
    
    var parent = letter["guardianNames"]
    var child = letter["name"]
    
    sendLetter(parent!, childName: child!, dateAndTime: dateAndTime, teamName: teamName)
    print()
}

print("------------------------ RAPTORS LETTERS ----------------------------")

//Send the letter to the Raptors Team parents

for n in Raptors
{
    
    var teamName = "Raptors"
    var dateAndTime = "March 18, 1pm"
    
    for (key, value) in n
    {
        
        switch key
        {
        case "name":
            letter.updateValue(value, forKey: key)
        case "guardianNames":
            letter.updateValue(value, forKey: key)
        default: "no name found"
        }
        
    }
    
    var parent = letter["guardianNames"]
    var child = letter["name"]
    
    sendLetter(parent!, childName: child!, dateAndTime: dateAndTime, teamName: teamName)
    print()
}

// --------------------- END SEND LETTER TO PARENTS -------------------------------------//




