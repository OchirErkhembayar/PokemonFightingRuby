// Load all the channels within this directory and all subdirectories.
// Channel files must be named *_channel.js.

const channels = require.context('.', true, /_channel\.js$/)
channels.keys().forEach(channels)

const editButton = document.getElementById('editPokemon');
const editForm = document.getElementById('editForm');

if (editButton) {
  editButton.addEventListener('click', (e) => {
    editForm.classList.toggle('invisible');
  });
}

const healthBarOne = document.getElementById('healthBarOne');
const damageOne = document.getElementById('damageOne');

const healthBarTwo = document.getElementById('healthBarTwo');
const damageTwo = document.getElementById('damageTwo');

const attackButtonOne = document.getElementById('attackButtonOne')
const attackButtonTwo = document.getElementById('attackButtonTwo')

let currentHealthTwo = healthBarTwo.innerHTML.split(" ")[1];
attackButtonOne.addEventListener('click', () => {
  const damage = Math.ceil(Math.random() * +damageOne.innerHTML.split(" ")[1]);
  currentHealthTwo = +currentHealthTwo - damage;
  if (currentHealthTwo > 0) {
    healthBarTwo.innerHTML = `Health: ${currentHealthTwo}`
    attackButtonOne.setAttribute("disabled", "true")
    attackButtonTwo.removeAttribute("disabled", "true")
  } else {
    healthBarTwo.innerHTML = "YOU ARE DEAD!!!!!!!!!!!!!!"
    attackButtonTwo.outerHTML = '<h1>YOU LOSE</h1>';
    attackButtonOne.outerHTML = '<h1>YOU WIN</h1>';
  }
})

let currentHealthOne = healthBarOne.innerHTML.split(" ")[1];
attackButtonTwo.addEventListener('click', () => {
  const damage = Math.ceil(Math.random() * +damageTwo.innerHTML.split(" ")[1]);
  currentHealthOne = +currentHealthOne - damage;
  if (currentHealthOne > 0) {
    healthBarOne.innerHTML = `Health: ${currentHealthOne}`
    attackButtonOne.removeAttribute("disabled", "true")
    attackButtonTwo.setAttribute("disabled", "true")
  } else {
    healthBarOne.innerHTML = "YOU ARE DEAD!!!!!!!!!!!!!!!!!!!"
    attackButtonTwo.outerHTML = '<h1>YOU WIN</h1>';
    attackButtonOne.outerHTML = '<h1>YOU LOSE</h1>';
  }
})
