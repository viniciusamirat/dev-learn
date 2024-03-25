import { IUser } from "./models/user";

declare global {
  interface Window {
    UserData: any;
  }
}

window.UserData = {}

function isUser(obj: unknown): obj is IUser {
  if (obj && typeof obj === 'object' && (
    'nome' in obj
    || 'email' in obj
    || 'cpf' in  obj
  )) {
    return true
  } 

  return false
}

function isValidJson(value: string): boolean {

  try{

    if (value) {
      const valid = JSON.parse(value)
    } else {
      return false
    }

    return true

  } catch (err) {
    return false
  }

}

function loadData() {
  const localUser = localStorage.getItem('UserData')
  if (localUser && isValidJson(localUser)) {
    const UserData = JSON.parse(localUser)
    if (isUser(UserData)) {
      for (let item in UserData) {
        const input = document.getElementById(item)

        if (input instanceof HTMLInputElement) {

          input.value = UserData[item]

        }
      }

      window.UserData = UserData

    }
  }
}

function handleInput({target}: KeyboardEvent) {
  

  if (target instanceof HTMLInputElement) {

    window.UserData[target.id] = target.value

    localStorage.setItem('UserData', JSON.stringify(window.UserData))

  }

}

const form = document.querySelector('form')

if (form) {

  form.addEventListener('keyup', handleInput)
  
} else {
  
}

loadData()