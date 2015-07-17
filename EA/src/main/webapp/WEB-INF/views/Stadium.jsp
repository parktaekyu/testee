<%@page import="com.dto.StadiumDTO"%>
<%@page import="java.util.List"%>
<%-- <%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="com.dto.StadiumDTO"%> --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>Real Estate Map Update Template | PrepBootstrap</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link href="assets/css/bootstrap.css" rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="assets/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css"
	href="font-awesome/css/font-awesome.min.css" />

<script type="text/javascript" src="js/jquery-1.10.2.min.js"></script>
<script src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript">
	 $(document).ready(function gogo() {
		$("#one").on("click", function() {
			$('#butt').attr('disabled',true); 
		})
	})
	 
	function gogo() {
		$('#butt').attr('disabled',true); 
	}

</script>

<style>
.map_wrap, .map_wrap * {
	margin: 0;
	padding: 0;
	font-family: 'Malgun Gothic', dotum, '돋움', sans-serif;
	font-size: 12px;
}

.map_wrap {
	position: relative;
	width: 100%;
	height: 350px;
}

#category {
	position: absolute;
	top: 10px;
	left: 10px;
	border-radius: 5px;
	border: 1px solid #909090;
	box-shadow: 0 1px 1px rgba(0, 0, 0, 0.4);
	background: #fff;
	overflow: hidden;
	z-index: 2;
}

#category li {
	float: left;
	list-style: none;
	width: 50px; px;
	border-right: 1px solid #acacac;
	padding: 6px 0;
	text-align: center;
	cursor: pointer;
}

#category li.on {
	background: #eee;
}

#category li:hover {
	background: #ffe6e6;
	border-left: 1px solid #acacac;
	margin-left: -1px;
}

#category li:last-child {
	margin-right: 0;
	border-right: 0;
}

#category li span {
	display: block;
	margin: 0 auto 3px;
	width: 27px;
	height: 28px;
}

#category li .category_bg {
	background:
		url(http://i1.daumcdn.net/localimg/localimages/07/mapapidoc/places_category.png)
		no-repeat;
}

#category li .bank {
	background-position: -10px 0;
}

#category li .mart {
	background-position: -10px -36px;
}

#category li .pharmacy {
	background-position: -10px -72px;
}

#category li .oil {
	background-position: -10px -108px;
}

#category li .cafe {
	background-position: -10px -144px;
}

#category li .store {
	background-position: -10px -180px;
}

#category li.on .category_bg {
	background-position-x: -46px;
}

.placeinfo_wrap {
	position: absolute;
	bottom: 28px;
	left: -150px;
	width: 300px;
}

.placeinfo {
	position: relative;
	width: 100%;
	border-radius: 6px;
	border: 1px solid #ccc;
	border-bottom: 2px solid #ddd;
	padding-bottom: 10px;
	background: #fff;
}

.placeinfo:nth-of-type(n) {
	border: 0;
	box-shadow: 0px 1px 2px #888;
}

.placeinfo_wrap .after {
	content: '';
	position: relative;
	margin-left: -12px;
	left: 50%;
	width: 22px;
	height: 12px;
	background:
		url('http://i1.daumcdn.net/localimg/localimages/07/mapapidoc/vertex_white.png')
}

.placeinfo a, .placeinfo a:hover, .placeinfo a:active {
	color: #fff;
	text-decoration: none;
}

.placeinfo a, .placeinfo span {
	display: block;
	text-overflow: ellipsis;
	overflow: hidden;
	white-space: nowrap;
}

.placeinfo span {
	margin: 5px 5px 0 5px;
	cursor: default;
	font-size: 13px;
}

