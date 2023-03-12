<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="deneme1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <head>

    <title>İSU İletişim Formu Örneği | İstinye Üniversitesi</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="/ornek-proje-calismasi/css/style.css">
</head>
<body>
    <section class="ftco-section">
        <div class="container">
            <div class="row justify-content-center" style="background-color:#0670AB;margin:20px 0px;padding:20px 0px;">
                <div class="col-md-6 text-center">
                    <div style="margin:5px;padding:5px;"><img src="/ornek-proje-calismasi/images/logo.png" /></div>
                    <hr style="color: #fff; background: #fff;">
                    <h2 class="heading-section" style="color:#fff;">İSU İletişim Formu Örneği</h2>
                </div>
            </div>
            <div class="row justify-content-center">
                <div class="col-md-12">
                    <div class="wrapper">
                        <div class="row">
                            <div class="col-md-3">
                                <div class="dbox w-100 text-center">
                                    <div class="text">
                                        <p><span style="font-weight:bold;">Adres : </span> İstinye Üniversitesi Topkapı Kampüsü, Maltepe Mah., Teyyareci Sami Sk., No.3 Zeytinburnu, İstanbul, 34010</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="dbox w-100 text-center">
                                    <div class="text">
                                        <p><span style="font-weight:bold;">Telefon : </span><a href="tel:08502836000">0850 283 60 00</a></p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="dbox w-100 text-center">
                                    <div class="text">
                                        <p><span style="font-weight:bold;">Email : </span><a href="info@istinye.edu.tr">info@istinye.edu.tr</a></p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="dbox w-100 text-center">
                                    <div class="text">
                                        <p><span style="font-weight:bold;">Website : </span><a href="https://www.istinye.edu.tr/tr">istinye.edu.tr</a></p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-7">
                                <div class="contact-wrap w-100">
                                    <h3 class="mb-4">İletişim Formu</h3>
                                    <div id="form-message-warning" class="mb-4"></div>
                                    <div id="form-message-success" class="mb-4"> Mesajınız iletilmiştir. Teşekkürler! </div>
                                    <form method="POST" id="contactForm" name="contactForm" class="contactForm">
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group"><label class="label" for="name">Ad Soyad</label><input type="text" class="form-control" name="name" id="name" runat="server" placeholder="Ad Soyad">
                                                <asp:RequiredFieldValidator ErrorMessage="Lütfen Ad Soyad giriniz" ControlToValidate="name" ForeColor="Red" runat="server" />
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group"><label class="label" for="email">E-Posta Adresi</label><input type="email" class="form-control" name="email" id="email" runat="server" placeholder="E-Posta Adresi"></div>
                                                <asp:RequiredFieldValidator ErrorMessage="Lütfen E-Posta Adresi giriniz" ControlToValidate="email" ForeColor="Red" runat="server" />
                                            </div>
                                            <div class="col-md-12">
                                                <div class="form-group"><label class="label" for="subject">Konu</label><input type="text" class="form-control" name="subject" id="subject" runat="server" placeholder="Konu"></div>
                                                <asp:RequiredFieldValidator ErrorMessage="Lütfen Konu giriniz" ControlToValidate="subject" ForeColor="Red" runat="server" />
                                            </div>
                                            <div class="col-md-12">
                                                <div class="form-group"><label class="label" for="#">Mesaj</label><textarea name="message" class="form-control" id="message" cols="30" rows="4" runat="server" placeholder="Mesaj"></textarea></div>
                                                <asp:RequiredFieldValidator ErrorMessage="Lütfen Mesaj giriniz" ControlToValidate="message" ForeColor="Red" runat="server" />
                                            </div>
                                            <div class="col-md-12">
                                                <div class="form-group"><input type="submit" value="Gönder" class="btn btn-primary" runat="server" onserverclick="btn"></div>

                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <div class="col-md-5 d-flex align-items-stretch">
                                <div class="info-wrap w-100 p-5 img" style="background-image: url(/ornek-proje-calismasi/images/img.jpg);"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row justify-content-center" style="background-color:#0670AB;margin:20px 0px;padding:20px 0px;">
                <div class="col-md-6 text-center">
                    <div style=""><img src="/ornek-proje-calismasi/images/logo.png" /></div>
                </div>
            </div>
        </div>
    </section>
</body>
        </div>
    </form>
</body>
</html>