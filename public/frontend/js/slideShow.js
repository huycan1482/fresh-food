// const carouselSlide = document.querySelector('.carousel-slide');
// const carouselImages = document.querySelectorAll('.carousel-slide img');

// // buttons
// const prevBtn = document.querySelector('#prevBtn');
// const nextBtn = document.querySelector('#nextBtn');

// //counter
// let counter = 1;
// const size = carouselImages[0].clientWidth;

// carouselSlide.style.transform = 'translateX(' + (-size * counter) + 'px)';

// //buttons listener
// nextBtn.addEventListener('click', () => {
//     if (counter >= carouselImages.length - 1) return;
//     carouselSlide.style.transition = "transform 0.4s ease-in-out";
//     counter++;
//     carouselSlide.style.transform = 'translateX(' + (-size * counter) + 'px)';
// });

// prevBtn.addEventListener('click', () => {
//     if (counter <= 0) return;
//     carouselSlide.style.transition = "transform 0.4s ease-in-out";
//     counter--;
//     carouselSlide.style.transform = 'translateX(' + (-size * counter) + 'px)';
// });

// carouselSlide.addEventListener('transitionend', () => {
//     if(carouselImages[counter].id === 'lastClone') {
//         carouselSlide.style.transition = "none";
//         counter = carouselImages.length - 2;
//         carouselSlide.style.transform = 'translateX(' + (-size * counter) + 'px)';
//     }

//     if (carouselImages[counter].id === 'firstClone') {
//         carouselSlide.style.transition = "none";
//         counter = carouselImages.length - counter;
//         carouselSlide.style.transform = 'translateX(' + (-size * counter) + 'px)';
//     }
// });

const carouselImages = document.querySelectorAll('.carousel-slide div');

const nextBtn = document.querySelector('#nextBtn');
const prevBtn = document.querySelector('#prevBtn');

const size = carouselImages.length;

let counter = 0;

prevBtn.addEventListener('click', () => {
    if (counter < 0)
        counter = size - 1;
    if (counter == size)
        counter -= 1;

    carouselImages[counter].style.opacity = '0';
    if (counter == 0) {
        carouselImages[size - 1].style.opacity = '1';
    } else {
        carouselImages[counter - 1].style.opacity = '1';
    }
    counter--;
    // console.log(counter + 'prev');
});

nextBtn.addEventListener('click', () => {
    if (counter > (size - 1))
        counter = 0;
    if (counter < 0)
        counter = 2;

    carouselImages[counter].style.opacity = '0';
    if (counter == (size - 1)) {
        carouselImages[0].style.opacity = '1';
    } else {
        carouselImages[counter + 1].style.opacity = '1';
    }
    counter++;
    // console.log(counter + 'next');
});