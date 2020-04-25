import consumer from "./consumer"

consumer.subscriptions.create("NotificationChannel", {
  connected() {
    // Called when the subscription is ready for use on the server
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received(data) {
    if(data.action == "new_notification"){
      cosole.log(`New notification! Now you have ${data.message} unread notifications`)
    }
  }
});
