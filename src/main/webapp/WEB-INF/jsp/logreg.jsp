<%@ page language="java" contentType="text/html; charset=ISO-8859-1"   pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style type="text/css">
.modal-header, .modal-body, .modal-footer{
	padding: 25px;
}
.modal-footer{
	text-align: center;
}
#signup-modal-content, #forgot-password-modal-content{
	display: none;
}
		
/** validation */
		
input.parsley-error		{    
    border-color:#843534;
    box-shadow: none;
}
input.parsley-error:focus{    
    border-color:#843534;
    box-shadow:inset 0 1px 1px rgba(0,0,0,.075),0 0 6px #ce8483
}
.parsley-errors-list.filled {
    opacity: 1;
    color: #a94442;
    display: none;
}
</style>
<div id="login-signup-modal" class="modal fade" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content" id="login-modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title"><span class="glyphicon glyphicon-lock"></span> Login Now!</h4>
            </div>
            <div class="modal-body">
                <form method="post" id="login-form" role="form" action="/login">
                    <div class="form-group">
                        <div class="input-group">
                            <div class="input-group-addon"><span class="glyphicon glyphicon-envelope"></span></div>
                            <input name="email" id="email" type="email" class="form-control input-lg" placeholder="Enter Email" required data-parsley-type="email" >
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <div class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></div>
                            <input name="password" id="login-password" type="password" class="form-control input-lg" placeholder="Enter Password" required data-parsley-length="[6, 10]" data-parsley-trigger="keyup">
                        </div>
                    </div>
                   <!-- <div class="checkbox">
                        <label><input type="checkbox" value="" checked>Remember me</label>
                    </div>-->
                    <button type="submit" class="btn btn-success btn-block btn-lg">LOGIN</button>
                </form>
            </div>
            <div class="modal-footer">
                <p>
                    <a id="FPModal" href="javascript:void(0)">Forgot Password?</a> | 
                    <a id="signupModal" href="javascript:void(0)">Register Here!</a>
                </p>
            </div>
        </div>
        <div class="modal-content" id="signup-modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title"><span class="glyphicon glyphicon-lock"></span> Signup Now!</h4>
            </div>
            <div class="modal-body">
                <form method="post" id="Signin-Form" role="form">
                    <div class="form-group">
                        <div class="input-group">
                            <div class="input-group-addon"><span class="glyphicon glyphicon-envelope"></span></div>
                            <input name="email" id="email" type="email" class="form-control input-lg" placeholder="Enter Email" required data-parsley-type="email">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <div class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></div>
                            <input name="password" id="passwd" type="password" class="form-control input-lg" placeholder="Enter Password" required data-parsley-length="[6, 10]" data-parsley-trigger="keyup">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <div class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></div>
                            <input name="password" id="confirm-passwd" type="password" class="form-control input-lg" placeholder="Retype Password" required data-parsley-equalto="#passwd" data-parsley-trigger="keyup">
                        </div>
                    </div>
                    <button type="submit" class="btn btn-success btn-block btn-lg">CREATE ACCOUNT!</button>
                </form>
            </div>
            <div class="modal-footer">
                <p>Already a Member ? <a id="loginModal" href="javascript:void(0)">Login Here!</a></p>
            </div>
        </div>
        <div class="modal-content" id="forgot-password-modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title"><span class="glyphicon glyphicon-lock"></span> Recover Password!</h4>
            </div>
            <div class="modal-body">
                <form method="post" id="Forgot-Password-Form" role="form">
                    <div class="form-group">
                        <div class="input-group">
                            <div class="input-group-addon"><span class="glyphicon glyphicon-envelope"></span></div>
                            <input name="email" id="email" type="email" class="form-control input-lg" placeholder="Enter Email" required data-parsley-type="email">
                        </div>
                    </div>
                    <button type="submit" class="btn btn-success btn-block btn-lg">
                        <span class="glyphicon glyphicon-send"></span> SUBMIT
                    </button>
                </form>
            </div>
            <div class="modal-footer">
                <p>Remember Password ? <a id="loginModal1" href="javascript:void(0)">Login Here!</a></p>
            </div>
        </div>
    </div>
</div>
<script src="<c:url value="/resources/js/jquery.js"/>"></script>
<script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script> 
<script src="<c:url value="/resources/js/parsley.min.js"/>"></script>
<script src="<c:url value="/resources/js/modal.js"/>"></script>