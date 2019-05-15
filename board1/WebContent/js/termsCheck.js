/**
 * 날짜 : 2019-05-14
 * 이름 : 정태동
 * 내용 : 약관체크 확인
 */

	
			$(document).ready(function(){
				
				$('.btnNext').click(function(){
					
					var chk1 = $('input[name=chk1]').is(':checked');
					var chk2 = $('input[name=chk2]').is(':checked');
					
					if(!chk1){
						alert('사이트 이용약관에 동의 체크를 해주세요.')
						return false;
					}else if(!chk2){
						alert('개인정보 취급방침에 동의 체크를 해주세요.');
						// a태그 링크이동 취소
						return false;
					}else{
						return true;
					}
				});
			});
		