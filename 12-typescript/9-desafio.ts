
interface InterfaceCursos {
  nome: string;
  horas: number;
  gratuito: boolean;
  tags: Array<string>;
  idAulas: Array<number>;
  nivel: 'iniciante' | 'avancado';
}

async function getCursos() {
  const res = await fetch('https://api.origamid.dev/json/cursos.json')
  const cursos = await res.json()
  show(cursos)
}

function show(cursos: InterfaceCursos[]) {

  cursos.forEach((curso) => {

    let classe = curso.nivel === 'iniciante' ? 'azul' : 'vermelho'

    document.body.innerHTML += `
      <h1 class="${classe}">${curso.nome}</h1>
      <ul>
        ${
          curso.tags.map(item => `<li>${item}</li>`).join('')
        }
      </ul>
    `
  
  })
}

getCursos()