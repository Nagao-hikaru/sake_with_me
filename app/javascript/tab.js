document.addEventListener('DOMContentLoaded', function(){
  console.log('aaa')

  const menuItems = document.querySelectorAll('.user-menu li a')
  const contents = document.querySelectorAll('.content')

  menuItems.forEach(clickedItem => {
    clickedItem.addEventListener('click', e => {
      e.preventDefault();
      // preventDefaultでリンク先のページ遷移を防いでいる。
      menuItems.forEach( item => {
        item.classList.remove('active')
      })

      clickedItem.classList.add('active');

      contents.forEach(content => {
        content.classList.remove('active');
      })
      
      document.getElementById(clickedItem.dataset.id).classList.add('active');
    });
  });
})