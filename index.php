<?php ?>
<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <title>Подбор размера одежды</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;500;600;700;800&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="./assets/style.css">
</head>
<body>
<div class="container">
    <div class="left-content">
        <figure class="left-content__img">
            <img src="./assets/schema.png"
                 height="456"
                 width="306">
        </figure>
        <a href="#" class="btn" id="enter">ВОЙТИ</a>
    </div>
    <div class="right-content">
        <h1 class="page-title">ПОДБОР РАЗМЕРА</h1>
        <form class="form">
            <div class="form__field">
                <label for="user_height">Рост</label>
                <input type="number"
                       min="160"
                       max="210"
                       required
                       name="user_height"
                       placeholder="Укажите в см"
                       id="user_height">
            </div>
            <div class="form__field">
                <label for="user_weight">Вес</label>
                <input type="number"
                       min="45"
                       max="115"
                       required
                       name="user_weight"
                       placeholder="Укажите в кг"
                       id="user_weight">
            </div>
            <div class="form__field">
                <label for="user_sleeve-length">Длина рукава</label>
                <span class="form__field_note">(поле не обязательно для заполнения)</span>
                <input type="number"
                       min="55"
                       max="65"
                       name="user_sleeve-length"
                       placeholder="Укажите в см"
                       id="user_sleeve-length">
            </div>
            <div class="form__field">
                <label for="user_age">Возраст</label>
                <input type="number"
                       min="16"
                       max="121"
                       required
                       name="user_age"
                       placeholder="Укажите полных лет"
                       id="user_age">
            </div>
            <p class="form__error"></p>
            <button type="submit"
                    class="btn"
                    id="continue">Продолжить</button>
        </form>
    </div>
</div>
<div class="result-container hide">
    <p class="page-title">ВАШ РАЗМЕР</p>
    <p class="size-value"></p>
    <a href="#"
       class="btn"
       id="continue">Продолжить</a>
</div>
<script src="./assets/script.js"></script>
</body>
</html>