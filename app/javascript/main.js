window.addEventListener('load', function(){
  const submit= document.getElementById('submit')

  submit.addEventListener('click', function(){
    let result = window.confirm('送信内容に間違いはありませんか？')
  })
})

