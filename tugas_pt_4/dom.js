const factText = document.getElementById("fact");
const btn = document.getElementById("btn");

async function getFact() {
    factText.innerText = "Loading...";

    const res = await fetch("https://uselessfacts.jsph.pl/api/v2/facts/random");
    const data = await res.json();

    factText.innerText = data.text;
}

window.onload = getFact;
btn.addEventListener("click", getFact);
