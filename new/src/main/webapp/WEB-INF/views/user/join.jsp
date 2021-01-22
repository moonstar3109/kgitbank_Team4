<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>

 body{ position: relative; margin-bottom: 30px; }
   .semi-back{margin: 0 auto; margin-top:30px; margin-bottom: -80px; width: 80%; background-color: rgba(0, 0, 0, 0.856); padding:150px; border-radius: 8px;}
    .joinArea{ margin: 0 auto; padding: 50px; width: 1200px; line-height: normal; background-color: white;
        opacity: 1; border-radius: 8px;  }
        
    .input-group{ margin-top: 150px; margin: 0 auto; width: 60%; padding-top: 8px; }
    .box{width: 250px; border-bottom: 1px solid #E1E1E1;  border-top:1px solid #E1E1E1; margin: 50px auto; margin-top: -10px;
          text-align: center; padding: 20px 40px; font-size: 30px; }
    .joinForm{ margin: 0 auto; border: 2px solid grey; border-radius: 8px; width: 80%; margin-top: 50px ; margin-bottom: 50px;
       padding: 150px; height: fit-content; text-align: left; }
    .joinbtn{ background-color: black; color: white;  }
    .genre{margin-top: 8px; border: 1px solid rgba(128, 128, 128, 0.253); border-radius: 4px; padding: 0; }
    .joinForm > .password, .pwCheck,.nickname { display: block; width: 47%; height: 34px; padding: 6px 12px; font-size: 14px;
      line-height: 1.42857143; color: #555; background-color: #fff; background-image: none; border: 1px solid #ccc;
      border-radius: 4px; }
    .joinId{   
      display: block;
      position: relative;
      width: 47%;
      height: 34px;
      padding: 6px 12px;
      font-size: 14px;
      line-height: 1.42857143;
      color: #555;
      background-color: #fff;
      background-image: none;
      border: 1px solid #ccc;
      border-radius: 4px;
      
    }
    .email1, .email2 {
      display: inline-block;
      width: 275px;
      height: 34px;
      padding: 6px 12px;
      font-size: 14px;
      line-height: 1.42857143;
      color: #555;
      background-color: #fff;
      background-image: none;
      border: 1px solid #ccc;
      border-radius: 4px;
      margin-bottom: 25px;
    }
    .gender, .age {
      display: block;
      width: 250px;
      height: 34px;
      padding: 6px 12px;
      font-size: 14px;
      line-height: 1.42857143;
      color: #555;
      background-color: #fff;
      background-image: none;
      border: 1px solid #ccc;
      border-radius: 4px;
      margin-bottom: 25px;
    }
    .checkBtn{
      position: relative;
      right: -252px;
      top: -34px;
      height: 34px;
    }
    .joinLabel{
      display: block;
      max-width: 100%;
      font-weight: 700;
      
    }
    .likeActor, .likeDirector{
      display: block;
      position: relative;
      width: 47%;
      height: 34px;
      padding: 6px 12px;
      font-size: 14px;
      line-height: 1.42857143;
      color: #555;
      background-color: #fff;
      background-image: none;
      border: 1px solid #ccc;
      border-radius: 4px;
      
    }
    .add{
      margin: 0;
      width: 50px;
      height: 34px;
      font-size: 20px;
    }
    .minus{
        margin: -4px;
        width: 50px;
        height: 34px; 
        font-size: 20px;
    }
    .genre{
        padding: 15px;
     }
    
    .checkboxLabel{
      display: inline-block;
      width: 24%;

    }
    .genre input[type="checkbox"]{
      display: block;
       height: 25px;
       width: 15px;
       padding: 15px;
       line-height: 35px;
       margin-bottom: 15px;
       border:1px solid #555;
       border-radius: 7px;
    }
    .genre input[type="checkbox"]:checked{
      height: 25px;
      width: 15px;
      padding: 15px;
      line-height: 25px;
      margin-bottom: 15px;
      border:1px solid #555;
      background-color: #337ab7;
   }
   
    
    .checkBtn, .add, .minus{
      border-radius: 6px;
      border: 1px solid #ccc;
    }
    .postNum{
      display: block;
      position: relative;
      width: 47%;
      height: 34px;
      padding: 6px 12px;
      font-size: 14px;
      line-height: 1.42857143;
      color: #555;
      background-color: #fff;
      background-image: none;
      border: 1px solid #ccc;
      border-radius: 4px;
    }
    .addrBtn{
      margin-bottom:15px;
    }
    
