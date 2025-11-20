let randomNumber = Math.floor(Math.random() * 20) + 1;
let attempts = 10;

const inputGuess = document.getElementById("guess");
const btnGuess = document.getElementById("btnGuess");
const btnReset = document.getElementById("btnReset");
const result = document.getElementById("result");
const attemptsText = document.getElementById("attempts");

btnGuess.addEventListener("click", () => {
    let guess = parseInt(inputGuess.value);

    if (!guess) {
        result.textContent = "Masukkan angka dulu!";
        result.style.color = "black";
        result.textContent = "reset game ya"
        return;
    }

    attempts--;
    attemptsText.textContent = attempts;

    if (guess === randomNumber) {
        result.style.color = "green";
        result.textContent = "🎉 Selamat! Tebakan kamu benar!";
        btnGuess.disabled = true;
        btnReset.style.display = "inline-block";
    } 
    else if (guess > randomNumber) {
        result.style.color = "red";
        result.textContent = "Ketinggian, turunin lagi!";
    } 
    else {
        result.style.color = "blue";
        result.textContent = "Kekecilan, naikin lagi!";
    }

    if (attempts === 0 && guess !== randomNumber) {
        result.style.color = "black";
        result.textContent = "😢 Habis! Angkanya: " + randomNumber;
        btnGuess.disabled = true;
        btnReset.style.display = "inline-block"; 
    }
});

btnReset.addEventListener("click", () => {
    randomNumber = Math.floor(Math.random() * 20) + 1;
    attempts = 10;
    btnReset.disabled = true
    attemptsText.textContent = attempts;
    inputGuess.value = "";
    result.textContent = "";
    btnGuess.disabled = false;
    btnReset.style.display = "none";
});

