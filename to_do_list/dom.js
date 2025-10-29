document.getElementById("btnTambah").addEventListener("click", tambahTugas);
document.getElementById("btnTema").addEventListener("click", ubahTema);

// Load data saat halaman dibuka
window.onload = loadData;

function tambahTugas() {
  let input = document.getElementById("inputTugas");
  if (input.value === "") return alert("Tugas tidak boleh kosong!");

  buatTugas(input.value);
  simpanData();
  input.value = "";
}

function buatTugas(teks) {
  let daftar = document.getElementById("daftarTugas");
  let li = document.createElement("li");

  let span = document.createElement("span");
  span.textContent = teks;
  span.onclick = function() {
      span.classList.toggle("selesai");
      simpanData();
  }

  let tombolEdit = document.createElement("button");
  tombolEdit.textContent = "Edit";
  tombolEdit.className = "edit";
  tombolEdit.onclick = function() {
    let baru = prompt("Ubah tugas:", span.textContent);
    if (baru) span.textContent = baru;
    simpanData();
  }

  let tombolHapus = document.createElement("button");
  tombolHapus.textContent = "X";
  tombolHapus.className = "hapus";
  tombolHapus.onclick = function() {
    li.remove();
    simpanData();
  }

  li.appendChild(span);
  li.appendChild(tombolEdit);
  li.appendChild(tombolHapus);
  daftar.appendChild(li);
}

function simpanData() {
  localStorage.setItem("todo", document.getElementById("daftarTugas").innerHTML);
}

function loadData() {
  document.getElementById("daftarTugas").innerHTML = localStorage.getItem("todo");
}

function ubahTema() {
  document.body.classList.toggle("dark");
}
