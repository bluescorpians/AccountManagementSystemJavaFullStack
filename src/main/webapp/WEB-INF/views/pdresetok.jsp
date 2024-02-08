<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        
@supports (animation: grow .5s cubic-bezier(.25, .25, .25, 1) forwards) {
     .tick {
        stroke-opacity: 0;
        stroke-dasharray: 29px;
        stroke-dashoffset: 29px;
        animation: draw .5s cubic-bezier(.25, .25, .25, 1) forwards;
        animation-delay: .6s
    }

    .circle {
        fill-opacity: 0;
        stroke: #219a00;
        stroke-width: 16px;
        transform-origin: center;
        transform: scale(0);
        animation: grow 1s cubic-bezier(.25, .25, .25, 1.25) forwards;   
    }   
}

@keyframes grow {
    60% {
        transform: scale(.8);
        stroke-width: 4px;
        fill-opacity: 0;
    }
    100% {
        transform: scale(.9);
        stroke-width: 8px;
        fill-opacity: 1;
        fill: #219a00;
    }
}

@keyframes draw {
    0%, 100% { stroke-opacity: 1; }
    100% { stroke-dashoffset: 0; }
}








// Styles
:root {
  --theme-color: var(--color-purple);
}

.position{
    height: 40vh;
    display: flex;
    justify-content: center;
    align-items: center;
}
    </style>
</head>
<body>
    
    <div class="position">
        <div class="svg-container">    
            <svg class="ft-green-tick" xmlns="http://www.w3.org/2000/svg" height="100" width="100" viewBox="0 0 48 48" aria-hidden="true">
                <circle class="circle" fill="#5bb543" cx="24" cy="24" r="22"/>
                <path class="tick" fill="none" stroke="#FFF" stroke-width="6" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="10" d="M14 27l5.917 4.917L34 17"/>
            </svg>
        </div>
    </div>
    <div class="card">
        <div style="border-radius:50px; height:50px; width:50px; margin:0 auto;">
        </div>
       
          <h1 style="text-align:center;">SUCCESS</h1> 
          <h2 style="text-align: center;">Password Reset successfully completed</h2>
          <h2 style="text-align: center;"> To Continue...<br/>
          <a href="/customersignin">Login</a><br/><br/>Thank You!</h2><br/> </p>
        </div>

    
</body>
</html>