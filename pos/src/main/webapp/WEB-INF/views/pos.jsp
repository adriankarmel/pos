<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta name="language" content="en" />   

         <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1">       
      
        <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
 		
        <style>
          body, html {               
                margin: 0;
                padding:0;
                font-family: 'Open Sans', sans-serif;       
            }   
           

.roundedBox{
  /*margin:30px auto;*/
  width: 100%;
  height: 100%;
  background: #fff;
  padding: 0 30px;
  box-sizing: border-box;
  border-radius: 5px;
  box-shadow: 0 0 15px rgba(0,0,0,.3);
  position: relative;
  overflow: auto;
  overflow-x:hidden;
}

.shoppingList{
  padding: 20px;
  height: 60vh;
  overflow: auto;
}
 
.priceTab{
  padding-right: 20px;
  padding-left: 20px;

  padding-top: 0px !important;
  margin-top: 15px;
  width: 100%;
  height:30vh;
}

.purchButton{
  width:100%;
  height:100%;
  color: white;
  letter-spacing: 2px;
  overflow: hidden;
  height:55px;
  white-space: normal;
  position: relative;
  text-transform: uppercase;
  -webkit-transition: all 0.3s ease;
          transition: all 0.3s ease;
}

        </style>
        <script type="text/javascript">       
            $(document).ready(function(){   
                var docHeight = $(window).height();
                var footerHeight = $('#footer').height();
                var footerTop = $('#footer').position().top + footerHeight;

                if (footerTop < docHeight) {
                    $('#footer').css('margin-top', 10 + (docHeight - footerTop) + 'px');
                }       
            });       
        </script>
    </head>
    <body>   

    
	<%@ include file="menu.jsp" %>
			<div class="container text-black-50">	   
       <div class="row" style="padding-left:10px;padding-right:10px;">
           <div class="col-lg-7">     
                <div class="form-group has-feedback">
                    <input type="text" class="form-control" placeholder="Search" id="search"/>
                    <i class="glyphicon glyphicon-search form-control-feedback"></i>
                </div>
            </div>       

            <div class="col-lg-5">
              <div class="roundedBox shoppingList">
                <div class="row">
                    <div class="col-lg-3 text-center">
                        <samp>Codigo</samp>
                    </div>
                    <div class="col-lg-3 text-center">
                        <samp>Detalle</samp>
                    </div>
                    <div class="col-lg-3 text-center">
                        <samp>Quantity</samp>
                    </div>
                    <div class="col-lg-3 text-center">
                        <samp>Price</samp>
                    </div>
                </div>
                <hr style="width:100%;height:1px;background-color:grey;" />
              </div>
             
              <div class="roundedBox priceTab">
                 <div class="row">
                    <div class="col-xs-8">
                        <div class="row">
                            <h4><strong>Subtotal</strong></h4>
                        </div>
                        <div class="row">
                            <h5>Tax<h5>
                        </div>
                        <div class="row">
                            <h5>item<h5>
                        </div>   
                    </div>
                    <div class="col-xs-4">
                        <div class="row">
                            <h4><strong>$1</strong></h4>
                        </div>
                        <div class="row">
                            <h5>$2</h5>
                        </div>
                        <div class="row">
                            <h5>10</h5>
                        </div>   
                    </div>                   
                 </div>
                 <div class="row">
                     <div class="purchButton">
                          <a href="#" class="btn btn-block btn-success">
                            Purchase <span class="glyphicon glyphicon glyphicon-shopping-cart"></span>
                          </a>                   
                     </div>
                 </div>
              </div>             
            </div>     
    </body>
</html>