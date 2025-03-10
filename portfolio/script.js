let colors = ["#FFEB3B", "#4CAF50", "#2196F3", "#FF5722", "#9C27B0"];
let currentColor = 0;

function changeBackgroundColor() {
    document.body.style.backgroundColor = colors[currentColor];
    currentColor = (currentColor + 1) % colors.length;
}

// Change the background color every 5 seconds
setInterval(changeBackgroundColor, 5000);
