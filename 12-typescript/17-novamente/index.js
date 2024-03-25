window.UserData = {};
function isValidKeyUser(key) {
    if (key === 'name'
        || key === 'email'
        || key === 'cpf') {
        return true;
    }
    return false;
}
function jsonValid(json) {
    try {
        JSON.parse(json);
        return true;
    }
    catch (error) {
        return false;
    }
}
function loadData() {
    var userOld = localStorage.getItem('UserData');
    if (userOld && jsonValid(userOld)) {
        var user = JSON.parse(userOld);
        for (var item in user) {
            if (isValidKeyUser(item)) {
                var input_1 = document.getElementById(item);
                if (input_1 instanceof HTMLInputElement) {
                    input_1.value = user[item];
                    window.UserData[item] = user[item];
                }
            }
        }
    }
}
function saveData(_a) {
    var target = _a.target;
    if (target instanceof HTMLInputElement) {
        console.log(target.id);
        console.log(target.value);
        window.UserData[target.id] = target.value;
        localStorage.setItem('UserData', JSON.stringify(window.UserData));
    }
}
var form = document.querySelector('form');
if (form && form instanceof HTMLFormElement) {
    form.addEventListener('keyup', saveData);
}
loadData();
export {};
