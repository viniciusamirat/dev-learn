window.UserData = {};
function isUser(obj) {
    if (obj && typeof obj === 'object' && ('nome' in obj
        || 'email' in obj
        || 'cpf' in obj)) {
        return true;
    }
    return false;
}
function isValidJson(value) {
    try {
        if (value) {
            var valid = JSON.parse(value);
        }
        else {
            return false;
        }
        return true;
    }
    catch (err) {
        return false;
    }
}
function loadData() {
    var localUser = localStorage.getItem('UserData');
    if (localUser && isValidJson(localUser)) {
        var UserData = JSON.parse(localUser);
        if (isUser(UserData)) {
            for (var item in UserData) {
                var input_1 = document.getElementById(item);
                if (input_1 instanceof HTMLInputElement) {
                    input_1.value = UserData[item];
                }
            }
            window.UserData = UserData;
        }
    }
}
function handleInput(_a) {
    var target = _a.target;
    if (target instanceof HTMLInputElement) {
        window.UserData[target.id] = target.value;
        localStorage.setItem('UserData', JSON.stringify(window.UserData));
    }
}
var form = document.querySelector('form');
if (form) {
    form.addEventListener('keyup', handleInput);
}
else {
}
loadData();
export {};
