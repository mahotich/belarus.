function startAni (){
    const tl=gsap.timeline({defaults: {duration: .5}})
      tl.from('li',{opacity:0, x:'100%', duration:.7},'<')
        .from('h1',{opacity:0, x:'100%',duration:.7},'<')
        .from('.head_menu',{opacity:0, y:-40})
}

function slickAni(){
  gsap.from('.content__item',{
    duration: 0.5,
    scale: 0.5,
    opacity: 0,
    stagger: 0.2,
    force3D: true
   })

  const tl=gsap.timeline({defaults: {duration: .5}})
  tl.from('.slick-prev',{x:-100,opacity:0,duration:0.5},'<')
    .from('.slick-next',{x:100,opacity:0,duration:0.5},'<')
}

function modalAni(){
  const tl_2=gsap.timeline({defaults:{duration: 1}})
  tl_2.from('.modal__item',{x:'-100%',opacity:0,duration:0.5})
      .from('.content__item-text',{y:'100%',opacity:0,duration:0.7})
      .from('.content__item-text p',{x:'100%',opacity:0,duration:0.5})
      .from('.slider-prev',{x:-100,opacity:0,duration:0.5})
      .from('.slider-next',{x:100,opacity:0,duration:0.5},'<')
}