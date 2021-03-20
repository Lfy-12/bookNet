function moveleft()
{
    var div1=document.getElementById("b1");
    var left = div1.offsetLeft;
    var after=left-1215;
    timeId = setInterval(
        function () 
        {
        if (left >=after && left>-2430) {
            left -= 20;
            div1.style.left = left + "px";
            console.log(left);
        } else {
            clearInterval(timeId);
        }
    }, 10)
}

function moveright()
{
    var div1=document.getElementById("b1");
    var left = div1.offsetLeft;
    var after=left+1215;
    timeId = setInterval(
        function () 
        {
        if (left <=after && left<0) {
            left += 20;
            div1.style.left = left + "px";
            console.log(left);
        } else {
            clearInterval(timeId);
        }
    }, 10)
}



var items = document.getElementsByClassName('item');
        var beu = document.getElementsByClassName('beu');
        
        var clearbeu = function(){
            for(var i=0;i<items.length;i++){
                items[i].className='item';
            }
        }

        var setbeu =function(obj){
            clearbeu();
            obj.className = 'item beu';
        }