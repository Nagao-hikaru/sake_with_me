window.addEventListener('DomContentLoad', function(){
  const hoverList = document.getElementsByClassName("users")
  const hoverLists = Array.from(hoverList)
  const submitButton = document.getElementById("submit")

    hoverLists.forEach(function(target){

      target.addEventListener('mouseover', function(){
        target.setAttribute("style", "background-color:#EEEEEE;");
      })

      target.addEventListener('mouseout', function(){
        target.removeAttribute("style", "background-color:#EEEEEE;")
      })
    })

    submitButton.addEventListener('mouseover', function(){
      submitButton.setAttribute("style", "box-shadow :none; color :#000066; background :#ffffff;" )
    })

    submitButton.addEventListener('mouseout', function(){
      submitButton.removeAttribute("style", "box-shadow :none; color :#000066; background :#ffffff;")
    })

})
