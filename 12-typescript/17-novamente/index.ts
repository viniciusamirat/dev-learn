import { IUser } from './models/user'

declare global{
  interface Window {
    UserData: any;
  }
}

window.UserData = {}

function isValidKeyUser(key: string): boolean {

  if (
    key === 'name'
    || key === 'email'
    || key === 'cpf'
  ) {

    return true

  }

  return false

}

function jsonValid(json: string): boolean {

  try {
    
    JSON.parse(json)

    return true

  } catch (error) {
    return false
  }

}

function loadData() {

  const userOld = localStorage.getItem('UserData')

  if (userOld && jsonValid(userOld)) {

    const user = JSON.parse(userOld)

    for (let item in user) {
      if (isValidKeyUser(item)) {
        const input = document.getElementById(item)

        if (input instanceof HTMLInputElement) {
          input.value = user[item]
          window.UserData[item] = user[item]
        }
      }
    }

  }

}

function saveData({target}: KeyboardEvent) {
  
  if (target instanceof HTMLInputElement) {
console.log(target.id)
console.log(target.value)
    window.UserData[target.id] = target.value

    localStorage.setItem('UserData', JSON.stringify(window.UserData))

  }
  
}

let form = document.querySelector('form')

if (form && form instanceof HTMLFormElement) {

  form.addEventListener('keyup', saveData)

}

loadData()