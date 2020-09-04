// const speech = new webkitSpeechRecognition();
// speech.lang = 'ja-JP';

// const start_btn = document.getElementById('start_btn');
// // const end_btn = document.getElementById('end_btn');
// const content = document.getElementById('content');
// const size = document.getElementById('size');

// start_btn.addEventListener('click', function () {
//     // 音声認識をスタート
//     speech.start();
// });

// //音声自動文字起こし機能
// speech.onresult = function (e) {
//     speech.stop();
//     if (e.results[0].isFinal) {
//         var autotext = e.results[0][0].transcript
//         document.getElementById("size").value = autotext ;
//     }
// }

// speech.onend = () =>
// {
//     speech.stop()
// };