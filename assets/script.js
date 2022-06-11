'use strict';

const apiUrl = './api/get_size.php';
const form = document.querySelector('form.form');
const heightInput = form.querySelector('input[name="user_height"]');
const submitButton = form.querySelector('button[type="submit"]');
const errorMessage = form.querySelector('.form__error');
const mainContainer = document.querySelector('.container');
const resultContainer = document.querySelector('.result-container');
const sizeValue = document.querySelector('.size-value');

submitButton.addEventListener('click', submitHandler);

async function getSize(height) {
    const sendOptions = {
        method: 'POST',
        mode: 'no-cors',
        headers: {
            'Accept': '*',
        },
        body: new FormData(),
    };

    sendOptions.body.set('user_height', height);

    try {
        return await fetch(apiUrl, sendOptions);
    } catch (e) {
        return e;
    }
}

function errorHandler(text) {
    errorMessage.innerHTML = text;
    errorMessage.classList.add('active');
}

function successHandler(text) {
    mainContainer.classList.add('hide');
    sizeValue.innerHTML = text;
    resultContainer.classList.remove('hide');
}

function submitHandler(e) {
    e.preventDefault();

    const height = parseInt(heightInput.value);

    getSize(height)
        .then(res => res.json())
        .then(data => {
            if (!data.status) {
                errorHandler(data.text);
                return;
            }
            successHandler(data.text);
        })
        .catch(e => {
            errorHandler(e);
        })
}