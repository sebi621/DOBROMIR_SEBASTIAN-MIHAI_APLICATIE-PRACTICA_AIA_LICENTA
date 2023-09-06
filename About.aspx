<%@ Page Title="Despre" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="School_Tickets.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title"><%: Title %>.</h2>
        <!-- about section -->

  <section class="about_section layout_padding">
    <div class="container">
      <div class="row">
        <div class="col-md-6">
          <div class="detail-box">
            <div class="heading_container">
              <h2>DESPRE</h2>
                <h2>
                Sistemul de ticketing
              </h2>
            </div>
            <p>
              Sistemul de ticketing, cunoscut și sub denumirea de sistem de gestionare a tichetelor sau sistem de gestionare a cererilor, este o soluție software sau un proces utilizat pentru a gestiona și urmări cererile, întrebările, problemele sau sarcinile. Acest sistem este adesea folosit în domenii precum serviciul clienți, asistența tehnică, IT, gestionarea proiectelor și multe altele. Iată câteva aspecte cheie ale unui sistem de ticketing:

Crearea de tichete unde utilizatorii pot crea tichete sau cereri pentru a raporta probleme, pentru a solicita asistență sau pentru a urmări anumite sarcini. Aceste tichete pot fi introduse manual sau pot fi generate automat în funcție de anumite evenimente sau solicitări.

Prioritizare unde tichetele pot fi prioritizate în funcție de importanța și urgența lor. Acest lucru ajută la gestionarea resurselor și la asigurarea faptului că cererile critice sunt tratate în primul rând.

Atribuirea sarcinilor unde tichetele pot fi alocate membrilor echipei responsabili de rezolvarea lor. Aceasta asigură o distribuție eficientă a muncii și claritate în privința cine este responsabil pentru fiecare cerere.
            </p>
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

  <!-- end about section -->
    </main>
</asp:Content>
