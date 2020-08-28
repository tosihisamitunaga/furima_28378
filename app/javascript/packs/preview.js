if (document.URL.match( /edit/ )){
document.addEventListener('DOMContentLoaded', function(){
    const imageList = document.getElementById('image-list');

    document.getElementById('item-image').addEventListener('change', function(e){
        // 選択した画像を表示する関数
    const createImageHTML = (blob) => {
        // 画像を表示するためのdiv要素を生成
        const imageElement = document.createElement('div');

       // 表示する画像を生成
        const blobImage = document.createElement('img');
        blobImage.setAttribute('src', blob);
       // 生成したHTMLの要素をブラウザに表示させる
        imageElement.appendChild(blobImage);
        imageList.appendChild(imageElement);
    };
        //画像が表示されている場合、存在している画像を消去する
        const imageContent = document.querySelector('img');
        if (imageContent){
            imageContent.remove();
        }
        const file = e.target.files[0];
        const blob = window.URL.createObjectURL(file);

        createImageHTML(blob);
    });
});
}