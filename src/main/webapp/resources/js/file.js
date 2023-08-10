const fileList = document.getElementById('fileList');
const fileBtn = document.getElementById('fileBtn');
const delets = document.getElementsByClassName('delets');

//---------------------------------------
for(c of delets){
    c.addEventListener('click',function(d){
       let num=this.getAttribute("data-delete-num");
       let check = confirm("삭제시 복구할 수 없습니다?")

       if(check){
            fetch("./fileDelete?fileNum="+num,{method:"get"})
            .then((result)=>{return result.text()})
            .then((r)=>{
                if(r.trim()=='1'){
                    this.previousSibling.previousSibling.remove();
                    this.remove();
                }
            })
            
       }
       
    })
}











let count = 0;
let idx = 0;

{/* <div class="mb-3">
	<label for="pic" class="form-label">사진첨부</label>
	<input type="file" name="photos" class="form-control" id="pic" >
</div> */}

fileList.addEventListener('click',function(event){
    console.log(event.target)
    let cl= event.target.classList;
    if(event.target.classList.contains('df')){
       let deleteId=event.target.getAttribute("data-id");
       document.getElementById(deleteId).remove();
       count--;
       console.log(count);
    }
})



fileBtn.addEventListener('click', function(){
    if(count < 5){
    let div1 = document.createElement('div');
    let divCls = document.createAttribute('class');
    let text1 = document.createTextNode('사진첨부');
    let label = document.createElement('label');
    let class1 = document.createAttribute('class');
    let class2 = document.createAttribute('class');
    let input = document.createElement('input');
    let type = document.createAttribute('type');
    let names = document.createAttribute('name');
    let ids = document.createAttribute('id');
    let divId = document.createAttribute('id')
    divId.value='file'+idx;
    
    div1.setAttributeNode(divId);
    divCls.value='mb-3';
    div1.setAttributeNode(divCls);
    class1.value='form-label';
    label.setAttributeNode(class1);
    label.appendChild(text1);
    type.value='file';
    names.value='photos';
    class2.value='form-control';
    input.setAttributeNode(type);
    input.setAttributeNode(names);
    input.setAttributeNode(class2);
    div1.appendChild(label);
    div1.appendChild(input);
    let s= document.createElement("span");
    let t = document.createTextNode("X");
    let a = document.createAttribute("class");
    a.value='df';
    let a1 = document.createAttribute("data-id");
    a1.value="file"+idx;
    s.appendChild(t);
    s.setAttributeNode(a1);
    s.setAttributeNode(a);

    div1.appendChild(s);

    fileList.appendChild(div1)
    count++;
    console.log(count);
    idx++;
    
    
    }else{
        alert("파일은 5개 까지만 가능합니다");
    }
})



