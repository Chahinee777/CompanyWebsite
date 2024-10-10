<?php require_once('config.php'); ?>
<?php 
if(isset($_SESSION['msg_status'])){
   $msg_status = $_SESSION['msg_status'];
   unset($_SESSION['msg_status']);
}
if($_SERVER['REQUEST_METHOD'] == "POST"){
   $data = '';
   foreach($_POST as $k => $v){
      if(!empty($data)) $data .= " , ";
      $data .= " `{$k}` = '{$v}' ";
   }
   $sql  = "INSERT INTO `messages` set {$data}";
   $save = $conn->query($sql);
   if($save){
      $msg_status = "success";
      foreach($_POST as $k => $v){
         unset($_POST[$k]);
      }
      $_SESSION['msg_status'] = $msg_status;
      header('location:'.$_SERVER['HTTP_REFERER']);
   }else{
      $msg_status = "failed";
      echo "<script>console.log('".$conn->error."')</script>";
      echo "<script>console.log('Query','".$sql."')</script>";
   }
}

?>
 <!DOCTYPE html>
<html lang="en" class="" style="height: auto;">
<?php require_once('inc/header.php') ?>
<style>
   #about h2 {
      color: #2b2b2b;
   }

   #nav-wrap {
      display: flex;
      justify-content: center; 
      align-items: center; 
   }

   .logo img {
      max-height: 40px; 
      margin-right: 20px; 
   }

   #nav {
      list-style: none;
      padding: 0;
      margin: 0;
      display: flex;
   }

   #nav li {
      margin: 0 10px; 
   }

   #nav a {
      text-decoration: none;
      color: #fff;
   }
</style>
<body>

  
   <header id="home" style="background: #161415 url(<?php echo validate_image($_settings->info('banner')) ?>) no-repeat top center;">

      <nav id="nav-wrap">

         
         <div class="logo">
            <img src="uploads/Logo-Alinaous.png" alt="Logo">
         </div>

         <ul id="nav" class="nav">
            <li class="current"><a class="smoothscroll" href="#home">Accueil</a></li>
            <li><a class="smoothscroll" href="#about">À propos</a></li>
            <li><a class="smoothscroll" href="#resume">Services</a></li>
            <li><a class="smoothscroll" href="#clients">Clients</a></li>
            <li><a class="smoothscroll" href="#testimonials">Témoignages</a></li>
            <li><a class="smoothscroll" href="#contact_us">Contactez-nous</a></li>
         </ul> 
      </nav> 
