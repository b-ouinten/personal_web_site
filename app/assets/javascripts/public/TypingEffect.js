$(document).ready(() => {
  codeLines = [
    "me = DeveloperFighter.new('Wazo')",
    "me.slogan = 'Build features that benefit others'",
    "me.forces = ['Perseverance', 'Perfection', 'Desire to learn more']",
    "me.fight!"
  ]

  typeCodeBlock(codeLines);

  async function typeCodeBlock(codeLines) {
    for(i = 0, len = codeLines.length; i < len; i++ ) {
      $('#code-lines').append(`
        <div class="typing-container">
          <span id="code-line-${i}"></span>
          <span id="cursor" class="cursor"></span>
        </div>
      `)
      await typeCodeLine(codeLines[i], `#code-line-${i}`);
      await waitForMs(500);
      $('#cursor').remove();
    }
  }

  async function typeCodeLine(codeLine, eleRef, delay = 100) {
    const letters = codeLine.split("");
    for (letter of letters) {
      await waitForMs(delay);
      $(eleRef).append(letter);
    };
    
    return;
  }
  
  async function deleteCodeLine(eleRef) {
    const codeLine = $(eleRef).html();
    const letters = codeLine.split("");
    while(letters.length > 0) {
      await waitForMs(100);
      letters.pop();
      $(eleRef).html(letters.join(""));
    }
  }
  
  function waitForMs(ms) {
    return new Promise(resolve => setTimeout(resolve, ms))
  }
})
