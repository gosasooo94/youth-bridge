<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<!-- 모바일에서 기기의 해상도 능력에 상관없이 절대적인 크기로 나오도록 -->
<!-- 예를들어, pc에서의 300px이 모바일 에서도 똑같은 크기로 나오도록 -->
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>FAQ</title>
<link rel="stylesheet" href="resources/css/faq.css">
<script defer src="resources/js/faq.js"></script>

</head>
<body>

<!-- 모바일에서 기기의 해상도 능력에 상관없이 절대적인 크기로 나오도록 -->
<!-- 예를들어, pc에서의 300px이 모바일 에서도 똑같은 크기로 나오도록 -->
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- 제이쿼리 -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<!-- 폰트어썸 -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
<!-- 폰트어썸 FREE 아이콘 리스트 : https://fontawesome.com/v5.15/icons?d=gallery&p=2&m=free -->

<!-- 테일윈드 -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/tailwindcss/2.1.4/tailwind.min.css">
<!-- 테일윈드 치트시트 : https://nerdcave.com/tailwind-cheat-sheet -->

<section class="section section-faq">
  <div class="container mx-auto">
    <h1>FAQ</h1>

    <div class="faq-box">
      <!--
      ul>li*10>div.faq-box__question>span{질문 $}^div.faq-box__answer>lorem*10
    -->
      <ul>
        <li>
          <div class="faq-box__question"><span>Q. YOUTH-BRIDGE가 무엇인가요?</span></div>
          <div class="faq-box__answer">
            <div>
              청년들과 사회적 기회를 연결 하는 <font color="red">다리 역할</font>을 의미합니다.
              </div>
            
          </div>
        </li>
        <li>
          <div class="faq-box__question"><span>Q. 은둔형 외톨이는 어떤 사람들을 말하는 건지 궁금해요!</span></div>
          <div class="faq-box__answer">
            <div>
              - 사회생활에 적응하지 못하고 방이 나 집 안에만 머물며 <U>외부와 단절된 채 활동을 거부하는 사람들</U>을 일컫는 용어입니다.
            </div>
          </div>
        </li>
        <li>
          <div class="faq-box__question"><span>Q. 주요기능이 어떤 것이 있는지 간단히 알려주실 수 있나요?</span></div>
          <div class="faq-box__answer">
            <div>
              <font color="blue">YOUTH-BRIDGE에는 다음과 같은 기능이 있습니다.</font>
            </div>
            <div>
              1. 상담 : 상담을 통해 자신의 심리 상태, 현 상황 체크<br/>
			  2. 일기장 : 일기 작성을 통해 자신의 감정이 변화되는 모습을 체크<br/>
			  3. 정보 : 사용자에게 적합한 지원정책과 일자리 정보 제공<br/>
			  4. 인지 개발 : 의사소통 코칭으로 자신의 성향 파악 및 능력향상
            </div>
          </div>
        </li>
        <li>
          <div class="faq-box__question"><span>Q. 비회원으로 상담기능이 가능한가요?</span></div>
          <div class="faq-box__answer">
           <div>
            결론부터 말씀드리면 불가능합니다.
           </div>
           
            <div>
              상담의 경우 회원과 상담사 둘 모두에게 민감한 부분이 될 수 있고, 비회원분들이 이용할 수 있도록 오픈상담으로 하면<br/> 여러가지 문제들<font color="red">(사회적 문제, 인신공격 등)</font>이 발생할 우려가 있어 회원가입을 하고 이용하셔야 한다는 점 알려드립니다.
            </div>
          </div>
        </li>
        <li>
          <div class="faq-box__question"><span>Q. 일반 회원과 상담사 로그인이 따로 있던데 무엇때문인가요?</span></div>
          <div class="faq-box__answer">
            <div>
              YOUTH-BRIDGE에서는 일반 회원들이 상담을 할 수 있도록 상담 페이지가 마련되어있습니다.
            </div>
            <div>
              상담사들이 회원들이 상담을 신청할 때 일정이 겹치지 않게 편리한 신청을 위해 상담사들이 이용하는 페이지가 있습니다.
            </div>
            <div>
              또한 회원들에게 최고의 상담을 제공하기 위해 상담사 전용 자유게시판을 마련하여 서로의 상담기법을 공유할 수 있는 장을 마련하였기에 상담사들이 로그인이 따로 있는 것입니다.
            </div>
          </div>
        </li>
        <li>
          <div class="faq-box__question"><span>Q. 상담사로 회원가입을 했는데 활동을 바로 시작할 수 없는건 무엇때문인가요?</span></div>
          <div class="faq-box__answer">
           <div>
            일반회원과는 다르게 상담사는 회원가입을 할 때 자신의 자격증을 입력하게 되어있습니다.
           </div>
            <div>
              자격증은 <font color="red">관리자가 확인하여 승인하기 전까지</font>는 상담사의 권한은 주어지지 않은 상태로 있습니다.
            </div>
          </div>
        </li>
        <li>
          <div class="faq-box__question"><span>Q. 문제가 발생하면 어디에 문의하면 되나요?</span></div>
          <div class="faq-box__answer">
          <div>
            관리자 번호(010-0000-0000)으로 전화 혹은 문자로 알려주시면 친절하게 처리하도록 하겠습니다.
          </div>
            <div>
              (<font color="blue">문자는 어떤 기능 혹은 개선점이 필요한지 같이 내용 보내주시면 감사하겠습니다.</font>)
            </div>
          </div>
        </li>
      </ul>
    </div>
  </div>
</section>

<!-- 폰트 -->
<style>
  @font-face {
    font-family: 'LotteMartDream';
    font-style: normal;
    font-weight: 400;
    src: url('https://cdn.jsdelivr.net/korean-webfonts/1/corps/lottemart/LotteMartDream/LotteMartDreamMedium.woff2') format('woff2'), url('https://cdn.jsdelivr.net/korean-webfonts/1/corps/lottemart/LotteMartDream/LotteMartDreamMedium.woff') format('woff');
  }

  @font-face {
    font-family: 'LotteMartDream';
    font-style: normal;
    font-weight: 700;
    src: url('https://cdn.jsdelivr.net/korean-webfonts/1/corps/lottemart/LotteMartDream/LotteMartDreamBold.woff2') format('woff2'), url('https://cdn.jsdelivr.net/korean-webfonts/1/corps/lottemart/LotteMartDream/LotteMartDreamBold.woff') format('woff');
  }

  @font-face {
    font-family: 'LotteMartDream';
    font-style: normal;
    font-weight: 300;
    src: url('https://cdn.jsdelivr.net/korean-webfonts/1/corps/lottemart/LotteMartDream/LotteMartDreamLight.woff2') format('woff2'), url('https://cdn.jsdelivr.net/korean-webfonts/1/corps/lottemart/LotteMartDream/LotteMartDreamLight.woff') format('woff');
  }

  html>body {
    font-family: 'LotteMartDream', sans-serif;
  }
</style>
</body>
</html>