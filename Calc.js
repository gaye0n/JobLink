

//수량, 단가를 입력받아 공급가액, 부가세, 합계를 계산하는 함수
function calculate(){
   var ea = document.querySelector('.ea'), 
       price = document.querySelector('.price'), 
       supply = document.querySelector('.supply'),
       vat = document.querySelector('.vat'),
       total = document.querySelector('.total');

    supply.value = parseInt(inputNumberRemoveComma(ea.value)) * parseInt(inputNumberRemoveComma(price.value));
    vat.value = parseInt(inputNumberRemoveComma(supply.value)) * 0.1;
    total.value = parseInt(inputNumberRemoveComma(supply.value)) + parseInt(inputNumberRemoveComma(vat.value));

    supply = inputNumberAutoComma(supply);
    vat = inputNumberAutoComma(vat);
    total = inputNumberAutoComma(total);
}


//천단위 자동콤마( , ) 삽입 및 소수점 표현하는 함수
function inputNumberAutoComma(obj) {
    
    var number = obj.value;
    var integer = obj.value;
    var point = number.indexOf(".");
    var decimal = "";
    var chekcd = "";

    // 첫번째 수부터 소수점 기호( . )를 사용 방지
    if(number.charAt(0) == ".") {
        alert("첫번째 수부터 소수점 기호( . )를 사용할 수 없습니다.");
        obj.value = "";
        return false;
    }
    
    // 소수점이 존재하면 태우는 분기
    if(point > 0) {

        // 소수점 앞 자리값만을 따로 담는다.
        integer = number.substr(0, point);

        // 소수점 아래 자리값만을 따로 담는다.
        decimal = number.substr((point + 1), number.length);
        chekcd = inputNumberisFinit(decimal);

        if(chekcd == "N") {
            alert("문자는 입력하실 수 없습니다.");
            obj.value = "";
            return false;
        }
    }

    // 정수형의 콤마를 제거한다.
    integer = integer.replace(/\,/g, "");
    chekcd = inputNumberisFinit(integer);

    if(chekcd == "N") {
        alert("문자는 입력하실 수 없습니다.");
        obj.value = "";
        return false;
    }

    // 정수형을 한번더 점검한다.
    integer = inputNumberWithComma(inputNumberRemoveComma(integer));
    
    // 소수가 존재하면 나누었던 콤마 기호를 삽입한다.
    if(point > 0) {
        obj.value = integer + "." + decimal;
    }
    
    // 소수가 존재하지 않는다면 콤마값을 넣은 정수만 삽입한다.
    else {
        obj.value = integer;
    }
}

// 천단위 이상의 숫자에 콤마( , )를 삽입하는 함수
function inputNumberWithComma(str) {
    str = String(str);
    return str.replace(/(\d)(?=(?:\d{3})+(?!\d))/g, "$1,");
}

// 콤마( , )가 들어간 값에 콤마를 제거하는 함수
function inputNumberRemoveComma(str) {
    str = String(str);
    return str.replace(/[^\d]+/g, "");
}

// 문자 여부를 확인하고 문자가 존재하면 N, 존재하지 않으면 Y를 리턴한다.
function inputNumberisFinit(str) {
    if(isFinite(str) == false) {
        return "N";
    } else {
        return "Y";
    }
}


