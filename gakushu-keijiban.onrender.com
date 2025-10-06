<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="UTF-8">
    <title>URLオープナー</title>
    <style>
        /* 画面全体を使って中央揃え */
        body {
            display: flex;
            justify-content: center; /* 横方向中央 */
            align-items: center;     /* 縦方向中央 */
            height: 100vh;           /* 画面の高さを100% */
            margin: 0;
            background-color: #f0f0f0;
        }

        button {
            padding: 15px 30px;
            font-size: 18px;
            cursor: pointer;
            border: none;
            border-radius: 8px;
            background-color: #4CAF50;
            color: white;
            transition: background-color 0.3s;
        }

        button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <button onclick="openUrl()">起動</button>

    <script>
        function openUrl() {
            const url = "https://gakushu-keijiban.onrender.com/"; // 開きたいURL
            window.open(url, "_blank");
        }
    </script>
</body>
</html>
