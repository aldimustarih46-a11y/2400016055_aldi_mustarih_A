const imgUrl = document.getElementById("imgUrl");
const nama = document.getElementById("nama");
const job = document.getElementById("job");
const bio = document.getElementById("bio");

const previewImg = document.getElementById("previewImg");
const previewName = document.getElementById("previewName");
const previewJob = document.getElementById("previewJob");
const previewBio = document.getElementById("previewBio");

imgUrl.addEventListener("input", () => {
    previewImg.src = imgUrl.value || "foto.jpg";
});
nama.addEventListener("input", () => {
    previewName.textContent = nama.value || "Nama Anda";
});
job.addEventListener("input", () => {
    previewJob.textContent = job.value || "Pekerjaan";
});
bio.addEventListener("input", () => {
    previewBio.textContent = bio.value || "Bio singkat ditampilkan di sini...";
});
