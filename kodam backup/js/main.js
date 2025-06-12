(function ($) {
    "use strict";

        //splash screen
    window.addEventListener('load', function () {
  setTimeout(function () {
    const splash = document.getElementById('splash');
    splash.style.opacity = '0';
    setTimeout(function () {
      splash.style.display = 'none';
      document.getElementById('main-content').style.display = 'block';
    }, 500); // Delay untuk animasi transisi
  }, 2000); // Durasi splash screen (2000ms = 2 detik)
});

    // Spinner
    var spinner = function () {
        setTimeout(function () {
            if ($('#spinner').length > 0) {
                $('#spinner').removeClass('show');
            }
        }, 1);
    };
    spinner();
    
    
    // Initiate the wowjs
    new WOW().init();


    // Sticky Navbar
    $(window).scroll(function () {
        if ($(this).scrollTop() > 45) {
            $('.navbar').addClass('sticky-top shadow-sm');
        } else {
            $('.navbar').removeClass('sticky-top shadow-sm');
        }
    });
    
    // Dropdown on mouse hover
    const $dropdown = $(".dropdown");
    const $dropdownToggle = $(".dropdown-toggle");
    const $dropdownMenu = $(".dropdown-menu");
    const showClass = "show";
    
    $(window).on("load resize", function() {
        if (this.matchMedia("(min-width: 992px)").matches) {
            $dropdown.hover(
            function() {
                const $this = $(this);
                $this.addClass(showClass);
                $this.find($dropdownToggle).attr("aria-expanded", "true");
                $this.find($dropdownMenu).addClass(showClass);
            },
            function() {
                const $this = $(this);
                $this.removeClass(showClass);
                $this.find($dropdownToggle).attr("aria-expanded", "false");
                $this.find($dropdownMenu).removeClass(showClass);
            }
            );
        } else {
            $dropdown.off("mouseenter mouseleave");
        }
    });


    // Facts counter
    $('[data-toggle="counter-up"]').counterUp({
        delay: 10,
        time: 2000
    });
    
    
    // Back to top button
    $(window).scroll(function () {
        if ($(this).scrollTop() > 100) {
            $('.back-to-top').fadeIn('slow');
        } else {
            $('.back-to-top').fadeOut('slow');
        }
    });
    $('.back-to-top').click(function () {
        $('html, body').animate({scrollTop: 0}, 1500, 'easeInOutExpo');
        return false;
    });


    // Testimonials carousel
    $(".testimonial-carousel").owlCarousel({
        autoplay: true,
        smartSpeed: 1500,
        dots: true,
        loop: true,
        center: true,
        responsive: {
            0:{
                items:1
            },
            576:{
                items:1
            },
            768:{
                items:2
            },
            992:{
                items:3
            }
        }
    });


    // Vendor carousel
    $('.vendor-carousel').owlCarousel({
        loop: true,
        margin: 45,
        dots: false,
        loop: true,
        autoplay: true,
        smartSpeed: 1000,
        responsive: {
            0:{
                items:2
            },
            576:{
                items:4
            },
            768:{
                items:6
            },
            992:{
                items:8
            }
        }

        
    });   
})(jQuery);


/** Galeri */
const galleries = {
  "apel-pagi": [
    "img/apel-1.jpg",
    "img/apel-2.jpg",
    "img/apel-3.jpg",
    "img/apel-4.jpg"
  ],
  "budidaya-ayam-boiler": [
    "img/budidaya-1.jpg",
    "img/budidaya-2.jpg",
    "img/budidaya-3.jpg",
    "img/budidaya-4.jpg",
    "img/budidaya-5.jpg",
    "img/budidaya-6.jpg"
  ],
  "jam-dan": [
    "img/jamdan-1.jpg",
    "img/jamdan-2.jpg",
    "img/jamdan-3.jpg",
    "img/jamdan-4.jpg",
    "img/jamdan-5.jpg",
    "img/jamdan-6.jpg"
  ],
  "pembagian-bingkisan": [
    "img/bingkisan-1.jpg",
    "img/bingkisan-2.jpg",
    "img/bingkisan-3.jpg",
    "img/bingkisan-4.jpg",
    "img/bingkisan-5.jpg",
    "img/bingkisan-6.jpg",
  ],
  "pengarahan-siswa": [
    "img/pengarahan-1.jpg",
    "img/pengarahan-2.jpg",
    "img/pengarahan-3.jpg",
    "img/pengarahan-4.jpg",
    "img/pengarahan-5.jpg",
    "img/pengarahan-6.jpg"
  ],
  "pengolahan-lahan": [
    "img/lahan-1.jpg",
    "img/lahan-2.jpg",
    "img/lahan-3.jpg",
    "img/lahan-4.jpg",
    "img/lahan-5.jpg",
    "img/lahan-6.jpg"
  ],
  "perangkaian-pipa": [
    "img/pipa-1.jpg",
    "img/pipa-2.jpg",
    "img/pipa-3.jpg",
    "img/pipa-4.jpg",
    "img/pipa-5.jpg",
    "img/pipa-6.jpg"
  ],
  "sosialisasi-bri": [
    "img/sosialisasi-1.jpg",
    "img/sosialisasi-2.jpg",
    "img/sosialisasi-3.jpg",
    "img/sosialisasi-4.jpg",
    "img/sosialisasi-5.jpg",
    "img/sosialisasi-6.jpg"
  ],
};

function openGallery(folder) {
  document.getElementById('folderList').style.display = 'none';
  document.getElementById('gallerySection').style.display = 'block';

  const galleryContent = document.getElementById('galleryContent');
  galleryContent.innerHTML = '';

  galleries[folder].forEach(src => {
    const col = document.createElement('div');
    col.className = 'col-md-4 mb-3';

    const card = document.createElement('div');
    card.className = 'card shadow-sm';

    const img = document.createElement('img');
    img.src = src;
    img.className = 'card-img-top';
    img.alt = 'Kegiatan';

    card.appendChild(img);
    col.appendChild(card);
    galleryContent.appendChild(col);
  });
}

function backToFolders() {
  document.getElementById('folderList').style.display = 'flex';
  document.getElementById('gallerySection').style.display = 'none';
}

//** Carousel **//
    $(document).ready(function(){
        $(".vendor-carousel").owlCarousel({
            loop: true,
            margin: 30,
            autoplay: true,              // autoplay aktif
            autoplayTimeout: 1000,       // delay 1 detik
            autoplayHoverPause: false,    // pause saat hover
            responsive: {
                0: { items: 2 },
                576: { items: 3 },
                768: { items: 4 },
                992: { items: 5 },
                1200: { items: 6 }
            }
        });
    });
