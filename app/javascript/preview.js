if (document.URL.match( /new/ ) || document.URL.match( /edit/ )){

  document.addEventListener('DOMContentLoaded', function(){

    const imageList = document.getElementById('image-list');

    document.getElementById('restaurant_image').addEventListener('change',function(e){

      const file = e.target.files[0];
      const blob = window.URL.createObjectURL(file);
      console.log(blob)

      const imageElement = document.createElement('div');

      const blobImage = document.createElement('img');

      blobImage.setAttribute('src', blob)
      imageList.appendChild(imageElement);
      imageElement.appendChild(blobImage);
    });
  });

}