</style>
<section>

<div class="container-fluid text-center">    
    
    <div class="semi-back">
      <div class="joinArea">
          <form action="joinForm" class="joinForm" method="GET">
            <h4 class="box">회원가입</h4>
            <label for="id" class="joinLabel ">ID(*)</label><br>
            <input type="text" class="joinId userId" name="id" id="userId" placeholder="알파벳포함 4글자 이상">
            <button type="button" class="checkBtn btn-primary" id="checkBtn">중복체크</button>
            <p class="msgId" id="msgId"></p>               
            <br>
            <label for="password" class="joinLabel pwlabel" >PASSWORD(*)</label><br>
            <input type="password" class="password" id="password" name="password" placeholder="알파벳포함 8글자 이상 16글자 미만"> 
            <p class="msgPw" id="msgPw"></p>  
            <br>
            <label for="pwCheck" class="joinLabel">PASSWORD 확인(*)</label><br>
            <input type="password" class="pwCheck" id="pwCheck" name="pwCheck" >
            <p id="msgPw-c"></p>
            <br>
            <label for="pwCheck" class="joinLabel">이름</label><br>
            <input type="password" class="pwCheck" id="userName" name="userName" >            
            <br>
            
            <label for="gender" class="joinLabel">성별</label>
            <select name="gender" id="gender" class="gender">
              <option value="man">남자</option>
              <option value="woman">여자</option>
            </select> 
            <label for="gender" class="joinLabel"> 나이</label>
            <select name="age" id="age" class="age">
              <script>
              for(i=7; i<100;i++){
              document.write("<option value='"+i+" '>"+i+"</option>")
              
              }
            </script>
            
            </select>
            <br>
            <label for="email" class="joinLabel">EMAIL</label><br>
            <input type="text" class="email1" name="email1"> @ <select id="email2" class="email2" onchange="email(this)">
              <option class="option" value="choice">선택</option>
              <option class="option" value="gmail.com">gmail.com</option>
              <option class="option" value="naver.com" >naver.com</option>
              <option class="option" value="hanmail.net" >hanmail.net</option>
              <option class="option" value="etc">직접입력</option>
            </select>
              <label for="joinLabel addr-num">주소</label>
              <input type="text" class="postNum" id="addrZipNum" placeholder="우편번호" readonly>
              <button type="button" class="btn btn-primary addrBtn" onclick="goPopup()">주소찾기</button>
            <div class="form-group">
              <input type="text" class="form-control" id="addrBasic" placeholder="기본주소">
            </div>
            <div class="form-group">
                <input type="text" class="form-control" id="addrDetail" placeholder="상세주소">
            </div>
            <br>
            <div class="actorSection">
              <label for="likeActor" class="joinLabel pwlabel">관심있는 배우</label><br>
            </div>
            <button type="button" class="add btn-primary" onclick="addActor()">+</button>
            <button type="button" class="minus btn-primary" onclick="minusActor()">-</button>
            <br>
            <br>
            <div class="diretorSection">
            <label for="likeDirector" class="joinLabel pwlabel">관심있는 감독</label><br>
          </div>
            <button type="button" class="add btn-primary" onclick="addDirector()">+</button>
            <button type="button" class="minus btn-primary" onclick="minusDirector()">-</button>
            <div class="genre">
              <label class="joinLabel">선호하는 장르</label><br>
              <label class="joinLabel checkboxLabel"><input type="checkbox" class="checkbox-genre" value="romence"> 로맨스</label>
              <label class="joinLabel checkboxLabel"><input type="checkbox" class="checkbox-genre" value="animation"> 애니메이션</label>
              <label class="joinLabel checkboxLabel"><input type="checkbox" class="checkbox-genre" value="SF"> SF</label>
              <label class="joinLabel checkboxLabel"><input type="checkbox" class="checkbox-genre" value="comedy"> 코미디</label>
              <label class="joinLabel checkboxLabel"><input type="checkbox" class="checkbox-genre" value="horror"> 공포</label>
              <label class="joinLabel checkboxLabel"><input type="checkbox" class="checkbox-genre" value="thiler"> 스릴러</label>
              <label class="joinLabel checkboxLabel"><input type="checkbox" class="checkbox-genre" value="documentry"> 다큐멘터리</label>
            
            </div>
            <br>
                    
            <button type="submit" class="btn joinbtn" id="joinBtn" style="padding: 15px;">가입</button>
            <button type="button" class="btn btn-default" style="padding: 15px;" onclick="location=''">취소</button>
          </form>
        </div>
      </div>
      
      
    
  
