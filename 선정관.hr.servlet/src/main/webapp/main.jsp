<%@ page language='java' contentType='text/html; charset-utf-8' pageEncoding='utf-8'%>
<script src='https://code.jquery.com/jquery-3.6.0.min.js'></script>
<html>
<head>
<meta name='viewport' content='width=device-width, initial-scale=1'>
<link rel='stylesheet' href='https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.0/font/bootstrap-icons.css'>
<link href='https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css' rel='stylesheet'>
<script src='https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js'></script>
<script src='https://code.jquery.com/jquery-3.6.0.min.js'></script>
<script>
   	let laborers = [] //database 준비.
    let laborerId = function* genLaborerId() {
        let laborerId = 1
        while(true) yield laborerId++
    }()

    //조사할 field를 parameter로 받는다.
    function isVal(field) {
        let isGood = false
        let errMsg

        if(!field.length) errMsg = '노동자를 선택하세요.'
        else {
            if(!field.val()) errMsg = field.attr('placeholder') + ' 입력하세요.'
            else isGood = true
        }

        if(!isGood) {
            $('#modalMsg').text(errMsg).css('color', 'red')
            $('#modalBtn').hide()
            $('#modal').modal('show')
        }
        
        return isGood
    }

    function listLaborers() {
        $('input').not(':radio').val('') //노동자명 입사일 쓰레기 청소
        $('#laborers').empty()           //기존 노동자 목록 쓰레기 청소

        if(laborers.length) {
            const laborerArr = []   //incoding된 laborer를 넣을 곳.

            $.each(laborers, (i, laborer) => {
                laborerArr.unshift( //unshift는 내림차순 정렬을 위함.
                    `<tr>
                        <td><input type='radio' value='${laborer.laborerId}' id='laborerId' name='laborerId'/></td>
                        <td>${laborer.laborerId}</td>
                        <td>${laborer.laborerName}</td>
                        <td>${laborer.hireDate}</td>
                    </tr>`
                )
            })
            
            $('#laborers').append(laborerArr.join(''))
        } else $('#laborers').append( //else문, laborer가 없는경우.
            `<tr><td colspan='4' class='text-center'>노동자가 없습니다.</td></tr>`
        )
    }

    function init() {
        //노동자 추가
        $('#addLaborerBtn').click(() => { //isVal의 parameter는 jquery function이여야함.
            if(isVal($('#laborerName')) && isVal($('#hireDate'))) {
                let laborer = {
                    laborerId: laborerId.next().value,
                    laborerName: $('#laborerName').val(),
                    hireDate: $('#hireDate').val()
                }
                
                laborers.push(laborer)
                listLaborers() //데이터를 넣어줬으니, 화면갱신을 한다. //해당 method가 call되고, append부분이 동작할 때 화면갱신이 됨.
            }
        })

        //노동자 수정
        $('#fixLaborerBtn').click(() => {
            if(isVal($('#laborerId:checked')) &&
                isVal($('#laborerName')) && isVal($('#hireDate'))) {
                let laborerId = $('#laborerId:checked').val()

                let laborer = laborers.filter(laborer =>
                    laborer.laborerId == laborerId)[0] //filter가 Array를 return하면 0번째 element를 가져온다.
                
                if(laborer) {
                    laborer.laborerName = $('#laborerName').val()
                    laborer.hireDate = $('#hireDate').val()
                    listLaborers() //state가 바뀌었으니, 화면갱신을 한다.
                }
            }
        })

        $('#laborers').on({
            change() {
                $('#laborerName').val($(this).parent()/*td객체(radio)*/.next().next().text())
                $('#hireDate').val($(this).parent().next().next().next().text())
            }
        }, '#laborerId')

        //노동자 삭제
        $('#delLaborerBtn').click(() => {
            if(isVal($('#laborerId:checked'))) {
                $('#modalMsg').text('노동자를 삭제하시겠습니까?')
                $('#modalBtn').show()
                $('#modal').modal('show')
            }
        })

        $('#delLaborerOkBtn').click(() => {
            let laborerId = $('#laborerId:checked').val()
            
            //삭제할 노동자빼고, 나머지 살아남을 노동자 리스트 저장 //react방법.
            laborers = laborers.filter(laborer => laborer.laborerId != laborerId)

            $('#modal').modal('hide')
            listLaborers()
        })
    }

   
</script>
<title>hr.jquery</title>
<style>
    
</style>
</head>
<body>
<div class='container'>
<div class='row mb-5'>
    <div class='col'>
        <header class='p-2 bg-light shadow'>
            <h1 class='text-center'><b>HR</b></h1>
        </header>
    </div>
</div>

<div class='row'>
    <div class='col'>
        <form action='controller.jsp' method='post'>
            <div class='row mt-5'>
                <div class='col-2'>
                    <input type='text' class='form-control' placeholder='노동자명' name='laborerName' id='laborerName'/>
                </div>
                <div class='col-5'>
                    <div class='row'>
                        <div class='col-4 d-none d-md-inline text-end pt-2'>
                            <label for='hireDate'>입사일: </label>
                        </div>
                        <div class='col'>
                            <input type='date' class='form-control' id='hireDate'
                                name='hireDate' placeholder='입사일' required/>
                        </div>
                    </div>
                </div>
                <div class='gap-2 col d-flex justify-content-end'>
                    <button type='submit' name='addLaborerBtn' value='on' class='btn btn-primary' id='addLaborerBtn'>
                        <i class='bi bi-plus-circle'></i>
                        <span class='d-none d-md-inline'>추가</span>
                    </button>
                    <button type='submit' name='fixLaborerBtn' value='on' class='btn btn-success' id='fixLaborerBtn'>
                        <i class='bi bi-check-circle'></i>
                        <span class='d-none d-md-inline'>수정</span>
                    </button>
                    <div type='button'  class='btn btn-danger' id='delLaborerBtn'>
                        <i class='bi bi-x-circle'></i>
                        <span class='d-none d-md-inline'>삭제</span>
                    </div>
                </div>
            </div>
            <div class='row'>
                <div class='col'>
                    <table class='table mt-3'>
                        <thead class='table-warning'>
                            <tr>
                                <th></th>
                                <th>ID</th>
                                <th>이름</th>
                                <th>입사일</th>
                            </tr>
                        </thead>
                        <tbody id='laborers'>
                           <tr><td colspan='4' class='text-center'>노동자가 없습니다.</td></tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </form>
    </div>
</div>
</div>
<div class='modal fade' id='modal'>
    <div class='modal-dialog'>
        <div class='modal-content'>
            <div class='modal-header'>
                <div type='button' class='btn-close btn-sm' data-bs-dismiss='modal'></div>
            </div>
            <div class='modal-body'>
                <p id='modalMsg'></p>
            </div>
            <div class='modal-footer' id='modalBtn'>
                <button type='button' class='btn btn-secondary' data-bs-dismiss='modal'>아니오</button>
                <button type='button' class='btn btn-primary' id='delLaborerOkBtn'>예</button>
            </div>
        </div>
    </div>
</div>
</body>
</html>