.placeinfo .title {
	font-weight: bold;
	font-size: 14px;
	border-radius: 6px 6px 0 0;
	margin: -1px -1px 0 -1px;
	padding: 10px;
	color: #fff;
	background: #d95050;
	background: #d95050
		url(http://i1.daumcdn.net/localimg/localimages/07/mapapidoc/arrow_white.png)
		no-repeat right 14px center;
}

.placeinfo .tel {
	color: #0f7833;
}

.placeinfo .jibun {
	color: #999;
	font-size: 11px;
	margin-top: 0;
}

.customoverlay {
	position: relative;
	bottom: 85px;
	border-radius: 6px;
	border: 1px solid #ccc;
	border-bottom: 2px solid #ddd;
	float: left;
}

.customoverlay:nth-of-type(n) {
	border: 0;
	box-shadow: 0px 1px 2px #888;
}

.customoverlay a {
	display: block;
	text-decoration: none;
	color: #000;
	text-align: center;
	border-radius: 6px;
	font-size: 14px;
	font-weight: bold;
	overflow: hidden;
	background: #d95050;
	background: #d95050
		url(http://i1.daumcdn.net/localimg/localimages/07/mapapidoc/arrow_white.png)
		no-repeat right 14px center;
}

.customoverlay .title {
	display: block;
	text-align: center;
	background: #fff;
	margin-right: 35px;
	padding: 10px 15px;
	font-size: 14px;
	font-weight: bold;
}

.customoverlay:after {
	content: '';
	position: absolute;
	margin-left: -12px;
	left: 50%;
	bottom: -12px;
	width: 22px;
	height: 12px;
	background:
		url('http://i1.daumcdn.net/localimg/localimages/07/mapapidoc/vertex_white.png')
}
</style>
</head>
<body>


	<div class="container">

		<div class="page-header">
			<h1>
				Real Street Soccer Map <small>Bootstrap template, Show View
					Street Real Map</small>
			</h1>
		</div>

		<!-- Real Estate Map Update - START -->
		<div class="container">
			<div class="row">
				<div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 ">
					<div class="row">
						<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 ">
							<div class="panel panel-default"">
								<div class="row padall">
									<div class="col-xs-12 col-sm-12 col-md-3 col-lg-3">
										<span></span> <img
											src="/Content/images/shared/properties1/condo1.jpg" />
									</div>
									<div class="col-xs-12 col-sm-12 col-md-9 col-lg-9">
										<!--	<div class="clearfix">
											<div class="pull-left">
												<span class="fa fa-dollar icon">499,000</span>
											</div>
											<div class="pull-right">900 SqFt | 1 Bedroom | 1
												Bathroom</div>
										</div>
										<div>
											
										</div>-->

										<h4>Stadium Inventory View</h4>
										Touch Stadium List
									</div>
								</div>
							</div>
						</div>
					</div>

			<%
				 		List<StadiumDTO> list = (List<StadiumDTO>) session.getAttribute("stadium");

						for (StadiumDTO dto : list) {
					%> 
					<div class="row">
						<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 ">
							<div class="panel panel-primary"
								onclick="javascript:init_map(' <%=dto.getStadiumAddr()%> ',' <%= dto.getStadiumName()%> ');">
								<div class="row padall">
									<div class="col-xs-12 col-sm-12 col-md-3 col-lg-3">
										<span></span> 
									</div>
									<div class="col-xs-12 col-sm-12 col-md-9 col-lg-9">
										<div class="clearfix">
											<div class="pull-left">
												<span class="fa fa-dollar icon"> <%=dto.getStadiumName()%> </span>
											</div>

										</div>
										<div>
											<h4>
												<span class="fa fa-map-marker icon"></span>
												 <%=dto.getStadiumAddr()%> 
												&nbsp;&nbsp; <span class="fa fa-search icon pull-right">&nbsp;&nbsp;
												<button type="button"  data-toggle="modal" data-target=".bs-example-modal-lg" id="butt">JOIN</button>
												</span>
											</h4>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>



				<% 
						}
						%>
				</div>
				<div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
					<div class="map_wrap">
						<div id="map"
							style="width: 600px; height: 600px; position: relative; overflow: hidden;"></div>
						<ul id="category">
							<li id="BK9" data-order="0"><span class="category_bg bank"></span>
								은행</li>
							<li id="MT1" data-order="1"><span class="category_bg mart"></span>
								마트</li>
							<li id="PM9" data-order="2"><span
								class="category_bg pharmacy"></span> 약국</li>
							<li id="OL7" data-order="3"><span class="category_bg oil"></span>
								주유소</li>
							<li id="CE7" data-order="4"><span class="category_bg cafe"></span>
								카페</li>
							<li id="CS2" data-order="5"><span class="category_bg store"></span>
								편의점</li>
						</ul>
					</div>
				</div>
			</div>
		</div>

		<script type="text/javascript"
			src="//apis.daum.net/maps/maps3.js?apikey=5b8cec7ffb2066fbdb00166885e1cc4a&libraries=services"></script>

		<script type="text/javascript">
			var placeOverlay = new daum.maps.CustomOverlay({
				zIndex : 1
			}), contentNode = document.createElement('div'), // 커스텀 오버레이의 컨텐츠 엘리먼트 입니다 
			markers = [], // 마커를 담을 배열입니다
			currCategory = ''; // 현재 선택된 카테고리를 가지고 있을 변수입니다

			var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
			mapOption = {
				center : new daum.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
				level : 7
			// 지도의 확대 레벨
			};
			var map = new daum.maps.Map(mapContainer, mapOption);
			var geocoder = new daum.maps.services.Geocoder();
			var mapTypeControl = new daum.maps.MapTypeControl();

			// 장소 검색 객체를 생성합니다
			var ps = new daum.maps.services.Places(map);

			// 지도에 idle 이벤트를 등록합니다
			daum.maps.event.addListener(map, 'idle', searchPlaces);

			// 커스텀 오버레이의 컨텐츠 노드에 css class를 추가합니다 
			contentNode.className = 'placeinfo_wrap';

			// 커스텀 오버레이의 컨텐츠 노드에 mousedown, touchstart 이벤트가 발생했을때
			// 지도 객체에 이벤트가 전달되지 않도록 이벤트 핸들러로 daum.maps.event.preventMap 메소드를 등록합니다 
			addEventHandle(contentNode, 'mousedown', daum.maps.event.preventMap);
			addEventHandle(contentNode, 'touchstart',
					daum.maps.event.preventMap);

			// 커스텀 오버레이 컨텐츠를 설정합니다
			placeOverlay.setContent(contentNode);

			// 각 카테고리에 클릭 이벤트를 등록합니다
			addCategoryClickEvent();

			// 엘리먼트에 이벤트 핸들러를 등록하는 함수입니다
			function addEventHandle(target, type, callback) {
				if (target.addEventListener) {
					target.addEventListener(type, callback);
				} else {
					target.attachEvent('on' + type, callback);
				}
			}

			// 카테고리 검색을 요청하는 함수입니다
			function searchPlaces() {

				// 커스텀 오버레이를 숨깁니다 
				placeOverlay.setMap(null);

				if (!currCategory) {
					return;
				}

				ps.categorySearch(currCategory, placesSearchCB, {
					useMapBounds : true
				});
			}

			// 장소검색이 완료됐을 때 호출되는 콜백함수 입니다
			function placesSearchCB(status, data, pagination) {
				if (status === daum.maps.services.Status.OK) {

					// 정상적으로 검색이 완료됐으면 지도에 마커를 표출합니다
					displayPlaces(data.places);
				}
			}

			// 지도에 마커를 표출하는 함수입니다
			function displayPlaces(places) {

				// 몇번째 카테고리가 선택되어 있는지 얻어옵니다
				// 이 순서는 스프라이트 이미지에서의 위치를 계산하는데 사용됩니다
				var order = document.getElementById(currCategory).getAttribute(
						'data-order');

				// 지도에 표시되고 있는 마커를 제거합니다
				removeMarker();

				for (var i = 0; i < places.length; i++) {

					// 마커를 생성하고 지도에 표시합니다
					var marker = addMarker(new daum.maps.LatLng(
							places[i].latitude, places[i].longitude), order);

					// 마커와 검색결과 항목을 클릭 했을 때
					// 장소정보를 표출하도록 클릭 이벤트를 등록합니다
					(function(marker, place) {
						daum.maps.event.addListener(marker, 'click',
								function() {
									displayPlaceInfo(place);
								});
					})(marker, places[i]);
				}
			}

			// 마커를 생성하고 지도 위에 마커를 표시하는 함수입니다
			function addMarker(position, order) {
				var imageSrc = 'http://i1.daumcdn.net/localimg/localimages/07/mapapidoc/places_category.png', // 마커 이미지 url, 스프라이트 이미지를 씁니다
				imageSize = new daum.maps.Size(27, 28), // 마커 이미지의 크기
				imgOptions = {
					spriteSize : new daum.maps.Size(72, 208), // 스프라이트 이미지의 크기
					spriteOrigin : new daum.maps.Point(46, (order * 36)), // 스프라이트 이미지 중 사용할 영역의 좌상단 좌표
					offset : new daum.maps.Point(11, 28)
				// 마커 좌표에 일치시킬 이미지 내에서의 좌표
				}, markerImage = new daum.maps.MarkerImage(imageSrc, imageSize,
						imgOptions), marker = new daum.maps.Marker({
					position : position, // 마커의 위치
					image : markerImage
				});

				marker.setMap(map); // 지도 위에 마커를 표출합니다
				markers.push(marker); // 배열에 생성된 마커를 추가합니다

				return marker;
			}

			// 지도 위에 표시되고 있는 마커를 모두 제거합니다
			function removeMarker() {
				for (var i = 0; i < markers.length; i++) {
					markers[i].setMap(null);
				}
				markers = [];
			}

			// 클릭한 마커에 대한 장소 상세정보를 커스텀 오버레이로 표시하는 함수입니다
			function displayPlaceInfo(place) {
				var content =  '<div class="placeinfo">'
						 + '   <a class="title" href="' + place.placeUrl + '" target="_blank" title="' + place.title + '">'
						+ place.title + '</a>' ;

				if (place.newAddress) {
					content += '    <span title="' + place.newAddress + '">'
							+ place.newAddress
							+ '</span>'
							+ '  <span class="jibun" title="' + place.address + '">(지번 : '
							+ place.address + ')</span>';
				} else {
					content += '    <span title="' + place.address + '">'
							+ place.address + '</span>';
				}

				content += '    <span class="tel">' + place.phone + '</span>'
						+ '</div>' + '<div class="after"></div>';

				contentNode.innerHTML = content;
				placeOverlay.setPosition(new daum.maps.LatLng(place.latitude,
						place.longitude));
				placeOverlay.setMap(map);
			}

			// 각 카테고리에 클릭 이벤트를 등록합니다
			function addCategoryClickEvent() {
				var category = document.getElementById('category'), children = category.children;

				for (var i = 0; i < children.length; i++) {
					children[i].onclick = onClickCategory;
				}
			}

			// 카테고리를 클릭했을 때 호출되는 함수입니다
			function onClickCategory() {
				var id = this.id, className = this.className;

				placeOverlay.setMap(null);

				if (className === 'on') {
					currCategory = '';
					changeCategoryClass();
					removeMarker();
				} else {
					currCategory = id;
					changeCategoryClass(this);
					searchPlaces();
				}
			}

			// 클릭된 카테고리에만 클릭된 스타일을 적용하는 함수입니다
			function changeCategoryClass(el) {
				var category = document.getElementById('category'), children = category.children, i;

				for (i = 0; i < children.length; i++) {
					children[i].className = '';
				}

				if (el) {
					el.className = 'on';
				}
			}

			// 지도에 컨트롤을 추가해야 지도위에 표시됩니다
			// daum.maps.ControlPosition은 컨트롤이 표시될 위치를 정의하는데 TOPRIGHT는 오른쪽 위를 의미합니다
			map.addControl(mapTypeControl, daum.maps.ControlPosition.TOPRIGHT);

			// 지도 확대 축소를 제어할 수 있는  줌 컨트롤을 생성합니다
			var zoomControl = new daum.maps.ZoomControl();
			map.addControl(zoomControl, daum.maps.ControlPosition.RIGHT);
			var customOverlay=new daum.maps.CustomOverlay();
			
			
			var save_stadium_name;
			
			
			function sendStadium(){
				console.log(save_stadium_name);
				document.getElementById("stadiumName").value = save_stadium_name;
				document.getElementById("stadium_Name").value = save_stadium_name;
			}
			
			function init_map(addr_str,stadium_name) {
				customOverlay.setMap(null);
				
				geocoder
						.addr2coord(
								addr_str,
								function(status, result) {

									// 정상적으로 검색이 완료됐으면 
									if (status === daum.maps.services.Status.OK) {
										save_stadium_name = addr_str;
										var coords = new daum.maps.LatLng(
												result.addr[0].lat,
												result.addr[0].lng);

										map.panTo(coords);

										var marker = new daum.maps.Marker({
											position : coords
										});

										marker.setMap(map);
									
										var iwContent =  '<div class="customoverlay" id="one">' +
									     '  <a href="#" onclick="sendStadium()" target="_blank" data-toggle="modal" data-target=".bs-example-modal-lg" >' +
									    '    <span class="title">'+stadium_name+
									    '</span>' +
									     '  </a>'  + 
									    '</div>';
									  
									    iwRemoveable = true; 
									    customOverlay = new daum.maps.CustomOverlay({
									        map: map,
									        position: coords,
									        content: iwContent,
									        yAnchor: 0.3,
									        removable : iwRemoveable
									    });
									   
											
										//'<div style="padding:5px;">Hello World! <br><a href="http://map.daum.net/link/map/Hello World!,33.450701,126.570667" style="color:blue" target="_blank">큰지도보기</a> <a href="http://map.daum.net/link/to/Hello World!,33.450701,126.570667" style="color:blue" target="_blank">길찾기</a></div>',
										// 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
										// 인포윈도우를 생성합니다
										// removeable 속성을 ture 로 설정하면 인포윈도우를 닫을 수 있는 x버튼이 표시됩니다

									/* 	var infowindow = new daum.maps.InfoWindow(
												{
													position : coords,
													content : iwContent,
													removable : iwRemoveable
													

												}); */

										// 마커 위에 인포윈도우를 표시합니다. 두번째 파라미터인 marker를 넣어주지 않으면 지도 위에 표시됩니다
									
										console.log(customOverlay);

									}
								});
			}
		</script>

		<style>
.gmnoprint img {
	max-width: none;
}

.panel:hover {
	background-color: rgb(237, 245, 252);
}

.map {
	min-width: 300px;
	min-height: 470px;
	width: 100%;
	height: 100%;
}

img {
	max-width: 110%;
	height: auto;
}

.clearfix {
	clear: both;
}

.rowcolor {
	background-color: #CCCCCC;
}

.padall {
	padding: 10px;
}

.padbig {
	padding: 20px;
}

.icon {
	font-size: 23px;
	color: #197BB5;
}
</style>

		<!-- Real Estate Map Update - END -->

	</div>
	
<script src="/EA/assets/js/jquery.js"></script>
<script src="/EA/assets/js/bootstrap.min.js"></script>
<script type="text/javascript" src="/EA/assets/js/jquery.backstretch.min.js"></script>
<script>
    $('.backstretch').css('opacity', '0.7');

</script>
</body>




<div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header" >
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                <h4 class="modal-title" id="exampleModalLabel">경기장 등록</h4>
            </div>
            <form action=""  method="post">
                <div class="modal-body">

                        <div class="form-group">
                            <label for="id" class="control-label">경 기 장</label>
                            <input type="text" class="form-control" value="" id="stadium_Name" name="stadium_Name"  disabled>
                            <input type="hidden" id="stadiumName" name="stadiumName" value="">
                        </div>
                        <div class="form-group">
                            <label for="pass" class="control-label">소 속 팀</label>
                            <input type="text" class="form-control" id="teamNo" name="teamNo" >
                        </div>
                        <div class="form-group">
                            <label for="name" class="control-label">경 기 인 원</label>
                            <input class="form-control" id="applyPlayer" name="applyPlayer">
                        </div>
                        
                        <div class="form-group">
                            <label for="birth" class="control-label">시 작 시 간</label>
                            <input class="form-control" id="startTime" name="startTime">
                        </div>
                        
                        
                        <div class="form-group">
                            <label for="tel" class="control-label">종 료 시 간</label>
                            <input class="form-control" id="endTime" name="endTime">
                        </div>
                       



                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    <input type="reset" class="btn btn-default" value="다시 쓰기">
                    <input type="submit" class="btn btn-primary" value="신청 하기" >
                </div>
            </form>
        </div>
    </div>
</div>


</html>