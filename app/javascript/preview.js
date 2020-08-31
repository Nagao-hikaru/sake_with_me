if (document.URL.match( /new/ ) || document.URL.match( /edit/ )){

  document.addEventListener('DOMContentLoaded', function(){
    console.log('123')
    const imageList = document.getElementById('image-list');
    console.log(imageList)
    document.getElementById('restaurant_image').addEventListener('change',function(e){
      console.log(e)

      const file = e.target.files[0];
      const blob = window.URL.createObjectURL(file);
      console.log(blob)

      const imageElement = document.createElement('div');

      const blobImage = document.createElement('img');

      blobImage.setAttribute('src', blob);
      imageList.appendChild(imageElement);
      imageElement.appendChild(blobImage);
    });
  });

}