</div>
</section>

<script>
  // 직접입력 선택시 input으로 바꿈
  function email(selected){
    var index = selected.selectedIndex;
    if(index ==4){
      $(".email2").replaceWith(function() {
        return $('<input>',{type:'text', class:'email2'})
      })
    }
  }

//아이디 옵션
var id = document.getElementById("userId");
id.onkeyup=function(){

  var regex = /^[A-Za-z0-9+]{4,12}$/; 
            if(regex.test(document.getElementById("userId").value )) {
                document.getElementById("userId").style.borderColor = "green";
                document.getElementById("msgId").innerHTML = "아이디중복체크는 필수 입니다";

            } else {
                document.getElementById("userId").style.borderColor = "red";
                document.getElementById("msgId").innerHTML = "";
            }
  
}
	//패스워드 옵션
	var pw = document.getElementById("password");
        pw.onkeyup = function(){
            var regex = /^[A-Za-z0-9+]{8,16}$/;
             if(regex.test(document.getElementById("password").value )) {
                document.getElementById("password").style.borderColor = "green";
                document.getElementById("msgPw").innerHTML = "사용가능합니다";
            } else {
                document.getElementById("password").style.borderColor = "red";
                document.getElementById("msgPw").innerHTML = "";
            }
        }
        //패스워드 체크
        var pwConfirm = document.getElementById("pwCheck");
        pwConfirm.onkeyup = function() {
            var regex = /^[A-Za-z0-9+]{8,16}$/;
            if(document.getElementById("pwCheck").value == document.getElementById("password").value ) {
                document.getElementById("pwCheck").style.borderColor = "green";
                document.getElementById("msgPw-c").innerHTML = "비밀번호가 일치합니다";
            } else {
                document.getElementById("pwCheck").style.borderColor = "red";
                document.getElementById("msgPw-c").innerHTML = "비밀번호 확인란을 확인하세요";
            }
        }           

//중복체크
$("#checkBtn").click(function(){
	var userId = $("#userId").val()
	$.ajax({
    			type : "POST",
    			url : "idCheck",
    			data : JSON.stringify({"userId": userId}),
    			contentType : "application/json; charset=utf-8",
    			success : function(data){
    				if(data == 0){
    					$("#userId").attr("readonly",true);
    					$("#msgId").html = "사용 가능한 아이디입니다";
    					
    				}else{
    					alert("사용 불가능합니다 다시 입력해주세요")
    					$("#userId").val("")
    					return;
    				}
    			},
    			error : function(status, error){}	
    			
    		})
  if($("#userId").val() === ""){
    alert("아이디를 입력하세요")
    return;
  }else if($("#userId").val().length <6){
    alert("아이디는 6글자 이상입니다")
    return;
  }

})
  
//선호 감독, 배우 +,- 버튼
  function addDirector(){
  var input = document.createElement("input")
  var add = document.querySelector(".diretorSection").appendChild(input)
  input.setAttribute('class','likeDirector')
  input.setAttribute('id','likeDirector')
  input.setAttribute('name','likeDirector')
  }
  function addActor(){
  var input = document.createElement("input")
  var add = document.querySelector(".actorSection").appendChild(input)
  input.setAttribute('class','likeActor')
  input.setAttribute('id','likeActor')
  input.setAttribute('name','likeActor')
  }
  function minusActor() {
    var inp = document.querySelector(".actorSection");
    inp.removeChild(inp.children[2])
  }
  function minusDirector() {
    var inp = document.querySelector(".diretorSection");
    inp.removeChild(inp.children[2])
  }

//주소찾기
  function goPopup(){
    		var pop = window.open("${pageContext.request.contextPath}/resources/popup/jusoPopup.jsp","pop","width=570,height=420, scrollbars=yes, resizable=yes");
    		
    	}
    	function jusoCallBack(roadFullAddr,roadAddrPart1,addrDetail,roadAddrPart2,engAddr, jibunAddr, zipNo, admCd, rnMgtSn, bdMgtSn,detBdNmList,bdNm,bdKdcd,siNm,sggNm,emdNm,liNm,rn,udrtYn,buldMnnm,buldSlno,mtYn,lnbrMnnm,lnbrSlno,emdNo){
    		document.getElementById("addrBasic").value = roadAddrPart1;
    		document.getElementById("addrDetail").value = addrDetail;
    		document.getElementById("addrZipNum").value = zipNo;
    	}

</script>

