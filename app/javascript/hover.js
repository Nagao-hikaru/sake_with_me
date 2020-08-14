window.addEventListener('load', function(){
  const hoverList = document.getElementsByClassName("users")
  const hoverLists = Array.from(hoverList)

    hoverLists.forEach(function(target){

      target.addEventListener('mouseover', function(){
        target.setAttribute("style", "background-color:#EEEEEE;");
      })

      target.addEventListener('mouseout', function(){
        target.removeAttribute("style", "background-color:#EEEEEE;")
      })
    })

})
