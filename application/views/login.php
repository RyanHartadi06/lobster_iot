<!DOCTYPE html>
<html lang="en">

<!-- Head -->
<?php $this->load->view("user/_partials/head.php") ?>

<body class="bg-primary">
    <div id="layoutAuthentication">
        <div id="layoutAuthentication_content">
            <main>
                <div class="container">
                    <div class="row justify-content-center">
                        <div class="col-lg-5">
                            <div class="card shadow-lg border-0 rounded-lg mt-5">
                                <div class="card-header justify-content-center">
                                    <h3 class="font-weight-bold my-4">Login</h3>
                                </div>
                                <div class="card-body">
                                    <div class="col">
                                        <?php echo $this->session->flashdata('message') ?>
                                    </div>
                                    <form method="post" autocomplete="off">
                                        <div class="form-group">
                                            <label class="small mb-1" for="inputEmail">Email</label>
                                            <input class="form-control py-4" id="email" name="email" type="email" placeholder="Enter Email" required />
                                        </div>
                                        <div class="form-group">
                                            <label class="small mb-1" for="inputPassword">Password</label>
                                            <input class="form-control py-4" id="password" name="password" type="password" placeholder="Enter password" required />
                                        </div>
                                        <div class="mt-4">
                                            <a href="<?= base_url('Login/Lupapass') ?>">
                                                Lupa Password? </a>
                                        </div>
                                        <div class="form-group d-flex align-items-center justify-content-between mt-4 mb-0">
                                            <button type="submit" class="btn btn-primary mx-auto">Login</button>
                                        </div>
                                    </form>
                                    <div class="mt-4">
                                        Tidak memilik akun? <br>
                                        <a href="<?= base_url('Login/Register') ?>">Register Sekarang</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </main>
        </div>
        <div id="layoutAuthentication_footer">
            <footer class="footer mt-auto footer-dark">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-12 text-md-center small">
                            <?= SITE_NAME ?> |
                            <script>
                                document.write(new Date().getFullYear());
                            </script>
                        </div>
                    </div>
                </div>
            </footer>
        </div>
    </div>
    </div>

    <!-- JS -->
    <?php $this->load->view("user/_partials/js.php") ?>

</body>

</html>