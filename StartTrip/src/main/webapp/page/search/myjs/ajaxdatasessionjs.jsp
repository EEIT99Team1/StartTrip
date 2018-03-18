<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<script>
 	function takedata(){
 		
 		var place = $(this).parent().parent().parent().parent().parent();
		var tbodygo=place.find("div:eq(0) table:eq(0) tbody:eq(0)");
		
		var flightprice=place.find("table:eq(0) tbody:eq(0) tr:eq(0) td:eq(5)").text();
		flightprice=flightprice.match(/\d+/)[0];//只取出數字的部分

		//去程
		//轉機的第一筆資料
		var gomodel1=tbodygo.find("tr:eq(0) td:eq(0)").text();
		var gogodate1=tbodygo.find("tr:eq(0) td:eq(1)").text();
		var goarriveddate1=tbodygo.find("tr:eq(0) td:eq(3)").text();
		var goflight1=tbodygo.find("tr:eq(0) td:eq(4)").text();
		
		var gogotime1 = tbodygo.find("tr:eq(1) td:eq(0)").text();
		var goflighttime1 = tbodygo.find("tr:eq(1) td:eq(1)").text();
		var goarrivedtime1 = tbodygo.find("tr:eq(1) td:eq(2)").text();
		var gocabin1=tbodygo.find("tr:eq(1) td:eq(3)").text();
		
		var gostartplace1 = tbodygo.find("tr:eq(2) td:eq(0)").text();
		var goarrivedplace1 = tbodygo.find("tr:eq(2) td:eq(2)").text();
		var goweight1 = tbodygo.find("tr:eq(2) td:eq(3)").text();
		
// 		console.log(tbodygo.find("tr:eq(3)")[0]!=undefined);
//		是否有轉機 true=有

		if(tbodygo.find("tr:eq(3)")[0]!=undefined){
			var gomodel2=tbodygo.find("tr:eq(3) td:eq(0)").text();
			var gogodate2=tbodygo.find("tr:eq(3) td:eq(1)").text();
			var goarriveddate2=tbodygo.find("tr:eq(3) td:eq(3)").text();
			var goflight2=tbodygo.find("tr:eq(3) td:eq(4)").text();
// 			alert(goflight2)
			var gogotime2 = tbodygo.find("tr:eq(4) td:eq(0)").text();
			
			var goflighttime2 = tbodygo.find("tr:eq(4) td:eq(1)").text();
			var goarrivedtime2 = tbodygo.find("tr:eq(4) td:eq(2)").text();
			var gocabin2=tbodygo.find("tr:eq(4) td:eq(3)").text();
			
			var gostartplace2 = tbodygo.find("tr:eq(5) td:eq(0)").text();
			var goarrivedplace2 = tbodygo.find("tr:eq(5) td:eq(2)").text();
			var goweight2 = tbodygo.find("tr:eq(5) td:eq(3)").text();

		}
		if(place.find("div:eq(0) table:eq(0) tbody:eq(1)")[0]!=undefined){
			var tbodyback=place.find("div:eq(0) table:eq(0) tbody:eq(1)");
			//回程
			//轉機的第一筆資料
			var backmodel1 = tbodyback.find("tr:eq(0) td:eq(0)").text();
			var backgodate1 = tbodyback.find("tr:eq(0) td:eq(1)").text();
			var backarriveddate1 = tbodyback.find("tr:eq(0) td:eq(3)").text();
			var backflight1 = tbodyback.find("tr:eq(0) td:eq(4)").text();
			
			var backgotime1 = tbodyback.find("tr:eq(1) td:eq(0)").text();
			var backflighttime1 = tbodyback.find("tr:eq(1) td:eq(1)").text();
			var backarrivedtime1 = tbodyback.find("tr:eq(1) td:eq(2)").text();
			var backcabin1=tbodyback.find("tr:eq(1) td:eq(3)").text();
			
			var backstartplace1 = tbodyback.find("tr:eq(2) td:eq(0)").text();
			var backarrivedplace1 = tbodyback.find("tr:eq(2) td:eq(2)").text();
			var backweight1 = tbodyback.find("tr:eq(2) td:eq(3)").text();
			
// 			console.log("back1")
// 			console.log(backmodel1)
// 	 		console.log(backgodate1)
// 	 		console.log(backarriveddate1)
// 	 		console.log(backflight1)
			
// 	 		console.log(backgotime1)
// 	 		console.log(backflighttime1)
// 	 		console.log(backarrivedtime1)
// 	 		console.log(backcabin1)
			
// 	 		console.log(backstartplace1)
// 	 		console.log(backarrivedplace1)
// 	 		console.log(backweight1)
			
			if(tbodyback.find("tr:eq(3)")[0]!=undefined){
				var backmodel2 = tbodyback.find("tr:eq(3) td:eq(0)").text();
				var backgodate2 = tbodyback.find("tr:eq(3) td:eq(1)").text();
				var backarriveddate2 = tbodyback.find("tr:eq(3) td:eq(3)").text();
				var backflight2 = tbodyback.find("tr:eq(3) td:eq(4)").text();
				
				var backgotime2 = tbodyback.find("tr:eq(4) td:eq(0)").text();
				var backflighttime2 = tbodyback.find("tr:eq(4) td:eq(1)").text();
				var backarrivedtime2 = tbodyback.find("tr:eq(4) td:eq(2)").text();
				var backcabin2=tbodyback.find("tr:eq(4) td:eq(3)").text();
				
				var backstartplace2 = tbodyback.find("tr:eq(5) td:eq(0)").text();
				var backarrivedplace2 = tbodyback.find("tr:eq(5) td:eq(2)").text();
				var backweight2 = tbodyback.find("tr:eq(5) td:eq(3)").text();
				
// 				console.log("back2")
// 				console.log(backmodel2)
// 		 		console.log(backgodate2)
// 		 		console.log(backarriveddate2)
// 		 		console.log(backflight2)
				
// 		 		console.log(backgotime2)
// 		 		console.log(backflighttime2)
// 		 		console.log(backarrivedtime2)
// 		 		console.log(backcabin2)
				
// 		 		console.log(backstartplace2)
// 		 		console.log(backarrivedplace2)
// 		 		console.log(backweight2)
			}
		}
		
		
		
		
// 		console.log(gomodel2)
// 		console.log(gogodate2)
// 		console.log(goarriveddate2)
// 		console.log(goflight2)
		
// 		console.log(gogotime2)
// 		console.log(goflighttime2)
// 		console.log(goarrivedtime2)
// 		console.log(gocabin2)
		
// 		console.log(gostartplace2)
// 		console.log(goarrivedplace2)
// 		console.log(goweight2)
		
	
 	console.log("test");
 	//ajax傳資料給後端,用controller去接收
 	$.ajax({
 		type:"POST",
 		data:{
 			//"後臺參數":前台參數
 			"gomodel1":gomodel1,
 			"gogodate1":gogodate1,
 			"goarriveddate1":goarriveddate1,
			"goflight1":goflight1,
			"gogotime1":gogotime1,
			"goflighttime1":goflighttime1,
			"goarrivedtime1":goarrivedtime1,
			"gocabin1":gocabin1,
			"gostartplace1":gostartplace1,
			"goarrivedplace1":goarrivedplace1,
			"goweight1":goweight1,
 		
			"gomodel2":gomodel2,
			"gogodate2":gogodate2,
			"goarriveddate2":goarriveddate2,
			"goflight2":goflight2,
			"gogotime2":gogotime2,
			"goflighttime2":goflighttime2,
			"goarrivedtime2":goarrivedtime2,
			"gocabin2":gocabin2,
			"gostartplace2":gostartplace2,
			"goarrivedplace2":goarrivedplace2,
			"goweight2":goweight2,
			
			"backmodel1":backmodel1,
			"backgodate1":backgodate1,
			"backarriveddate1":backarriveddate1,
			"backflight1":backflight1,
			"backgotime1":backgotime1,
			"backflighttime1":backflighttime1,
			"backarrivedtime1":backarrivedtime1,
			"backcabin1":backcabin1,
			"backstartplace1":backstartplace1,
			"backarrivedplace1":backarrivedplace1,
			"backweight1":backweight1,
			
			"backmodel2":backmodel2,
			"backgodate2":backgodate2,
			"backarriveddate2":backarriveddate2,
			"backflight2":backflight2,
			"backgotime2":backgotime2,
			"backflighttime2":backflighttime2,
			"backarrivedtime2":backarrivedtime2,
			"backcabin2":backcabin2,
			"backstartplace2":backstartplace2,
			"backarrivedplace2":backarrivedplace2,
			"backweight2":backweight2,
			"flightprice":flightprice
 		},
 			url:"<c:url value='/Ticketreveiw.controller'/>",
 			scriptCharset:'UTF-8',
 			success:function(){
 				javascript:location.href="<c:url value='/page/search/03ticketcheck.jsp'/>";
 			}
 	})
 	}
	</script>