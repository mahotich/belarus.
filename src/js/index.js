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

// ---------------------------------
// клик замена кнопок 
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


// ---------------------------------
// паралакс
// const imgCards =document.querySelectorAll('.content__item-img')

// const imgCardsArr = [...imgCards]

// imgCardsArr.forEach(elem => {
//   elem.addEventListener('mouseover',function(el){
//     const half=elem.offsetHeight/2;
//     elem.style.transform='rotateX('+ -(el.offsetY-half)/5+ 'deg) rotateY('+(el.offsetX-half)/5+'deg)';
//     });
//   elem.addEventListener('mouseout',function(){
//     elem.style.transform='rotate(0)';
//     });
// })



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
if(url==='/modal.html'){
  startAni ()
  modalAni()
}
else{
  startAni ()
  slickAni()
}

// ----------------------------
// Сообщение в бургере
const bgMasActive=document.querySelector('.burger-messager');
const idclos=document.querySelector('.closed');
const mesBG=document.querySelector('.bg-position');
const tl_bg=gsap.timeline()

bgMasActive.addEventListener('click',()=>{
  tl_bg.from(mesBG,{opacity:0, x:-40})
  mesBG.classList.add('bg-pos-active')
  mesBG.classList.add('bg-pos-oppacity')
});

idclos.addEventListener('click',()=>{
  let qw=tl_bg.to(mesBG,{x:0, opacity:0})

  mesBG.classList.remove('bg-pos-oppacity')
  setTimeout(() => {
    mesBG.classList.remove('bg-pos-active')
  }, 500)
  qw.repeat()
});

// --------------------------------
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
