document.getElementById("btnTambah").addEventListener("click", tambahTugas);
document.getElementById("btnTema").addEventListener("click", ubahTema);
document.getElementById("btnClear").addEventListener("click", hapusSemua);
window.onload = loadData;

function tambahTugas() {
  let input = document.getElementById("inputTugas");
  if (!input.value) return alert("Isi dulu tugasnya!");

  buatTugas(input.value);
  input.value = "";
  simpanData();
  updateProgress();
}

function buatTugas(teks, selesai = false) {
  let daftar = document.getElementById("daftarTugas");
  let li = document.createElement("li");
  li.draggable = true;

  let span = document.createElement("span");
  span.textContent = teks;
  if (selesai) span.classList.add("selesai");

  span.onclick = function () {
    span.classList.toggle("selesai");
    simpanData();
    updateProgress();
  }

  let del = document.createElement("button");
  del.textContent = "X";
  del.onclick = function () {
    li.remove();
    simpanData();
    updateProgress();
  }

  li.appendChild(span);
  li.appendChild(del);
  daftar.appendChild(li);

  // Drag & Drop
  li.addEventListener("dragstart", () => li.classList.add("dragging"));
  li.addEventListener("dragend", () => {
    li.classList.remove("dragging");
    simpanData();
  });
}

function filterTugas(mode) {
  document.querySelectorAll("#daftarTugas li").forEach(li => {
    let done = li.querySelector("span").classList.contains("selesai");
    li.style.display =
      mode === "all" ? "flex" :
      mode === "selesai" && done ? "flex" :
      mode === "belum" && !done ? "flex" : "none";
  });
}

function hapusSemua() {
  localStorage.clear();
  document.getElementById("daftarTugas").innerHTML = "";
  updateProgress();
}

function ubahTema() {
  document.body.classList.toggle("dark");
}

function updateProgress() {
  let list = document.querySelectorAll("#daftarTugas li");
  let done = document.querySelectorAll(".selesai");
  let percent = list.length ? (done.length / list.length) * 100 : 0;
  document.getElementById("progressBar").style.width = percent + "%";
}

function simpanData() {
  let data = [];
  document.querySelectorAll("#daftarTugas li").forEach(li => {
    data.push({
      text: li.querySelector("span").textContent,
      selesai: li.querySelector("span").classList.contains("selesai")
    });
  });
  localStorage.setItem("todo", JSON.stringify(data));
}

function loadData() {
  let data = JSON.parse(localStorage.getItem("todo")) || [];
  data.forEach(item => buatTugas(item.text, item.selesai));
  updateProgress();
}

// Drag & Drop sorting
document.getElementById("daftarTugas").addEventListener("dragover", e => {
  e.preventDefault();
  let dragging = document.querySelector(".dragging");
  let after = [...document.querySelectorAll("#daftarTugas li:not(.dragging)")]
    .find(item => e.clientY <= item.offsetTop + item.offsetHeight / 2);
  if (after) after.before(dragging);
  else document.getElementById("daftarTugas").appendChild(dragging);
});
