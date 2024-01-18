<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <!-- Mettez ici vos balises head -->
</head>
<body>

            <div class="card border-danger custom-card-style">
    <div class="card-body">
  <div class="container">
    <div class="form-container">
     <h1 class="mb-0" style="color:white;">
    <img src="/images/logo8.png" alt="Logo" class="me-3">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
    Edit-Blog
</h1>

<form action="${pageContext.request.contextPath}/editfeedback/${feedback.id}" method="post">  
    

    <div class="form-group row">
     

                    <div class="m-3">
                             <input type="hidden" name="id" value="${feedback.id}" />
                    
     <div class="form-group row">
            
                <label class="col-4 col-form-label"style="color:#E0115F;font-weight: bold;font-size:18px;">Name: </label>
                 <div class="col-md-10">
               
                <input type="text" name="name" class="form-control white-placeholder" placeholder="Name:"value="${feedback.name}" />
                </div>
            </div>
       <div class="form-group row">
            
                <label class="col-4 col-form-label"style="color:#E0115F;font-weight: bold;font-size:18px;">Image URL: </label>
                 <div class="col-md-10">
               
                <input type="text" name="image" class="form-control white-placeholder" placeholder="image" value="${feedback.image}"/>
                </div>
            </div>
      <div class="form-group row">
            
                <label class="col-4 col-form-label"style="color:#E0115F;font-weight: bold;font-size:18px;">Profession: </label>
                 <div class="col-md-10">
               
                <input type="text" name="profession" class="form-control white-placeholder" placeholder="Profession"value="${feedback.profession}" />
                </div>
            </div>
         <div class="form-group row">
            
                <label class="col-4 col-form-label"style="color:#E0115F;font-weight: bold;font-size:18px;">Comment: </label>
                 <div class="col-md-10">
               
<input type="text" name="text" class="form-control white-placeholder" placeholder="Comment"value="${feedback.text}" />
                </div>
            </div>
           <div class="form-group row">
    <label class="col-4 col-form-label" style="color:#E0115F;font-weight: bold;font-size:18px;">Blog Id: </label>
    <div class="col-md-10">
        <input type="text" name="blogId" class="form-control white-placeholder" placeholder="BlogId" readonly value="${feedback.blogId}" />
    </div>
</div>

        <button type="submit"style="width: 130px; height: 50px; border-color: #E0115F;font-size:15px; font-weight: bold; color: black; background-color: #E0115F; border-radius: 20px;">Add Comment</button>
    </form>

    <!-- Autres contenus de votre page -->

</body>
</html>
 <style>
   body {
    background-image: url('https://img.freepik.com/photos-gratuite/vue-dessus-espace-travail-ordinateur-portable-ordinateur-portable_23-2148430831.jpg?w=740&t=st=1705102807~exp=1705103407~hmac=83fb24dc494c9af088dff294a57412afdaf58d3c097deeaaa79ecdb75c54cdef');
    background-size: cover;
    background-repeat: no-repeat;
    background-position: center center;
    height: 100vh; /* Cela assure que l'image de fond couvre toute la hauteur de l'écran */
    margin: 0;
    display: flex;
    justify-content: center;
    align-items: center;
    /* Ajoutez d'autres styles au besoin */
}
.white-placeholder::placeholder {
        color: white;
    }



        body::before {
            content: "";
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(71, 71, 71, 0.1); /* Adjust the color and opacity as needed */
        }


    

   /*  .container {
        margin-top: 100px; /* Adjust the margin-top to center the form vertically */
    } */

    .page-title {
        text-align: center;
        font-weight: bold;
        margin-bottom: 40px;
        color: white;
    }

    .red-border {
        border: 2px solid #E0115F;
    }

    .white-text {
        color: white;
    }

    .custom-card-style {
        width: 60% !important;
        background-color: rgba(71, 71, 71, 0.8);
        !important;
        margin: auto !important;
        margin-bottom: 50px !important;
    }

   

  .card {
    border: 5px solid #E0115F; /* Ajoutez cette ligne pour la bordure orange de la carte */
    /* Ajoutez d'autres styles au besoin */
}

.card.border-danger.custom-card-style {
    width: 50% !important;
    height: 85% !important;
    background: rgba(71, 71, 71, 0.8);
    margin: auto;
    margin-bottom: 50px;
    padding: 25px;
    position: relative;
    top: 2%;
    border: 5px solid #E0115F !important; /* Remplacez 'orange' par '#E0115F' pour la couleur rose */
}




    .form-group {
        margin-bottom: 8px;
    }

    label {
        font: 500 14px Roboto;
        color: black;
        
        
    }

input {
    background: rgba(255, 255, 255, 0.15);
    width: 100%;
    height: 40px;
    padding: 8px;
    margin: 5px 0;
    border: 1px solid #E0115F; /* Couleur initiale de la bordure */
    border-radius: 3px;
    outline: none;
    color: #FFF;
    font-size: 20px;
    transition: border-color 0.3s; /* Transition pour un effet fluide */
}

input:focus {
    border: 2px solid #E0115F; /* Couleur de la bordure lorsque l'input est en focus */
}



/* Le reste du code CSS reste inchangé */


.btn-primary {
    background: linear-gradient(-45deg, #E0115F, #E0115F);
    padding: 10px 20px;
    border: none;
    border-radius: 21px;
    outline: none;
    overflow: hidden;
    position: relative;
    bottom: 10px;
    color: #FFF;
    font-size: 18px;
    cursor: pointer;
    &:hover:before {
        left: 110%;
        transition: 0.3s;
    }

    &:before {
        content: '';
        background: rgba(255, 255, 255, 0.3);
        height: 100%;
        width: 65px;
        position: absolute;
        top: 0;
        left: -100%;
        transform: skew(-45deg);
        transition: 0s;
    }
}


    
</style>