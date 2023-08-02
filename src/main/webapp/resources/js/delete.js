let del=document.getElementById('del');

let num;
//1 함수를 이용
function setBookNum(num) {
    bookNum=num;
}


		del.addEventListener('click',function(){
			let check=window.confirm("삭제 하시겠습니까?")
			if(check){
                console.log(del.id);
                console.log(del.getAttribute("data-delete-num"));
                let bookNum=del.getAttribute("data-delete-num");
                let parameterName=del.getAttribute("data-delete-name");
				location.href="./delete?"+parameterName+"="+bookNum;
			}
		})