<?php 
$u_qry = $conn->query("SELECT * FROM users where id = 1");
foreach($u_qry->fetch_array() as $k => $v){
  if(!is_numeric($k)){
    $user[$k] = $v;
  }
}
$c_qry = $conn->query("SELECT * FROM contacts");
while($row = $c_qry->fetch_assoc()){
    $contact[$row['meta_field']] = $row['meta_value'];
}
?>
      <div class="row banner">
         <div class="banner-text">
            <h1 class="responsive-headline"><?php echo $_settings->info('name') ?></h1>
            <h3><?php echo stripslashes($_settings->info('welcome_message')) ?></h3>
            <hr />
            <ul class="social">
               <li><a target="_blank" href="<?php echo $contact['facebook'] ?>"><i class="fa fa-facebook"></i></a></li>
               <li><a target="_blank" href="<?php echo $contact['twitter'] ?>"><i class="fa fa-twitter"></i></a></li>
               <li><a target="_blank" href="mailto:<?php echo $contact['email'] ?>"><i class="fa fa-google-plus"></i></a></li>
               <li><a target="_blank" href="<?php echo $contact['linkin'] ?>"><i class="fa fa-linkedin"></i></a></li>
            </ul>
         </div>
      </div>

      <p class="scrolldown">
         <a class="smoothscroll" href="#about"><i class="icon-down-circle"></i></a>
      </p>

   </header>



   <section id="about" style="background:#f7f7f7 !important">

      <div class="row">

         <div class="three columns">

            <img class="profile-pic"  src="<?php echo validate_image($_settings->info('logo')) ?>" alt="" />

         </div>

         <div class="nine columns main-col">

            <h2>Qui sommes-nous</h2>
            <div id="about_me"><?php include "about.html"; ?></div>

            <div class="row">

               <div class="columns contact-details">

                

               </div>

               <div class="columns download">
                  <p>
                  </p>
               </div>

            </div>

         </div> 

      </div>

   </section>


  
   <section id="resume">
      <div class="row education">

         <div class="three columns header-col">
            <h1><span>Services</span></h1>
         </div>

         <div class="nine columns main-col">
          <?php 
          $e_qry = $conn->query("SELECT * FROM services order by title asc");
          while($row = $e_qry->fetch_assoc()):
          ?>
            <div class="row item">

               <div class="twelve columns">

                  <h3><?php echo $row['title'] ?></h3>
                  <hr>
                  <img src="<?php echo validate_image($row['file_path']) ?>" alt="" class="img-fluid service-img-view">
                  <p>
                  <?php echo stripslashes(html_entity_decode($row['description'])) ?>
                  </p>

               </div>

            </div> 
          <?php endwhile; ?>
           

         </div> 

      </div> 
   </section>
   <section id="clients" style="padding-top:5rem; background: #eaeaea;">

      <div class="row">

         <div class="twelve columns collapsed">

            <h1>Entreprises/Sociétés qui nous ont fait confiance</h1>

            <div id="portfolio-wrapper" class="bgrid-quarters s-bgrid-thirds cf">
               <?php 
                  $p_qry = $conn->query("SELECT * FROM clients order by company_name asc");
                  
                  while($row = $p_qry->fetch_assoc()):
                  ?>
                 <div class="columns portfolio-item">
                    <div class="item-wrap">

                       <a href="#modal-<?php echo $row['id'] ?>" title="">
                          <img alt="" src="<?php echo validate_image($row['file_path']) ?>">
                          <div class="overlay">
                             <div class="portfolio-item-meta">
                            <h5 class="truncate-1"><?php echo $row['company_name'] ?></h5>
                         </div>
                          </div>
                          <div class="link-icon"><i class="fa fa-eye"></i></div>
                       </a>
                    </div>
                </div> 
              <?php endwhile; ?>

            </div> 

         </div> 

          <?php 
              $p_qry = $conn->query("SELECT * FROM clients ");
              while($row = $p_qry->fetch_assoc()):
            ?>


         <div id="modal-<?php echo $row['id'] ?>" class="popup-modal mfp-hide">

          <img class="img-fluid client-logo-modal" src="<?php echo validate_image($row['file_path']) ?>" alt="" />

          <div class="description-box">
            <h4><?php echo $row['company_name'] ?></h4>
            <p><?php echo stripslashes(html_entity_decode($row['description'])) ?></p>
          </div>

            <div class="link-box">
             <a class="popup-modal-dismiss">Fermer</a>
            </div>

        </div>

      <?php endwhile; ?>


      </div> 

   </section> 


   <section id="testimonials">
      <div class="filter-div"></div>
      <div class="text-container">

         <div class="row">

            <div class="two columns header-col">

               <h1><span>Témoignages Clients</span></h1>

            </div>

            <div class="ten columns flex-container">

               <div class="flexslider">

                  <ul class="slides" id='testimonial-quotes'>

                     <?php 
                     $qry = $conn->query("SELECT * FROM testimonials order by RAND() ");
                     while($row=$qry->fetch_assoc()):
                        $row['message'] = html_entity_decode($row['message']);
                     ?>
                     <li>
                        <blockquote>
                           <p><?php echo $row['message'] ?>
                           </p>
                           <div style="display:flex;align-items:center;">
                              <img src="<?php echo validate_image($row['file_path']) ?>" class="testimonials-avatar" alt="">
                              <cite><?php echo $row['message_from'] ?></cite>
                           </div>
                        </blockquote>
                     </li> 
                     <?php endwhile; ?>


                  </ul>

               </div> 

            </div> 

         </div> 

       </div>  

   </section> 
   <section id="contact_us">
      <div class="d-flex">
         <form action="" id="" style="width:100%" method="POST">
         <div class="col-lg-12">
            <h4 class="text-center text-light">Contactez-nous</h4>
               <div class="d-flex">
                  <div class="col-lg-6">
                     <div class="form-group">
                        <label for="full_name" class="control-label text-light">Nom Complet</label>
                        <input type="text" class="form-control" id="full_name" name="full_name" required value="<?php echo isset($_POST['full_name']) ? $_POST['full_name'] : "" ?>">
                     </div>
                     <div class="form-group">
                        <label for="email" class="control-label text-light">Email</label>
                        <input type="email" class="form-control" id="email" name="email" required value="<?php echo isset($_POST['email']) ? $_POST['email'] : "" ?>">
                     </div>
                     <div class="form-group">
                        <label for="contact_no" class="control-label text-light">Contact</label>
                        <input type="text" class="form-control" id="contact_no" name="contact" required value="<?php echo isset($_POST['contact']) ? $_POST['contact'] : "" ?>">
                     </div>
                     <div class="form-group">
                        <label for="subject" class="control-label text-light">Sujet</label>
                        <input type="text" class="form-control" id="subject" name="subject" required value="<?php echo isset($_POST['subject']) ? $_POST['subject'] : "" ?>">
                     </div>
                  </div>
                  <div class="col-lg-6">
                     <div class="form-group">
                        <label for="message" class="control-label text-light">Message</label>
                        <textarea name="message" id="message" cols="30" rows="16" class="form-control" required><?php echo isset($_POST['message']) ? $_POST['message'] : "" ?></textarea>
                     </div>
                  </div>
               </div>
               <div class='text-center'>
                  <?php if(isset($msg_status) && $msg_status =='success'): ?>
                     <span class="text-success">Message envoyé avec succès.</span>
                  <?php elseif(isset($msg_status) && $msg_status =='failed'): ?>
                     <span class="text-success">Échec de l'envoi du message.</span>
                     <?php endif; ?>
               </div>
               <center>
                  <button class="btn btn-primary">Envoyer un Message</button>
               </center>
               <div>
                  <h2 class="text-light">Coordonnées de Contact</h2>
                  <p class="address">
                     <span><?php echo $contact['address'] ?></span><br>
                     <span><?php echo $contact['mobile'] ?></span><br>
                     <span><?php echo $contact['email'] ?></span>
                  </p>
               </div>
            </div>
         </form>
      </div>
   </section>
      <?php require_once('inc/footer.php') ?>
  </body>
</html>
