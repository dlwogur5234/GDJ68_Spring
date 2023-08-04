const id = document.getElementById('id');
const pw = document.getElementById('pw');
const pw2 = document.getElementById('pw2');
const names = document.getElementById('name');
const email = document.getElementById('email');
const birth = document.getElementById('birth');
const btn = document.getElementById('btn');
const idHelp = document.getElementById('idHelp');
const pwHelp = document.getElementById('pwHelp');
const pwHelp2 = document.getElementById('pwHelp2');
const NameHelp = document.getElementById('NameHelp');
const emailHelp = document.getElementById('emailHelp');
const birthHelp = document.getElementById('birthHelp');
const frm = document.getElementById('frm');

const idresult = document.getElementById(id.id+"idHelp")


// ID : 빈x 10초과 x
// 입력이 끝나고 난후
// id.addEventListener('blur',function(){
//     if(id.value=='' || id.value.length>10){
//         id.res
//     }
//     else{

//     }
// })

//idcheck결과
//안될때는 각 id에 false를주고 될떄 true를 줌
let idCheckResult=false;
let pwCheckResult=false;
let pw2CheckResult=false;
let NameCheckResult=false;
let emailCheckResult=false;

let checkResult=[false,false,false,false,false,false];

id.addEventListener('blur',function(){
    /* console.log('hi')
    console.log(id.value.length); */
    if(id.value==''){
        id.focus();
        idHelp.innerText='아이디를 필수로 입력하세요'
        idHelp.className='f';
        checkResult[0]=false;
    }
    else if(id.value.length>10){
        id.focus();
       idHelp.innerText='아이디는 10글자 미만입니다';
        idHelp.className='f';
        checkResult[0]=false;
    }
    else{
        idHelp.innerText='사용가능한 ID 입니다';
        idHelp.className='s';
        checkResult[0]=true;
    }
})

// pw : 빈 x 6글자 이상 12미만
// 입력이 끝나고 난후
pw.addEventListener('blur',function(){
    const pwResult = document.getElementById(pw.id+"Help")
    if(pw.value.length>5&&pw.value.length<12){
        pwResult.innerHTML="올바른 비밀번호 입니다";
        pwResult.className="s";
        checkResult[1]=true;
    }
    else{
        pwResult.innerText="비밀번호는 6글자 이상 12미만 입니다";
        pwResult.className="f";
        // pw.focus();
        checkResult[1]=false;
    }
})

pw.addEventListener('change',function(){
    pw2.value='';
    checkResult[2]=false;
    pwHelp2.innerHTML='';
})

// pw.addEventListener('blur',function(){
/*     console.log(pw.value.length) */
//     if(pw.value==''){
//         pw.focus();
//         pwHelp.innerText='비밀번호를 필수로 입력하세요';
//     }
//     else if(pw.value.length>=6 && pw.value.length<12){
//         pwHelp.innerText='';
//     }
//     else{
//         pw.focus();
//         pwHelp.innerText='비밀번호는 6글자 이상 12미만 입니다';
//     }
// })
// pw2 : pw와 같은지 판별
// 글자를 입력할 때 마다
// pw2.addEventListener('keyup',function(){
//     if(pw.value!=pw2.value){
//         pwHelp2.innerText='비밀번호가 맞지 않습니다';
//     }
//     else{
//         pwHelp2.innerText='';
//     }
// })
pw2.addEventListener('keyup',function(){

    if(pw.value!=pw2.value){

        pwHelp2.innerText='비밀번호가 맞지 않습니다';
        pwHelp2.className='f';
        // pw2.focus();
        checkResult[2]=false;
    }
    else{
        pwHelp2.innerText='비밀번호가 일치합니다';
        pwHelp2.className='s';
        checkResult[2]=true;
    }
})

// name : 빈x
// 입력이 끝나고 난후
names.addEventListener('blur',function(){
    if(names.value==''){
        NameHelp.innerText='이름을 필수로 입력하세요';
        // names.focus();
        checkResult[3]=false;
    }
    else{
        NameHelp.innerText='';
        checkResult[3]=true;
    }
})
//--------------- name check
// names.addEventListener('blur',function(){
//     let check=ematycheck(names);
//     NameHelp.innerText='이름을 필수로 입력하세요';
//     NameHelp.className='f';
//     names.focus();
//     if(!check){
//         NameHelp.innerText='이름 확인';
//         NameHelp.className='s';
//     }
// })
// //비어있는지 체크하는 함수
function ematycheck(element) {
    if(element.value==''){
        return true;
    }
    else{
        return false;
    }
}
// Email :빈x
// 입력이 끝나고 난후
email.addEventListener('blur',function(){
    if(email.value==''){
        emailHelp.innerText='이메일을 필수로 입력하세요';
        // email.focus();
        checkResult[4]=false;
    }
    else{
        emailHelp.innerText='';
        checkResult[4]=true;
    }
})
// Birth:빈x
// 회원가입버튼을 클릭했을때

birth.addEventListener('click',function(){
    let check = emptyCheck(birth);
    const birthHelp = document.getElementById(birth.id+"Help");
    birthHelp.innerText='생년월일을 필수로 입력하세요';
    
    if(!check){
        birthHelp.innerText='생년월일 확인';
        checkResult[5]=true;
    }

})


// btn.addEventListener('click',function(){
//     if(birth.value==''){
//         birth.focus();
//         birthHelp.innerText='생년월일을 입력하세요';
//     }
//     else if(birth.value!==''){
//          birthHelp.innerText='';
//          frm.submit();
//     }
  
// })

btn.addEventListener('click', function(){
    let c = checkResult.includes(false);
    if(!c){
        //form전송
        console.log("form전송");
       // frm.submit();
    }
    else{
        alert("필수항목 입력")
    }
})



