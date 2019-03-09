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

// Define the available plate sizes and bar size
weights() {
        return {
                weight: 45,
                barWeight: 45,
                platesAvailable: [45, 25, 10, 5, 2.5],
                plates: []
        }
}

methods: {
        calculate() {
                this.plates = [];
                var left = this.weight - this.barWeight;
                while( left > 0 ) {
                        var foundOne = false;
                        for( var i = 0; i < this.platesAvailable.length; i++ ) {
                                var amount = this.platesAvailable[i]*2;
                                if( amount <= left ) {
                                        left -= amount;
                                        this.plates.push( this.platesAvailable[i] );
                                        foundOne = true;
                                        break;
                                }
                        }
                        if( !foundOne ) break;
                }
        }
}
