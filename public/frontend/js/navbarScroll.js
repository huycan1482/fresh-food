window.addEventListener("scroll",function(){
    var x = pageYOffset;
    
    var fakeMenu = document.querySelector('.fake-menu');
    
    // kéo xuống
    if(x > 100){
        document.querySelector('header').style.height = '60px';
        if (fakeMenu != null) {
            fakeMenu.style.height = '60px';
        }
        
    } else {
        document.querySelector('header').style.height = '80px';
        if (fakeMenu != null) {
            fakeMenu.style.height = '80px';
        }
    }

})