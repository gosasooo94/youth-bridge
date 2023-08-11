function openReservationPopup() {
    // 팝업 창의 크기와 속성을 설정합니다.
    var popupWidth = 800;
    var popupHeight = 700;
    var popupOptions = 'width=' + popupWidth + ', height=' + popupHeight + ', resizable=yes';

    // 화면의 가운데를 기준으로 팝업 창의 왼쪽 위치를 계산합니다.
    var screenLeft = (window.screen.width - popupWidth) / 2;

    // 오른쪽으로 이동할 위치를 지정합니다.
    var offsetRight = 670; // 오른쪽으로 100px 이동하도록 설정합니다.

    // 아래로 이동할 위치를 지정합니다.
    var offsetDown = 200; // 아래로 50px 이동하도록 설정합니다.

    // 예약 페이지를 팝업 창으로 띄웁니다.
    window.open('reserve.do', 'ReservationPopup', popupOptions + ', left=' + (screenLeft + offsetRight) + ', top=' + offsetDown);
}

