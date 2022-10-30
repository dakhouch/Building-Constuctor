<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>


<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="icon" type="image/x-icon" href="inc/assets/newlogo.png" />
    <title>Détails du message</title>

    <!-- Custom fonts for this template-->
    <link href="inc/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="inc/css/style.css" rel="stylesheet">
    <link href="inc/css/profileStyle.css" rel="stylesheet">
    <link href="inc/css/myStyle.css" rel="stylesheet">

</head>
<body id="page-top">
    <div id="wrapper">
    
        <!-- Sidebar -->
        <c:import url="inc/sidebar.jsp"></c:import>


        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">
            
                <!-- Topbar -->
                <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">
                    <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                        <i class="fa fa-bars"></i>
                    </button>
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item no-arrow">
                            <a class="nav-link" href="logout" id="userDropdown" role="button"
                                aria-haspopup="true" aria-expanded="false">
                                <span class="mr-2 d-none d-lg-inline text-gray-600 small">Se déconnecter</span>
                                <i class="fas fa-sign-out-alt"></i>
                            </a>
                        </li>
                    </ul>
                </nav>
                
                <!-- Begin Page Content -->
                <div class="container-fluid">
                    <!-- Content Row -->
                    <div class="row">
                    	<div class="card-body">
                    		<div class="card shadow mb-4">
		                        <div class="card-header py-3">
		                            <h6 class="m-0 font-weight-bold text-purple">Les détails du message ${message.id}</h6>
		                        </div>
		                        <div class="card-body">
		                        	
									<a href="?supprimer=${message.id}" class="btn btn-danger btn-sm float-right">Supprimer le message</a>
									
                        			<table class="table table-borderless col-md-6 mx-auto">
                       					<tr>
                       						<td>ID du message:</td>
                       						<td>${message.id}</td>
                       					</tr>
                       					<tr>
                       						<td>Date de message:</td>
                       						<td>${message.dateCreation}</td>
                       					</tr>
                       					<tr>
                       						<td>Le contenu:</td>
                       						<td>${message.contenu}</td>
                       					</tr>
                       					<c:if test="${!empty message.reponse}">
                       						<tr>
	                       						<td>La réponse:</td>
	                       						<td>${message.reponse}</td>
	                       					</tr>
                       					</c:if>
                       					
									</table>
									
									<p>Vous pouvez également <a href="accueil#contact">nous contacter</a> si vous avez des questions.</p>
                        		</div>
                   			 </div>
						</div>
           			</div>
            	</div>
			</div>
            <!-- Footer -->
            <c:import url="/inc/includes/footer.jsp"></c:import>
        </div>
    </div>

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>
    
	<!-- Bootstrap core JavaScript-->
    <script src="inc/vendor/jquery/jquery.min.js"></script>
    <script src="inc/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="inc/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="inc/js/sb-admin-2.min.js"></script>

</body>
</html>