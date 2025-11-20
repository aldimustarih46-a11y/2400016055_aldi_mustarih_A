let display = document.getElementById("display");
let currentValue = "";

function appendNumber(number) {
    currentValue += number;
    display.textContent = currentValue;
}

function appendSymbol(symbol) {
    currentValue += symbol;
    display.textContent = currentValue;
}

function clearDisplay() {
    currentValue = "";
    display.textContent = "0";
}

function calculate() {
    try {
        currentValue = eval(currentValue).toString();
        display.textContent = currentValue;
    } 
    catch (error) {
        display.textContent = "Error";
        currentValue = "";
    }
}
