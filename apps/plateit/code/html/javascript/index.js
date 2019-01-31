// The purpose of this script is to calculate needed weights
// Assumptions:
//  * Using imperial units (pounds)
//  * Using standard Oly bar of 45 pounds
// Necessary steps:
//  1. Accept user input
//      | value must be higher than 45
//      | value must end in 0 or 5
//  2. Calculate weight that needs to be added to each side of bar
//      | $UserInput - $BarWeight / 2 = $WorkingWeight
//  3. Calculate plates needed to equal $WorkingWeight
//      | ?? i suck at math
//      | Display needed plates in descending order

//document.getElementById('boxTargetWeight').innerHTML = halvePlate(100);

var plate1 = 45;
var plate2 = 25;
var plate3 = 10;
var plate4 = 5;
var plate5 = 2.5;

//function fncHUI() {
//        var trgWeight = document.getElementById("idEW").value;
//        document.getElementById("dspHTW").innterHTML = trgWeight;
//}

//document.getElementById("frmTW").onsubmit = function() {fncHW()};

function fncHW() {
        var varTW = document.getElementById("frmTW").elements[0].value;
        document.getElementById("dspHTW").innerHTML = varTW;
        return false;
}
