window.addEventListener("load", function(){

    const input_message = document.getElementById("item-price");
    input_message.addEventListener('keyup', function(){
        let price = this.value
        let fee = parseInt(price  /10); 
        console.log(fee)
        console.log(price)
        console.log(price - fee)
        let profit = price - fee
        const fee_field = document.getElementById("add-tax-price")
        const profit_field  = document.getElementById("profit")
        fee_field.textContent = fee;
        profit_field.textContent = profit;


    })
    

})