const quotes = [
    "Jangan menyerah, hal besar butuh proses.",
    "Kegagalan adalah bagian dari perjalanan menuju sukses.",
    "ADAKAH 100.",
    "di atas langit masi ada langit.",
    "Usaha tidak akan mengkhianati hasil.",
    "coba aja sebisamu.",
    "jangan menyerah.",
    "Hari ini lebih baik dari kemarin.",
    "ingat masi ada hari esok.",
    "selalu yakin kamu pasti bisa."
];

const btnGenerate = document.getElementById("btnGenerate");
const quoteText = document.getElementById("quoteText");

btnGenerate.addEventListener("click", () => {
    let randomIndex = Math.floor(Math.random() * quotes.length);
    quoteText.textContent = quotes[randomIndex];
});
