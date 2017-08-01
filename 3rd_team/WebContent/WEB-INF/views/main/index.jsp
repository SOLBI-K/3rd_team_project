<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DateCuration</title>
<link href="css/stylesheet.css" type="text/css" rel="stylesheet" />
<script type="text/javascript" src="js/jquery-1.12.0.js"></script>
<script type="text/javascript" src="js/jquery-migrate-1.2.1.js"></script> 
<style type="text/css">
#wrap{height: 1000px;}
#header{
    position: fixed; 
    top: 0px;
    background-color: #fff; 
    width: 100%; height:64px;
    z-index: 20000;
}
#logo{ width:168px; height:57px; }
        
#container{}
    #filter{
        width:100%; height: 40px; 
        position: fixed; top:64px;
        background-color: #e4caa5;
        box-shadow: 0 1px 5px #333;
        overflow: hidden;
        z-index: 20000;
    }
    #filters-list{margin-left: 80px; }
        .filters{
            float:left;
            height: 40px; line-height: 40px;
            border-right: 1px solid rgb(90, 26, 35);
        }
        .filters:nth-child(1){width:141px; background-image: url(images/filters_food.png)}
        .filters:nth-child(2){width:136px; background-image: url(images/filters_cafe.png)}
        .filters:nth-child(3){width:132px; background-image: url(images/filters_drink.png)}
        .filters:nth-child(4){width:182px; background-image: url(images/filters_park.png)}
        .filters:nth-child(5){width:232px; background-image: url(images/filters_course.png)}
        .filters:hover{cursor: pointer;}
   
    #search-form, .search-btn{
        position: fixed;
        top: 12px; 
        height:39px; line-height: 39px;
        z-index: 20000;
    }
    #search-form{
        left: 250px; width:300px; 
        padding-left: 2px;
    }
    #search-form > input{
        border: 2px solid #c83649;
        width:230px; height:39px;    
        padding-left: 5px;
    }
    .search-btn{
        left: 480px; width:38px;
        background-image: url(images/search_btn.png);
    }
    
    
    #content{
        width: 100%; height: 100%;
    }
        #map-component{ 
            padding-top: 104px;
            top:0px; left:0px;
            width: 100%; height: 100%; 
            background-color: #aaa;
            overflow: hidden;
            z-index: 1;
    }
        #list-component{
            overflow: scroll;
            position: fixed;
            min-width: 460px; height: 100%;
            top:0px; right:0;
            padding-top: 104px;
            box-shadow: -1px 3px 3px #333;
            z-index: 19999;
        }
        #list_close_icon{
            right:-200px; top: 104px;
            color: #c83649;
            z-index: 20000;
        }
    .list_header{
        width: 100%; background-color: #fff;
        padding: 0 5px;
    }
    .list_header:nth-child(1){ 
        height:40px; line-height: 40px;
        border-bottom: 1px solid #e4caa5;
    }
    .list_header:nth-child(2){ 
        height:30px; line-height:30px; 
        background-color: #e4caa5;
    }
    .list {
        height: 127px;
        padding: 15px;
        background-color: #fff;
        border-bottom: 1px solid #e4caa5;
    }
    .list:hover{background-color: #e4caa5;}
#footer{
    background-color: #ddd; 
    width: 100%; height:40px; 
    position: fixed; 
    bottom: 0px;}
</style>
<script type="text/javascript">
    $(document).ready(function(){
        $('#list_close_icon').toggle(function(){
            $('#list-component').css('right','-460px').css('transition-duration', '1s');
            $('#list_close_icon').text('>>');
        }, function(){
            $('#list-component').css('right','0px').css('transition-duration', '1s');
            $('#list_close_icon').text('<<');
        });
    })//ready
</script>
</head>
<body>
<div id="wrap">
    
<div id="header">
    <div id="logo"><a href="#"><img alt="쌍방로고" title="쌍방메인" src="/common/images/logo_168x60.png"/></a></div>
</div><!-- div#header -->
    
<div id="container">
    <div id="search-form">
    <input class="inputBox" type="text" placeholder="검색" />
    </div><a href="#"><span class="search-btn"></span></a>
    <div id="filter">
        <ul id="filters-list">
        <li class="filters"></li>
        <li class="filters"></li>
        <li class="filters"></li>
        <li class="filters"></li>
        <li class="filters"></li>
        </ul>
    </div><!--div#filter-->
    <div id="content">
        <div id="map-component">map</div>
        <a><span id="list_close_icon"><<</span></a>
        <div id="list-component">
            <div class="list_header">>검색결과 00건</div>
            <div class="list_header">식당-한식</div>
            <div class="list_container">
                <ul>
                    <li class="list"><a href='#'>01</a></li>
                    <li class="list"><a href='#'>02</a></li>
                    <li class="list"><a href='#'>03</a></li>
                    <li class="list"><a href='#'>04</a></li>
                    <li class="list"><a href='#'>05</a></li>
                    <li class="list"><a href='#'>01</a></li>
                    <li class="list"><a href='#'>02</a></li>
                    <li class="list"><a href='#'>03</a></li>
                    <li class="list"><a href='#'>04</a></li>
                    <li class="list"><a href='#'>05</a></li>
                </ul>
            </div>
        </div>
    </div><!-- div#content -->
</div><!-- div#container -->
    
<!--<div id="footer"></div>--><!-- div#footer -->
    
</div><!-- div#wrap -->
</body>
</html>
    