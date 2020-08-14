window.addEventListener("load", function(){
//(selecter).addEventListener('keydown', function(){// キー入力した時に発火させる関数
    const input_message = document.getElementById("item-price");
    input_message.addEventListener('keyup', function(){
        let price = this.value
        let fee = parseInt(price  /10);  //fee
        //let fee = Math.round(price * 10)/10;
        //let profit = Math.round(price - fee)
        console.log(fee)
        console.log(price)
        console.log(price - fee)
        let profit = price - fee
        const fee_field = document.getElementById("add-tax-price")
        const profit_field  = document.getElementById("profit")
        fee_field.textContent = fee;
        profit_field.textContent = profit;


    })
    //let lists = document.getElementsByName("price-content");
    //動かしたいこと 
    //入力された値を取得
    //取得した値を計算
    //計算した値を挿入する テンプレートリテラル？

})