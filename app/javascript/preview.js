if (document.URL.match( /new/ ) || document.URL.match( /edit/ )) {
  document.addEventListener('DOMContentLoaded', function() {
     const ImageList = document.getElementById('image-list')
 

     const createImageHTML = (blob) => {

       const imageElement = document.createElement('div')
       imageElement.setAttribute('id', "image-element")
       let imageElementNum = document.querySelectorAll('#image-element').length
 

       const blobImage = document.createElement('img')
       blobImage.setAttribute('src', blob)

       const inputHTML = document.createElement('input')
       inputHTML.setAttribute('id', `message_image_${imageElementNum}`)
       inputHTML.setAttribute('name', 'restaurant[images][]')
       inputHTML.setAttribute('type', 'file')
 

       imageElement.appendChild(blobImage)
       imageElement.appendChild(inputHTML)
       ImageList.appendChild(imageElement)

       inputHTML.addEventListener('change', (e) => {
        file = e.target.files[0];
        blob = window.URL.createObjectURL(file);

        createImageHTML(blob)
      })

      
       
     }
 
     document.getElementById('restaurant_image').addEventListener('change', (e) => {
 
       const file = e.target.files[0];
       const blob = window.URL.createObjectURL(file);
      console.log('aaa')
       createImageHTML(blob)
     });
   });
 }
 
