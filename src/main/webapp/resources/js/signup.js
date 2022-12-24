
      $(function() {
        $("#newId").on("change keyup paste", () => {
          let id = $("#newId").val().trim();

          if(id.length < 5) {
            $("#idCheck").text("아이디는 최소 5글자 이상이여야 합니다.");
          } else {
            $("#checkDuplicate").removeAttr("disabled")
            $("#idCheck").text("");
          }
        });
        let idCheck = false;
        // 아이디 중복 확인 AJAX
        $("#checkDuplicate").on("click", () => {
          alert("아이디 중복 확인");
          $.ajax({
            type:"get",
            url:"${path}/member/idCheck",
            data:{id}, // 속성값이 키값과 같은 이름을 가질때 하나로만 key-value 채운다.
            success:
              (data)=>{ // validate key값
                console.log(data);
                if(data.validate === true){
                  alert("이미 사용중인 아이디입니다.")
                } else{
                  alert("사용 가능합니다.")
                }
              },
            error:
              (e)=>{
              console.log(e);	    				
              }
	    	  });
        });

        // 비밀번호 유효성 검사
        let check = /^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$/;
        $("#signup-password").on("change keyup paste", () => {
          let pw = $("#signup-password").val();
          if(check.test(pw) == false) {
            $("#pwCheck1").text("비밀번호는 영문, 숫자 포함 8자리 이상이여야 합니다.");
          }
          else {
            $("#pwCheck1").text("");
          }
        });

        // 비밀번호 일치 확인
        $("#signup-password-confirm").on("change keyup paste", (event) => {
          let pw1 = $("#signup-password").val().trim();
          let pw2 = $(event.target).val().trim();
  
          if(pw1 != pw2) {
            $("#pwCheck2").text("비밀번호가 일치하지 않습니다.");
          }
          else {
            $("#pwCheck2").text("");
          }
        });

        // 이용약관 및 개인정보보호정책 동의 확인
        $("#agree-to-terms").on("change", () => {
          if($("#agree-to-terms").is(":checked") == true) {
            $("#signUp").removeAttr("disabled");
          }
          else {
            $("#signUp").attr("disabled", "true");
          }
        });
      });
