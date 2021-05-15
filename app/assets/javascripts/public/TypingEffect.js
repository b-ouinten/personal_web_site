$(document).ready(() => {
  codeLines = [
    [
      {text: "me", color: "#92daff"}, 
      {text: " = ", color: "white"}, 
      {text: "DeveloperFighter", color: "#00d3b3"}, 
      {text: ".", color: "white"},
      {text: "new", color: "#4f93d9"},
      {text: "(", color: "#e9bc00"},
      {text: "'Wazo'", color: "#d58f74"},
      {text: ")", color: "#e9bc00"}
    ],
    [
      {text: "me", color: "#92daff"},
      {text: ".", color: "white"},
      {text: "slogan", color: "#d9e3a8"},
      {text: " = ", color: "white"},
      {text: "'Build features that benefit others'", color: "#d58f74"}
    ],
    [
      {text: "me", color: "#92daff"},
      {text: ".", color: "white"},
      {text: "forces", color: "#d9e3a8"},
      {text: " = ", color: "white"},
      {text: "[", color: "#00c8ff"},
      {text: "'Perseverance'", color: "#d58f74"},
      {text: ", ", color: "white"},
      {text: "'Perfection'", color: "#d58f74"},
      {text: ", ", color: "white"},
      {text: "'Desire to learn more'", color: "#d58f74"},
      {text: "]", color: "#00c8ff"}
    ],
    [
      {text: "me", color: "#92daff"},
      {text: ".", color: "white"},
      {text: "fight!", color: "#d9e3a8"}
    ]
  ]

  typeCodeBlock(codeLines);

  async function typeCodeBlock(codeLines) {
    for(i in codeLines) {
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

  async function typeCodeLine(codeLine, codeLineEleRef, delay = 100) {
    let codeLineIndex = parseInt(codeLineEleRef.split('').reverse().join(''));
    for(i in codeLine) {
      let codeLinePortionId = `code-line-portion-${codeLineIndex}${i}`;
      $(codeLineEleRef).append(`<span id="${codeLinePortionId}"></span>`)
      let letters = codeLine[i].text.split("");
      for (letter of letters) {
        await waitForMs(delay);
        $(`#${codeLinePortionId}`).append(letter);
        $(`#${codeLinePortionId}`).css('color', codeLine[i].color);
      };
    }
    
    return;
  }
  
  async function deleteCodeLine(codeLineEleRef) {
    const codeLine = $(codeLineEleRef).html();
    const letters = codeLine.split("");
    while(letters.length > 0) {
      await waitForMs(100);
      letters.pop();
      $(codeLineEleRef).html(letters.join(""));
    }
  }
  
  function waitForMs(ms) {
    return new Promise(resolve => setTimeout(resolve, ms))
  }
})
