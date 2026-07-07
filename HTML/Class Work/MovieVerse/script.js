const slides = document.querySelectorAll(".movie-card");
const dots = document.querySelectorAll(".dot");

let current = 0;

function showSlide(index) {
  slides.forEach((slide) => slide.classList.remove("active"));
  dots.forEach((dot) => dot.classList.remove("active"));

  slides[index].classList.add("active");
  dots[index].classList.add("active");
}

setInterval(() => {
  current = (current + 1) % slides.length;
  showSlide(current);
}, 5000);
