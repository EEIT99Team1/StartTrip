<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
    <script src="style/jquery-3.3.1.min.js"></script>
    <script src="style/jquery-ui.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.3.5/jspdf.debug.js" integrity="sha384-CchuzHs077vGtfhGYl9Qtc7Vx64rXBXdIAZIPbItbNyWIRTdG0oYAqki3Ry13Yzu" crossorigin="anonymous"></script>
    <script src="https://unpkg.com/jspdf@latest/dist/jspdf.min.js"></script>
    <script>
    document.getElementById('exportPDF').addEventListener('click', function () {

        var doc = new jsPDF();
        html2canvas(document.body, {
            onrendered: function (canvas) {
                var image = canvas.toDataURL("image/png");
                doc.addImage(image, 'JPEG', 0, 0, canvas.width, canvas.height);
                doc.save('test.pdf');
            }
        });
    });


</script>
</head>
<body>
<div style="border:4px solid #8C0044;" id="testtable">
        <table style="border:2px solid #003C9D;width:100%">
            <thead></thead>
            <tbody>
                <tr>
                    <td rowspan="5">酷航空</td>
                    <td>TPE</td>
                    <td></td>
                    <td>HKG</td>
                    <td></td>
                    <td style="width:20%" rowspan="2">15000元</td>
                </tr>
                <tr>
                    <td>06:40</td>
                    <td></td>
                    <td>10:50</td>
                    <td>3時10分，直飛</td>
                </tr>
                <tr>
                    <td colspan="4">-----------------------------------------------------------------------</td>

                </tr>
                <tr>
                    <td>HKG</td>
                    <td></td>
                    <td>TPE</td>
                    <td></td>
                </tr>
                <tr>
                    <td>20:40</td>
                    <td></td>
                    <td>23:10</td>
                    <td>3時30分，直飛</td>
                </tr>
            </tbody>
        </table>

        <table style="border:2px solid #003C9D;width:100%">
            <thead>
                <tr>
                    <th>去程 : </th>
                    <th>TPE</th>
                    <th>HKG</th>
                </tr>
            </thead>
            <tbody>
                <tr><td rowspan="4">NX322</td><td>2018-04-01</td><td></td><td>2018-04-01</td><td><img src='<c:url value="/image/search/003-plane.png"/>' />:789</td></tr>
                <tr><td>06:40</td><td>3時10分</td><td>09:50</td><td><img src='<c:url value="/image/search/002-desk-chair.png"/>' />:經濟艙(F)</td></tr>
                <tr><td>TPE(台北)</td><td><img src='<c:url value="/image/search/004-arrows.png"/>' /></td><td>HKG(香港)</td><td><img src='<c:url value="/image/search/001-suitcase.png"/>' />:30kg</td></tr>
            </tbody>
        </table>
        <table style="border:2px solid #003C9D;width:100%">
            <thead><tr><th>回程 : </th><th>HKG<img src='<c:url value="/image/search/003-plane.png"/>' /></th><th>TPE</th></tr></thead>
            <tbody>
                <tr>
                    <td rowspan="4">NX322</td><td>2018-04-01</td>
                    <td></td>
                    <td>2018-04-01</td>
                    <td>:789</td>
                </tr>
                <tr>
                    <td>06:40</td>
                    <td>3時10分</td>
                    <td>09:50</td>
                    <td>:經濟艙(F)</td>
                </tr>
                <tr>
                    <td>TPE(台北)</td>
                    <td></td>
                    <td>HKG(香港)</td>
                    <td>:30kg</td>
                </tr>
            </tbody>
        </table><br />
        <p>托運行李</p>
        <p>1.託運行李相關規定請參照航空公司官方網站行李限制說明。</p>
        <p>2.聯合營運航班需依實際承運航空公司託運行李相關規定為主。</p>
        <p>3.託運行李若以件數計算，則每1件不得超過20公斤；若以重量計算，則不得超過表列之公斤數。</p>
        <p>4.託運行李資訊是根據航空公司於訂位系統中的票價規則進行自動分析而取得，本公司不保證其準確性，得依實際開票時之確認為準， 開票後如有變動，恕不另行通知。</p>
        <p>5.行李是否可直掛目的地，須依航空公司、當地政府、機場規定為準。</p>


    </div>

    <br />
    <button id="exportPDF">
        Export PDF
    </button>
</body>
</html>