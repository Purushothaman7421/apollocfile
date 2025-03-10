function handleSubmit(event) {
    event.preventDefault();
    const name = document.getElementById('name').value;
    const email = document.getElementById('email').value;
    const message = document.getElementById('message').value;
    alert(`Thank you for your message, ${name}! We will get back to you at ${email}.`);
    document.getElementById('contact-form').reset();
}

function handleFeedback(event) {
    event.preventDefault();
    const name = document.getElementById('name').value;
    const feedback = document.getElementById('feedback').value;
    alert(`Thank you for your feedback, ${name}!`);
    document.getElementById('feedback-form').reset();
}
