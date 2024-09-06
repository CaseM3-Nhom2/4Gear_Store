document.addEventListener('DOMContentLoaded', function() {

    var errorSpan = document.getElementById('loginError');
    var loginError = errorSpan.getAttribute('data-error') || '';

    if (loginError) {
        errorSpan.textContent = loginError;
        errorSpan.style.display = 'block';
        var loginModal = new bootstrap.Modal(document.getElementById('signup'));
        loginModal.show();
    } else {
        errorSpan.style.display = 'none';
    }

    var loginModalElement = document.getElementById('signup');
    loginModalElement.addEventListener('hidden.bs.modal', function() {
        errorSpan.style.display = 'none';
    });
});
