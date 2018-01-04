function getReceipt() {
    var text1 = "<h3>You Ordered:</h3>";
    var runningTotal = 0;
    var sizeTotal = 0;
    var sizeArray = document.getElementsByClassName("size");
    for (var i = 0; i < sizeArray.length; i++) {
        if (sizeArray[i].checked) {
            var selectedSize = sizeArray[i].value;
            if (selectedSize === "Personal Pizza") {
                sizeTotal = 6;
            } else if (selectedSize === "Medium Pizza") {
                sizeTotal = 10;
            } else if (selectedSize === "Large Pizza") {
                sizeTotal = 14;
            } else if (selectedSize === "Extra Large Pizza") {
                sizeTotal = 16;
            }
            text1 = text1 + selectedSize + "  -" + sizeTotal + "<br>";
        }
    }
  
    runningTotal = sizeTotal;
    console.log(selectedSize + " = $" + sizeTotal + ".00");
    console.log("size text1: " + text1);
    console.log("subtotal: $" + runningTotal + ".00");
    getMeat(runningTotal, text1);
    }


function getMeat(runningTotal, text1) {
    var meatTotal = 0;
    var meatCount = 0;
    var selectedMeat = [];
    var meatArray = document.getElementsByClassName("meats");
    for (var j = 0; j < meatArray.length; j++) {
        if (meatArray[j].checked) {
            selectedMeat.push(meatArray[j].value);
            console.log("selected veggie item: (" + meatArray[j].value + ")");
            if (meatCount > 0) {
                meatTotal++;
                text1 = text1 + meatArray[j].value + "  -  1" + "<br>";
            }
            else {
                text1 = text1 + meatArray[j].value + "  -  0" + "<br>";
            }
            meatCount++;
        }
    }
    runningTotal = (runningTotal + meatTotal);
    console.log("total selected meat items: " + meatCount);
    console.log(meatCount + " meat - 1 free meat = " + "$" + meatTotal + ".00");
    console.log("meat text1: " + text1);
    console.log("Purchase Total: " + "$" + runningTotal + ".00");
    getCheese(runningTotal, text1)
    }

function getCheese(runningTotal, text1) {
    var cheeseTotal = 0;
    var cheeseArray = document.getElementsByClassName("cheese");
    for (var i = 0; i < cheeseArray.length; i++) {
        if (cheeseArray[i].checked) {
            var selectedCheese = cheeseArray[i].value;
            if (selectedCheese === "Regular") {
                cheeseTotal = 0;
            } else if (selectedCheese === "No Cheese") {
                cheeseTotal = 0;
            } else if (selectedCheese === "Extra Cheese") {
                cheeseTotal = 3;
            }
            text1 = text1 + selectedCheese + "  -" + cheeseTotal + "<br>";
        }
    }
  
    runningTotal = (runningTotal + cheeseTotal);
    console.log(selectedCheese + " = $" + cheeseTotal + ".00");
    console.log("size text1: " + text1);
    console.log("subtotal: $" + runningTotal + ".00");
    getCrusts(runningTotal, text1);
    }

    function getCrusts(runningTotal, text1) {
        var crustsTotal = 0;
        var crustsArray = document.getElementsByClassName("crusts");
        for (var i = 0; i < crustsArray.length; i++) {
            if (crustsArray[i].checked) {
                var selectedCrusts = crustsArray[i].value;
                if (selectedCrusts === "Plain Crust") {
                    crustsTotal = 0;
                } else if (selectedCrusts === "Garlic Butter Crust") {
                    crustsTotal = 0;
                } else if (selectedCrusts === "Cheese Stuffed Crust") {
                    crustsTotal = 3;
                } else if (selectedCrusts === "Spicy Crust") {
                    crustsTotal = 0;
                } else if (selectedCrusts === "House Special Crust") {
                    crustsTotal = 0;
                }
                text1 = text1 + selectedCrusts + "  -" + crustsTotal + "<br>";
            }
        }
        
        runningTotal = (runningTotal + crustsTotal);
        console.log(selectedCrusts + " = $" + crustsTotal + ".00");
        console.log("size text1: " + text1);
        console.log("subtotal: $" + runningTotal + ".00");
        getSauces(runningTotal, text1);
    }

    function getSauces(runningTotal, text1) {
        var saucesTotal = 0;
        var saucesArray = document.getElementsByClassName("sauces");
        for (var i = 0; i < saucesArray.length; i++) {
            if (saucesArray[i].checked) {
                var selectedSauces = saucesArray[i].value;
                text1 = text1 + selectedSauces + "  -" + saucesTotal + "<br>";
            }
        }
        if (selectedSauces === "Marinara Sauce") {
            saucesTotal = 0;
        } else if (selectedSauces === "White Sauce") {
            saucesTotal = 0;
        } else if (selectedSauces === "Barbeque Sauce") {
            saucesTotal = 0;
        } else if (selectedSauces === "No Sauce") {
            saucesTotal = 0;
        }
        runningTotal = (runningTotal + saucesTotal);
        console.log(selectedSauces + " = $" + saucesTotal + ".00");
        console.log("size text1: " + text1);
        console.log("subtotal: $" + runningTotal + ".00");
        getVeggies(runningTotal, text1)
    }

    function getVeggies(runningTotal, text1) {
        var veggiesTotal = 0;
        var veggiesCount = 0;
    var selectedVeggies = [];
    var veggiesArray = document.getElementsByClassName("veggies");
    for (var j = 0; j < veggiesArray.length; j++) {
        if (veggiesArray[j].checked) {
            selectedVeggies.push(veggiesArray[j].value);
            console.log("selected veggie item: (" + veggiesArray[j].value + ")");
            if (veggiesCount > 0) {
                veggiesTotal++;
                text1 = text1 + veggiesArray[j].value + "  -  1" + "<br>";
            }
            else {
                text1 = text1 + veggiesArray[j].value + "  -  0" + "<br>";
            }
            veggiesCount++;
        }

    }
   
    runningTotal = (runningTotal + veggiesTotal);
    console.log("total selected veggie items: " + veggiesTotal);
    console.log(veggiesTotal + " veggie - 1 free veggie = " + "$" + veggiesTotal + ".00");
    console.log("veggie text1: " + text1);
    console.log("Purchase Total: " + "$" + runningTotal + ".00");
    document.getElementById("showText").innerHTML = text1;
    document.getElementById("totalPrice").innerHTML = "</h3>Total: <strong>$" + runningTotal + ".00" + "</strong></h3>";
    }

   













// JavaScript source code
