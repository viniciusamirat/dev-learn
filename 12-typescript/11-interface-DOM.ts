const a = document.querySelector('#ancora')

if (a instanceof HTMLAnchorElement) {
  a.href = 'teste'
}

const as = document.querySelectorAll('.links')

as.forEach((item) => {

  if (item instanceof HTMLAnchorElement) {
    item.href = 'teste 2'
  }

})