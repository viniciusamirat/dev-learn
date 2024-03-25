const input = document.querySelector('input')

const oldValue = localStorage.getItem('valor')

input.value = oldValue

function totalMudou(){
  const p = document.querySelector('p')

  localStorage.setItem('valor', input.value)

  p.innerText = `ganho total ${Number(input.value) + 100}`
}

input?.addEventListener('keyup', totalMudou)

