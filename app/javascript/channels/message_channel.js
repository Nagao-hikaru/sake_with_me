import consumer from "./consumer"

consumer.subscriptions.create("MessageChannel", {
  connected() {
    // Called when the subscription is ready for use on the server
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received(data) {
    const html = `<p>${data.content.text}</p>`;
    // const user = `<p>${data.content.user}</p>`;
    const messages = document.getElementById('messages');
    const newMessage = document.getElementById('message_text');
    const messageText = document.getElementById("message-text")
    const messageName = document.getElementById('message-name')
    messageText.insertAdjacentHTML('afterbegin', html);
    // messageName.insertAdjacentHTML('afterbegin', user);

    newMessage.value='';
  }
});
