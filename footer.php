<div id="footer">
  <div class="container">
    <div class="row">
      <div class="col-md-12">
        <?php
        include "config.php";

        $sql = "SELECT * FROM settings";

        $result = mysqli_query($conn, $sql) or die("Query Failed.");
        if (mysqli_num_rows($result) > 0) {
          while ($row = mysqli_fetch_assoc($result)) {
        ?>
            <div class="text-center">
              <a href="index.php"><img src="admin/images/<?php echo $row['logo'] ?>" height="70"></a>
            </div> <br>
            <span ><?php echo $row['footerdesc']; ?></span>
        <?php
          }
        }
        ?>
      </div>
    </div>
  </div>
</div>
</body>

</html>