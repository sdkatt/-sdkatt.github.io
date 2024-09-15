<!DOCTYPE html>
<html lang="ar">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>دمج فيديو وصورة بتأثير زووم وتلاشي</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
            background-color: #f0f0f0;
        }
        .container {
            position: relative;
            width: 80%;
            max-width: 800px;
            height: 480px; /* تأكد من مطابقة ارتفاع الفيديو */
            overflow: hidden;
            border-radius: 8px;
        }
        .container iframe {
            width: 100%;
            height: 100%;
            border: none;
            z-index: 1; /* تأكد من أن الفيديو في الأسفل */
        }
        .container img {
            position: absolute;
            top: 50%;
            left: 50%;
            width: 100%;
            height: 100%;
            object-fit: cover;
            transform: translate(-50%, -50%); /* مراكمة الصورة في الوسط */
            animation: zoomAndFade 15s ease-in-out infinite; /* تأثير الزووم والتلاشي */
            z-index: 2; /* تأكد من أن الصورة فوق الفيديو */
            pointer-events: none; /* يسمح بالنقر على الفيديو من خلال الصورة */
        }
        @keyframes zoomAndFade {
            0% {
                transform: translate(-50%, -50%) scale(1); /* حجم الصورة الأصلي */
                opacity: 1; /* الصورة مرئية */
            }
            25% {
                transform: translate(-50%, -50%) scale(1.5); /* تكبير الصورة لتملأ الفيديو تقريباً */
                opacity: 1; /* الصورة مرئية */
            }
            50% {
                transform: translate(-50%, -50%) scale(0); /* تصغير الصورة إلى الصفر */
                opacity: 0; /* الصورة تختفي */
            }
            75% {
                transform: translate(-50%, -50%) scale(0); /* تصغير الصورة إلى الصفر */
                opacity: 0; /* الصورة تختفي */
            }
            100% {
                transform: translate(-50%, -50%) scale(1); /* العودة إلى الحجم الأصلي */
                opacity: 1; /* الصورة مرئية */
            }
        }
        .overlay {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(0, 0, 0, 0.3); /* لون غلاف داكن لزيادة التباين */
            display: flex;
            align-items: center;
            justify-content: center;
            color: white;
            font-size: 24px;
            font-weight: bold;
            pointer-events: none; /* يسمح بالنقر على الفيديو من خلال الغلاف */
        }
    </style>
</head>
<body>
    <div class="container">
        <iframe id="video" src="https://www.dailymotion.com/embed/video/x7nc38g?autoplay=1&loop=1" allowfullscreen></iframe>
        <img src="https://alrahma.gitlab.io/images/mohammed.jpg" alt="صورة محمد">
        <div class="overlay">المغفور له بإذن الله الحاج /  محمد إبراهيم محمد</div>
    </div>
</body>
</html>
