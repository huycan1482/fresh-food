var slider = document.getElementById("myRange");
var output = document.getElementById("demo");
output.innerHTML = slider.value;

slider.oninput = function () {
    output.innerHTML = this.value;
}

// var window = screen;


const sort_btn = document.querySelector('.sort-btn');

sort_btn.addEventListener('click', () => {
    var shop_side_bar = document.querySelector('.shop-side-bar');
    if (shop_side_bar.style.display == 'none') {
        shop_side_bar.style.display = 'block';
    } else {
        shop_side_bar.style.display = 'none'; 
    }
});

const close_category = document.querySelector('#close-category');
const close_price = document.querySelector('#close-price');
const close_product = document.querySelector('#close-product');


// if (screen.width < 769) {
//     main_category_side_bar.style.display = 'none';
//     price_range.style.display = 'none';
//     other_list_items.style.display = 'none';
// } else {
//     main_category_side_bar.style.display = 'block';
//     price_range.style.display = 'block';
//     other_list_items.style.display = 'block';
// }

close_category.addEventListener('click', () => {
    var main_category_side_bar = document.querySelector('.main-category-side-bar');
    if (main_category_side_bar.style.display == 'none') {
        main_category_side_bar.style.display = 'block';
    } else {
        main_category_side_bar.style.display = 'none';
    }

});

close_price.addEventListener('click', () => {
    var price_range = document.querySelector('.price-range');
    if (price_range.style.display == 'none') {
        price_range.style.display = 'block';
    } else {
        price_range.style.display = 'none';
    }
});

close_product.addEventListener('click', () => {
    var other_list_items = document.querySelector('.other-list-items');
    if (other_list_items.style.display == 'none') {
        other_list_items.style.display = 'block';
    } else {
        other_list_items.style.display = 'none';
    }
});