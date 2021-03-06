window.addEventListener('load', function(){
  const speech = new webkitSpeechRecognition();
  speech.lang = 'ja-JP';

  const start_btn = document.getElementById('start_btn');
  // const end_btn = document.getElementById('end_btn');

  start_btn.addEventListener('click', function () {
      speech.start();
  });

  speech.onresult = function (e) {
      speech.stop();
      if (e.results[0].isFinal) {
          console.log(e)
          const autotext = e.results[0][0].transcript
          document.getElementById("value").value = autotext;
      }
  }

  speech.onend = () =>{
    speech.stop()
    
  };
})