$('.carousel').slick({
  infinite: true,
  slidesToShow: 4,
  slidesToScroll: 4,
  responsive: [
{
  breakpoint: 1350,
  settings: {
    // arrows : false
  }
},
    {
      breakpoint: 1024,
      settings: {
        slidesToShow: 2,
        slidesToScroll: 2,
        infinite: true,
        // arrows : false
      }
    },
    {
      breakpoint: 768,
      settings: {
        slidesToShow: 2,
        slidesToScroll: 2,
        // arrows : false
      }
    },
    {
      breakpoint: 480,
      settings: {
        slidesToShow: 1,
        slidesToScroll: 1,
        // arrows : false
      }
    }
  ]
})

// ---------------------------------
// клик замена кнопок 
const btnNext = document.getElementById('btn-left')
const btnPrev = document.getElementById('btn-right')
const nextBtnSlick = document.querySelector('.slick-next')
const prevBtnSlick = document.querySelector('.slick-prev')


// if(btnNext & btnPrev & nextBtnSlick & prevBtnSlick) {
  btnNext.addEventListener('click', () => {
    prevBtnSlick.click()
  })
  btnPrev.addEventListener('click', () => {
    nextBtnSlick.click()
  })
// }


// ----------------------
// меню
const button = document.querySelector('.menu_burger');
const menuActive=document.querySelector('.menu');

button.addEventListener('click',() => {
  button.classList.toggle('active');
  menuActive.classList.toggle('menu_active')
  document.body.classList.toggle('body-active')
})


// -----------------------
// Анимаця gsap loader
let url = window.location.pathname;
if ( window.outerWidth > 1200) {
    startAni ()
    slickAni()
}



// --------------------------------
// Наушники
const earPohne=document.querySelectorAll('.container__img-ear');
const imgEar=document.querySelectorAll('.img-ear');

earPohne.forEach(item => {
  item.addEventListener('mouseover', function() {
    const activeElement = this
    activeElement.firstChild.nextElementSibling.classList.add('img-ear-active')
  })
  item.addEventListener('mouseout', function() {
    const activeElement = this
    activeElement.firstChild.nextElementSibling.classList.remove('img-ear-active')
  })
})

// ----------------
// переход
const mask=document.querySelector('.mask-animation');

const links = [...document.getElementsByTagName('a')]
links.forEach(elem => {
  elem.addEventListener('click', event => {
      event.preventDefault()
      mask.classList.add('mask-animation-active')
      setTimeout(() => {
        location.href = event.target.href
      }, 900)
  })
})

// Пункт меню
// -------------------------------------------
let pageId = document.querySelector("[data-id-page]").getAttribute("data-id-page");
let navItem = document.querySelector(`[data-id-nav=${pageId}]`);

if(pageId == navItem.getAttribute("data-id-nav")) {
  navItem.classList.add('menu__active');
}



const menuItems= document.querySelectorAll('.menu__items');
menuItems.forEach(elem=>{
elem.addEventListener('click',event=>{
  event.classList.add('menu__active');
  
})
})

// -------------------------------------------


// window.addEventListener("load", () => {
//   const brK = document.querySelector(".br_kr");

//   const audio = new Audio();
//   audio.preload = "auto";
//   audio.src = "./music/boi.mp3";

//   const saundWOWstart = () => {
//     audio.play();
//   }

//   const saundWOWstop=()=> {
//     audio.pause();
//   }

//   brK.onmouseover = () => {
//     saundWOWstart();
//     console.log("I");
//   };

//   brK.onmouseout = () => {
//     saundWOWstop();
//     console.log("m");
//   };
// });
