$('.carousel').slick({
  infinite: true,
  slidesToShow: 4,
  slidesToScroll: 4,
  responsive: [
{
  breakpoint: 1350,
  settings: {
    arrows : false
  }
},
    {
      breakpoint: 1024,
      settings: {
        slidesToShow: 2,
        slidesToScroll: 2,
        infinite: true,
        arrows : false
      }
    },
    {
      breakpoint: 768,
      settings: {
        slidesToShow: 2,
        slidesToScroll: 2,
        arrows : false
      }
    },
    {
      breakpoint: 480,
      settings: {
        slidesToShow: 1,
        slidesToScroll: 1,
        arrows : false
      }
    }
  ]
})

const btnNext = document.getElementById('btn-left')
const btnPrev = document.getElementById('btn-right')
const nextBtnSlick = document.querySelector('.slick-next')
const prevBtnSlick = document.querySelector('.slick-prev')


if(btnNext & btnPrev & btnPrev & prevBtnSlick) {
  btnNext.addEventListener('click', () => {
    prevBtnSlick.click()
  })
  btnPrev.addEventListener('click', () => {
    nextBtnSlick.click()
  })
}

// ----------------------
// меню
const button = document.querySelector('.menu_burger');
const menuActive=document.querySelector('.menu');

button.addEventListener('click',() => {
  button.classList.toggle('active');
  menuActive.classList.toggle('menu_active')
  document.body.classList.toggle('body-active')
})



// ----------------------------
// Сообщение в бургере
const bgMasActive=document.querySelector('.burger-messager');
const idclos=document.querySelector('.closed');
const mesBG=document.querySelector('.bg-position');

bgMasActive.addEventListener('click',()=>{
  mesBG.classList.add('bg-pos-active')
});

idclos.addEventListener('click',()=>{
  mesBG.classList.remove('bg-pos-active')
});

// Наушники
const earPohne=document.querySelectorAll('.container__img-ear');
const imgEar=document.querySelectorAll('.img-ear');

earPohne.forEach(item => {
  item.addEventListener('mouseover', function() {
    const activeElement = this
    activeElement.firstChild.classList.add('img-ear-active')
  })
  item.addEventListener('mouseout', function() {
    const activeElement = this
    activeElement.firstChild.classList.remove('img-ear-active')
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
