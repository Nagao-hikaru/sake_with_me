window.addEventListener('DomContentLoad', function(){


  const open = document.getElementById('open')
  const overlay = document.querySelector('.overlay');
  const sp = document.getElementById('sp-menu')
  const close = document.getElementById('close')

  open.addEventListener('click', function(){
    overlay.classList.add('overlay-show')
    sp.classList.add('hide')
  })

  close.addEventListener('click', function(){
    overlay.classList.remove('overlay-show')
    sp.classList.remove('hide')
  })


})

