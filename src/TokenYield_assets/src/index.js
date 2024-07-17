import { TokenYield } from "../../declarations/TokenYield";

window.addEventListener("load", async function() {
    update();
});

document.querySelector("form").addEventListener("submit", async function(event) {
    event.preventDefault();

    const button = event.target.querySelector("#submit-btn");

    const inputAmount = parseFloat(document.getElementById("input-amount").value);
    const outputAmount = parseFloat(document.getElementById("withdraw-amount").value);

    button.setAttribute("disabled", true);

    if (document.getElementById("input-amount").value.length != 0) {
        await TokenYield.topUp(inputAmount);
      }
    
      if (document.getElementById("withdraw-amount").value.length != 0) {
        await TokenYield.withdraw(outputAmount);
      }
    
      await TokenYield.compound();
    
      update()
    
      document.getElementById("input-amount").value = "";
      document.getElementById("withdraw-amount").value = "";
    
      button.removeAttribute("disabled");
    
    });
    
    async function update() {
      const currentAmount = await TokenYield.checkBalance();
      document.getElementById("value").innerText = Math.round(currentAmount * 100) / 100;
    };