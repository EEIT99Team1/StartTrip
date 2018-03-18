<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


	<script>
		function infoDivShow(){
			var id="#d"+$(this).attr("id");
			$(id).toggle(1000);
		}	
		var arr={};
		function getAirLineName(code){
			var airLineName
			if(arr[code]!==undefined){
				return arr[code];
			}
			$.ajax({  
		          type : "get",  
		          url : "<c:url value='/getAirLineName.controller'/>",  
		          data : {"airlLineId":code},  
		          async : false,  
		          success : function(data){   
		        	  airLineName = data;  
		          }  
		    });
			arr[code]=airLineName;
			return airLineName;
		}
	</script>
	<script>
		$(document).ready(function() {
			//取得回傳的responseXml並轉成xml檔處理
			var text = ${responseXml};
			var parser = new DOMParser();
			var xmlDoc = parser.parseFromString(text, "text/xml");
			var PricedItinerarys = xmlDoc.getElementsByTagName("PricedItinerary");
			var documentFragment = $(document.createDocumentFragment());
			console.log(PricedItinerarys.length);
			
			for(var i=0,maxi=PricedItinerarys.length;i<maxi;i++){
				var divBig=$("<div></div>");//.css({"border":"4px solid #8C0044"});//最外圈的div
				var infoBut=$("<button></button>").attr({id:"flightInfo"+i}).append("航班資訊").click(infoDivShow);
				var infoDiv=$("<div></div>").attr({id:"dflightInfo"+i}).css({"display":"none"});
				var tableShow=$("<table></table>").addClass("table").css({"width":"100%","text-align":"center"});//.css({"border":"2px solid #003C9D","width":"100%"});
				var tbodyShow=$("<tbody></tbody>");
				console.log(i);
				//總金額//總飛行時間
				var totalFare=PricedItinerarys[i].getElementsByTagName("TotalFare")[0].getAttribute("Amount");
				var totalTime=0;
				//行李重量
				var weight;
// 				=PricedItinerarys[i].getElementsByTagName("Allowance")[0].getAttribute("Weight");	
				if(PricedItinerarys[i].getElementsByTagName("Allowance")[0]==undefined){
					weight=30;
				}else{
					weight=PricedItinerarys[i].getElementsByTagName("Allowance")[0].getAttribute("Weight");
					if(weight==null){
						weight=30;
					}
				}
				
				
				var	gotable;
				var thead;
				var tbody;
				//去程飛機資訊
				var go_trip  = PricedItinerarys[i].getElementsByTagName("OriginDestinationOption")[0];
				var Flight=go_trip.getElementsByTagName("FlightSegment");
				for(var j=0,maxj=Flight.length;j<maxj;j++){
					//出發時間//抵達時間//艙等//飛行時間
					var departureDateTime=Flight[j].getAttribute("DepartureDateTime");
					var arrivalDateTime=Flight[j].getAttribute("ArrivalDateTime");
					var resBookDesigCode=Flight[j].getAttribute("ResBookDesigCode");
					var elapsedTime=Flight[j].getAttribute("ElapsedTime");
	
					//出發地點//抵達地點
					var departureAirport=Flight[j].getElementsByTagName("DepartureAirport")[0].getAttribute("LocationCode");
					var arrivalAirport=Flight[j].getElementsByTagName("ArrivalAirport")[0].getAttribute("LocationCode");
					
					
					var operatingAirline=Flight[j].getElementsByTagName("OperatingAirline")[0];
					//航空公司//航班代號//飛機型號//航空公司中文
					var flightCode=operatingAirline.getAttribute("Code");
					var flightNum=operatingAirline.getAttribute("FlightNumber");
					var airEquipType=Flight[j].getElementsByTagName("Equipment")[0].getAttribute("AirEquipType");
					var airLineName=getAirLineName(flightCode);

					console.log(departureDateTime+">>>"+arrivalDateTime+"|||"+resBookDesigCode+" : " +elapsedTime);
					console.log(departureAirport+">>>"+arrivalAirport+"|||"+flightCode+" : " +flightNum);
					
					//將 出發時間&抵達時間 分割為 [0]日期 與 [1]時間
					departureDateTime=departureDateTime.split("T");
					arrivalDateTime=arrivalDateTime.split("T");
					//飛行時間(分) 轉為字串(時分)//計算總飛行時間
					var hour=Math.floor(elapsedTime/60);
					var min=elapsedTime%60;
					var elapsedTimeString=hour+"小時"+min+"分";
					totalTime=totalTime+parseInt(elapsedTime);
					
					if(j==0){
						//放入tableShow資訊
						var tr0show = $("<tr></tr>");
						var td00show = $("<td></td>").text(airLineName).css({"border":""});
						var td01show = $("<td></td>").text(departureAirport);
						var imgshowArrows=$("<img></img>").attr({src:'<c:url value="/image/search/004-arrows.png"/>'});
						var td02show = $("<td></td>").append(imgshowArrows);
						var td03show = $("<td></td>").text(arrivalAirport);
						var td04show = $("<td></td>");
						var td05show = $("<td></td>").attr({rowspan:"2"}).css({"width":"20%"}).text(totalFare+"元(台幣)");
						tr0show.append(td00show).append(td01show).append(td02show)
								.append(td03show).append(td04show).append(td05show);
						
						
						var tr1show = $("<tr></tr>");
						var td10show = $("<td></td>").attr({rowspan:"4"}).text(flightCode);
						var td11show = $("<td></td>").text(departureDateTime[1].substring(0,5));
						var td12show = $("<td></td>");
						var td13show = $("<td></td>").text(arrivalDateTime[1].substring(0,5));
						var td14show = $("<td></td>").text(elapsedTimeString+"，直飛");
						tr1show.append(td10show).append(td11show).append(td12show).append(td13show).append(td14show);
					
						var tr2show = $("<tr></tr>");
						var td20show = $("<td></td>").attr({colspan:"4"}).text("-----------------------------------------------------------------------");
						var butSelect= $("<button></button>").text("訂購").on("click",takedata);
						var td21show = $("<td></td>").attr({rowspan:"3"}).css({"width":"20%"});
						td21show.append(butSelect);
						tr2show.append(td20show).append(td21show);
						
						tbodyShow.append(tr0show).append(tr1show).append(tr2show);
					}else{
						//更新抵達機場//更新抵達時間//更新總飛行時數
						tbodyShow.find("tr:eq(0) td:eq(3)").text(arrivalAirport);
						tbodyShow.find("tr:eq(1) td:eq(2)").text(arrivalDateTime[1].substring(0,5));
						tbodyShow.find("tr:eq(1) td:eq(3)").text(
								Math.floor(totalTime/60)+"小時"+totalTime%60+"分"+"，轉"+j+"次");
						
					}
					
					
					//table
					if(j==0){
						gotable=$("<table></table>").addClass("table").css({"width":"100%","padding":"10px"});//.css({"border":"2px solid #003C9D","width":"100%"});
						//thead
						thead=$("<thead></thead>");
						var trhead=$("<tr></tr>");
						var th0=$("<th></th>").text("去程:");
						var imgFlight0=$("<img></img>").attr({src:'<c:url value="/image/search/003-plane.png"/>'});
						var th1=$("<th></th>").text(departureAirport).append(imgFlight0);;
						var th2=$("<th></th>").text(arrivalAirport);
						trhead.append(th0).append(th1).append(th2);
						thead.append(trhead);
						//thead-end
						//tbody
						tbody=$("<tbody></tbody>");
						gotable.append(thead).append(tbody);
					}else{
						thead.find("tr th:eq(2)").text(arrivalAirport);
					}
					var trB0=$("<tr></tr>");
					var td00=$("<td></td>").attr({rowspan:"3"}).text(flightCode+flightNum);
					var td01=$("<td></td>").text(departureDateTime[0]);
					var td02=$("<td></td>");
					var td03=$("<td></td>").text(arrivalDateTime[0]);
					var imgFlight=$("<img></img>").attr({src:'<c:url value="/image/search/003-plane.png"/>'});
					var td04=$("<td></td>").before(":").text(airEquipType).prepend(imgFlight);
					trB0.append(td00).append(td01).append(td02).append(td03).append(td04);
					
					var trB1=$("<tr></tr>");
					var td10=$("<td></td>").text(departureDateTime[1].substring(0,5));
					var td11=$("<td></td>").text(elapsedTimeString);
					var td12=$("<td></td>").text(arrivalDateTime[1].substring(0,5));
					var imgChair=$("<img></img>").attr({src:'<c:url value="/image/search/002-desk-chair.png"/>'});
					var td13=$("<td></td>").before(":").text(resBookDesigCode+"(經濟艙)").prepend(imgChair);
					trB1.append(td10).append(td11).append(td12).append(td13);
					
					var trB2=$("<tr></tr>");
					var td20=$("<td></td>").text(departureAirport);
					var imgArrows=$("<img></img>").attr({src:'<c:url value="/image/search/004-arrows.png"/>'});
					var td21=$("<td></td>").append(imgArrows);
					var td22=$("<td></td>").text(arrivalAirport);
					var imgBagage=$("<img></img>").attr({src:'<c:url value="/image/search/001-suitcase.png"/>'});
					var td23=$("<td></td>").text(":"+weight+"kg").prepend(imgBagage);
					trB2.append(td20).append(td21).append(td22).append(td23);
					
					tbody.append(trB0).append(trB1).append(trB2);
						//tbody-end
					//table-end
					
					infoDiv.append(gotable);
				}//for迴圈 j 結束
				
				
				
				totalTime=0;
				console.log("----------------------------------------");
				//回程飛機資訊
				var back_trip= PricedItinerarys[i].getElementsByTagName("OriginDestinationOption")[1];
				if(back_trip!=null){
					var	backtable;
					var thead;
					var tbody;
					var Flight=back_trip.getElementsByTagName("FlightSegment");
					for(var j=0,maxj=Flight.length;j<maxj;j++){
						//出發時間//抵達時間//艙等//飛行時間
						var departureDateTime=Flight[j].getAttribute("DepartureDateTime");
						var arrivalDateTime=Flight[j].getAttribute("ArrivalDateTime");
						var resBookDesigCode=Flight[j].getAttribute("ResBookDesigCode");
						var elapsedTime=Flight[j].getAttribute("ElapsedTime");
		
						//出發地點//抵達地點
						var departureAirport=Flight[j].getElementsByTagName("DepartureAirport")[0].getAttribute("LocationCode");
						var arrivalAirport=Flight[j].getElementsByTagName("ArrivalAirport")[0].getAttribute("LocationCode");
						
						
						var operatingAirline=Flight[j].getElementsByTagName("OperatingAirline")[0];
						//航空公司//航班代號//飛機型號
						var flightCode=operatingAirline.getAttribute("Code");
						var flightNum=operatingAirline.getAttribute("FlightNumber");
						var airEquipType=Flight[j].getElementsByTagName("Equipment")[0].getAttribute("AirEquipType");
// 						var airLineName=getAirLineName(flightCode);
						
						console.log(departureDateTime+">>>"+arrivalDateTime+"|||"+resBookDesigCode+" : " +elapsedTime);
						console.log(departureAirport+">>>"+arrivalAirport+"|||"+flightCode+" : " +flightNum);
						
						//將 出發時間&抵達時間 分割為 [0]日期 與 [1]時間
						departureDateTime=departureDateTime.split("T");
						arrivalDateTime=arrivalDateTime.split("T");
						//飛行時間(分) 轉為字串(時分)//計算總飛行時間
						var hour=Math.floor(elapsedTime/60);
						var min=elapsedTime%60;
						var elapsedTimeString=hour+"小時"+min+"分";
						totalTime=totalTime+parseInt(elapsedTime);
						
						if(j==0){
							//放入tableShow資訊
							var tr3show = $("<tr></tr>");
							var td30show = $("<td></td>").text(departureAirport);
							var imgshowArrows=$("<img></img>").attr({src:'<c:url value="/image/search/004-arrows.png"/>'});
							var td31show = $("<td></td>").append(imgshowArrows);
							var td32show = $("<td></td>").text(arrivalAirport);
							var td33show = $("<td></td>");
							tr3show.append(td30show).append(td31show).append(td32show).append(td33show);
							
							var tr4show = $("<tr></tr>");
							var td40show = $("<td></td>").text(departureDateTime[1].substring(0,5));
							var td41show = $("<td></td>");
							var td42show = $("<td></td>").text(arrivalDateTime[1].substring(0,5));
							var td43show = $("<td></td>").text(elapsedTimeString+"，直飛");
							tr4show.append(td40show).append(td41show).append(td42show).append(td43show);
							
							
							tbodyShow.append(tr3show).append(tr4show);
						}else{
							//更新抵達機場//更新抵達時間//更新總飛行時數
							tbodyShow.find("tr:eq(3) td:eq(2)").text(arrivalAirport);
							tbodyShow.find("tr:eq(4) td:eq(2)").text(arrivalDateTime[1].substring(0,5));
							tbodyShow.find("tr:eq(4) td:eq(3)").text(
									Math.floor(totalTime/60)+"小時"+totalTime%60+"分"+"，轉"+j+"次");
						}
						
						//table
						
						if(j==0){
							backtable=$("<table></table>").css({"border":"2px solid #003C9D","width":"100%"});
							//thead
							thead=$("<thead></thead>");
							var trhead=$("<tr></tr>");
							var th0=$("<th></th>").text("回程:");
							var imgFlight0=$("<img></img>").attr({src:'<c:url value="/image/search/003-plane.png"/>'});
							var th1=$("<th></th>").text(departureAirport).append(imgFlight0);;
							var th2=$("<th></th>").text(arrivalAirport);
							trhead.append(th0).append(th1).append(th2);
							thead.append(trhead);
							//thead-end
							//tbody
							tbody=$("<tbody></tbody>");
							gotable.append(thead).append(tbody);
						}else{
							thead.find("tr th:eq(2)").text(arrivalAirport);
						}
						var trB0=$("<tr></tr>");
						var td00=$("<td></td>").attr({rowspan:"3"}).text(flightCode+flightNum);
						var td01=$("<td></td>").text(departureDateTime[0]);
						var td02=$("<td></td>");
						var td03=$("<td></td>").text(arrivalDateTime[0]);
						var imgFlight=$("<img></img>").attr({src:'<c:url value="/image/search/003-plane.png"/>'});
						var td04=$("<td></td>").before(":").text(airEquipType).prepend(imgFlight);
						trB0.append(td00).append(td01).append(td02).append(td03).append(td04);
						
						var trB1=$("<tr></tr>");
						var td10=$("<td></td>").text(departureDateTime[1].substring(0,5));
						var td11=$("<td></td>").text(elapsedTimeString);
						var td12=$("<td></td>").text(arrivalDateTime[1].substring(0,5));
						var imgChair=$("<img></img>").attr({src:'<c:url value="/image/search/002-desk-chair.png"/>'});
						var td13=$("<td></td>").before(":").text(resBookDesigCode+"(經濟艙)").prepend(imgChair);
						trB1.append(td10).append(td11).append(td12).append(td13);
						
						var trB2=$("<tr></tr>");
						var td20=$("<td></td>").text(departureAirport);
						var imgArrows=$("<img></img>").attr({src:'<c:url value="/image/search/004-arrows.png"/>'});
						var td21=$("<td></td>").append(imgArrows);
						var td22=$("<td></td>").text(arrivalAirport);
						var imgBagage=$("<img></img>").attr({src:'<c:url value="/image/search/001-suitcase.png"/>'});
						var td23=$("<td></td>").text(":"+weight+"kg").prepend(imgBagage);
						trB2.append(td20).append(td21).append(td22).append(td23);
						
						tbody.append(trB0).append(trB1).append(trB2);
							//tbody-end
						//table-end
						infoDiv.append(backtable);
					}//for迴圈 j 結束
				}//if判斷 back_trip!=null 結束
				console.log("========================================");
				
				
				
				
				var br=$("<br/>");
				var p0=$("<p></p>").text("托運行李");
				var p1=$("<p></p>").text("1.託運行李相關規定請參照航空公司官方網站行李限制說明。");
				var p2=$("<p></p>").text("2.聯合營運航班需依實際承運航空公司託運行李相關規定為主。");
				var p3=$("<p></p>").text("3.託運行李若以件數計算，則每1件不得超過20公斤；若以重量計算，則不得超過表列之公斤數。");
				var p4=$("<p></p>").text("4.託運行李資訊是根據航空公司於訂位系統中的票價規則進行自動分析而取得，本公司不保證其準確性，得依實際開票時之確認為準， 開票後如有變動，恕不另行通知。");
				var p5=$("<p></p>").text("5.行李是否可直掛目的地，須依航空公司、當地政府、機場規定為準。");
				infoDiv.append(br).append(p0).append(p1).append(p2).append(p3).append(p4).append(p5);
				
				tableShow.append(tbodyShow);
				
				divBig.append(tableShow).append(infoBut).append(infoDiv);
				
				
				var br0=$("<br/>");
				documentFragment.append(divBig).append(br0);
// 				$("#flightsResult").append(divBig).append(br0);
			}//for迴圈 i 結束
			
			$("#flightsResult").append(documentFragment);
			
		});
	</script>	