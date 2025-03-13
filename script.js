// script.js
document.getElementById('sendMessage').addEventListener('click', function () {
  const messageInput = document.getElementById('messageInput');
  const messagePage = document.getElementById('messagePage');
  
  if (messageInput.value.trim() !== '') {
    // Create outgoing message
    const outgoingMessage = document.createElement('div');
    outgoingMessage.className = 'message outgoing';
    outgoingMessage.innerHTML = `
      <div class="message-content">
        <p>${messageInput.value}</p>
        <span class="time">${new Date().toLocaleTimeString([], { hour: '2-digit', minute: '2-digit' })}</span>
      </div>
    `;

    // Append the message
    messagePage.appendChild(outgoingMessage);

    // Clear input
    messageInput.value = '';

    // Scroll to bottom
    messagePage.scrollTop = messagePage.scrollHeight;
  }
});