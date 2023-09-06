<%@ Page Title="Acasa" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="School_Tickets._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <!-- about section -->

  <section class="about_section layout_padding">
    <div class="container">
      <div class="row">
        <div class="col-md-6">
          <div class="detail-box">
            <div class="heading_container">
              <h2>
              Ce este sistemul de ticketing?
              </h2>
            </div>
            <p>
              Sistemul de ticketing, cunoscut și sub denumirea de sistem de gestionare a tichetelor sau sistem de gestionare a cererilor, este o soluție software sau un proces utilizat pentru a gestiona și urmări cererile, întrebările, problemele sau sarcinile. 
            </p>
            <a runat="server" href="~/About">
              Citește mai multe
            </a>
          </div>
        </div>
        <div class="col-md-6">
          <div class="img-box">
            <img src="images/about-img.jpg" alt="">
          </div>
        </div>
      </div>
    </div>
  </section>
</asp:Content>
