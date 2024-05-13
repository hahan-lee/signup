(($,window,document)=>{
	
	class Genesis{
		init(){
			this.mainbtn();
			this.signup();
			this.checkbox();
		}
		mainbtn(){
			$('.main-btn').on({
				click(){
					location.href = 'index.jsp';
				}
			})
			
		}
		
		signup(){
			console.log('기본');
			
			//회원 출력 리스트
			function jsonArraySignup(res){
				const arr = JSON.parse(res);
				let list = '';
				arr.map((item,idx)=>{
					list += `<tr data-id=${item.userId} data-pw=${item.userPw}>`;
					list += `<td>${idx+1}</td>`;
					list += `<td>${item.userId}</td>`
					list += `<td>${item.userPw}</td>`;
					list += `<td>${item.userName}</td>`;
					list += `<td>${item.userHp}</td>`;
					list += `<td>${item.userAddress}</td>`;
					list += `<td>${item.userEmail}</td>`;
					list += `<td>${item.signupDate}</td>`;
					list += `<td><button class="update-btn">수정</button></td>`;
					list += `<td><button class="delete-btn">삭제</button></td>`;								
					list += `</tr>`;
				})
				$('.signup-list').empty().append(list);	
			}
			
			//회원 출력 리스트 화면 자동 실행
			function signupList(){
				$.ajax({
					url:'signupList.do',
					type:'GET',
					success(res){
						jsonArraySignup(res);
					},
					error(err){
						console.log(err);
					}
				});
			}
			signupList();
			
			// 1. 회원가입 저장
			$('.submit-btn').on({
				click(e){
					e.preventDefault();
					
					const userId = $('#userId').val();
					const userPw = $('#userPw').val();
					const userName = $('#userName').val();
					const userHp = $('#userHp').val();
					const userAddress = $('#userAddress').val();
					const userEmail = $('#userEmail').val();
					
					if(userId !=='' && userPw !=='' && userName !=='' && userHp !=='' && userEmail !=='' ){
						
						alert('회원가입을 축하합니다.');
						$.ajax({
							url:'signup.do',
							type:'POST',
							data:{
								userId : userId,
								userPw : userPw,
								userName : userName,
								userHp : userHp,
								userAddress : userAddress,
								userEmail : userEmail,
							},
							success(res){
								console.log(res);
	
								if(res == 1){
									$('#userId').val('');
									$('#userPw').val('');
									$('#userName').val('');
									$('#userHp').val('');
									$('#userAddress').val('');
									$('#userEmail').val('');
									$('#userId').focus();
									//로그인창 이동
									location.href='login.jsp';
								}
								else{
									alert('다시 입력해주세요.');
									$('#userId').focus();
								}
							},
							error(err){
								console.log(err);
							}
							
							
						})						
					}
					else{
						alert("정보를 채워주세요.");
					}
				

				}
			});
			
			//수정 모달창 닫기
			$('.close-btn').on({
				click(e){
					e.preventDefault();
					location.href = 'user_list.jsp';
				}
			})
			
			//2.수정버튼 (가상요소 이벤트 => document 사용)
			$(document).on('mouseenter','.update-btn',function(){
				$(this).on({
					click(e){
						e.preventDefault();

						const id = $(this).parents('tr').data('id');
						console.log(id);
						
						location.href = `signup_update.jsp?userId=${id}`;
					}
				})	
			});
			
			//3.삭제버튼 (가상요소 이벤트 => document 사용)
			$(document).on('mouseenter','.delete-btn',function(){
				$(this).on({
					click(e){
						e.preventDefault();


						const id = $(this).parents('tr').data('id');
						const pw = $(this).parents('tr').data('pw');
						console.log(id);
						console.log(pw);
						
						$.ajax({
							url:'signupDelete.do',
							type:'POST',
							data:{
								id : id,
								pw : pw
							},
							success(res){
								alert('회원정보 삭제 완료');
								jsonArraySignup(res);
								
							},
							error(err){
								console.log(err);
								alert('회원정보 삭제 실패');
							}
							
						})
					}
				})	
			});
			
			
			//4. 로그인 버튼
			$('.login-btn').on({
				click(e){
					e.preventDefault();
					
					const userId = $('#userId').val();
					const userPw = $('#userPw').val();
					
					$.ajax({
						url:'login.do',
						type:'POST',
						data:{
							userId : userId,
							userPw : userPw
						},
						success(res){
							console.log(res);
							if(res==1){
								alert('로그인 성공');
								location.href = './index.jsp';
							}
							else if(res==-1){
								alert('비밀번호 불일치. 다시 확인하세요.');
							}
							else{
								alert('아이디 또는 비밀번호가 틀립니다. 다시확인하세요.');
							}
						},
						error(err){
							console.log(err);

						}		
					})
				}
			})		

		}//signup 끝
		
		
		checkbox(){
			console.log('test')
			// # 회원가입 구현 상태변수
			
			$('#chkAll').on({
				click(){
					if($(this).is(":checked")){ //대상이 체크 되어 있을 때
				    	console.log('체크')
				    	//모든 체크박스 체크
				        $('input:checkbox').prop('checked',true);
				        
				    }else{ //대상이 체크 해제 되어 있을 때
				    	console.log('체크취소')
				    	//모든 체크박스 체크해제
				        $('input:checkbox').prop('checked',false);
				        
				    }
				}
			})
			

			$('.agree-btn').on({
				click(){
					if($("input:checkbox[name=chk]:checked").length == 3 ){
						location.href = 'signup.jsp'
					}
					else{
						alert('이용약관 동의 필수');
					}
				}
			})

	


		}
	
	
	}	
	const genesis = new Genesis();
	genesis.init();

	
})(jQuery,window,document);