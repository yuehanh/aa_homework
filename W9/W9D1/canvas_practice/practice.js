document.addEventListener("DOMContentLoaded", function(){
    const canvas = document.getElementById("mycanvas")
    canvas.height = 500;
    canvas.width = 500;

    const ctx = canvas.getContext("2d");
    for (let i = 0; i < 6; i++) {
        for (let j = 0; j < 6; j++) {
          ctx.fillStyle = `rgb(
              ${Math.floor(255 - 42.5 * i)},
              ${Math.floor(255 - 42.5 * j)},
              0)`;
          ctx.fillRect(j * 25, i * 25, 25, 25);
        }
      }

    ctx.beginPath();
    ctx.arc(200,200, 30,0, 2*Math.PI,true);
    ctx.strokeStyle = "purple";
    ctx.lineWidth = 10;
    ctx.stroke();
    ctx.fillStyle = "teal";
    ctx.fill();
});
