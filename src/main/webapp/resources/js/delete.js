let del=document.getElementById('del');
const reply=document.getElementById('reply');
const update=document.getElementById('update');
const frm=document.getElementById('frm');
const c1 = document.getElementsByClassName('c1');






let num;
//1 함수를 이용
function setBookNum(num) {
    bookNum=num;
}



/* 	reply.addEventListener('click',function(){
	frm.action='./reply';
	let bookNum=del.getAttribute("data-delete-num");
	let parameterName=del.getAttribute("data-delete-name");
	location.href="./reply?"+parameterName+"="+bookNum;
})

		update.addEventListener('click',function(){
			frm.action='./update'
			let bookNum=del.getAttribute("data-delete-num");
            let parameterName=del.getAttribute("data-delete-name");
			location.href="./update?"+parameterName+"="+bookNum;
		})
		*/
		
		for(c of c1){
			c.addEventListener('click',function() {
				let url=this.getAttribute("data-url");
				if(url=='delete'){
					let check=window.confirm("삭제 하시겠습니까?");
					if(!check){
						return;
					}
					frm.method='post';
				}
		frm.action=url;
		frm.submit();
	})
}

/* 	del.addEventListener('click',function(){
		let check=window.confirm("삭제 하시겠습니까?")
		frm.method='POST';

		if(check){
			console.log(del.id);
			console.log(del.getAttribute("data-delete-num"));
			let bookNum=del.getAttribute("data-delete-num");
			let parameterName=del.getAttribute("data-delete-name");
			location.href="./delete?"+parameterName+"="+bookNum;
		}
	}) */