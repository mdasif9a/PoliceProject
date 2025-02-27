﻿<%@ Page Title="BETTIAH POLICE - Home" Language="C#" MasterPageFile="~/PoliceProject.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="PoliceProject.Default" Theme="Blue" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .swiper-container {
            overflow: hidden;
            position: relative;
            height: 400px;
        }

        #criminalslider, #achivementslider {
            height: 500px;
        }

        #imagegallery {
            height: 300px;
        }

        .swiper-slide {
            text-align: center;
            border: 1px solid #000;
        }

            .swiper-slide img {
                width: 100%;
                height: 300px;
                object-fit: cover;
                border-radius: 0px;
            }

        .description {
            margin-top: 10px;
            font-size: 16px;
            color: #EEE;
            background-color: #808080;
            height: 100%;
        }

        #criminalslider .swiper-slide img {
            width: 100%;
            height: 400px;
            object-fit: cover;
            border-radius: 0px;
        }
    </style>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="container my-2 p-0">
        <div class="row g-3">
            <div class="col-md-9">
                <div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel">
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <img src="/Images/slider2.jpeg" class="d-block w-100" alt="...">
                        </div>
                        <div class="carousel-item">
                            <img src="/Images/slider3.jpg" class="d-block w-100" alt="...">
                        </div>
                        <div class="carousel-item">
                            <img src="/Images/slider4.jpeg" class="d-block w-100" alt="...">
                        </div>
                        <div class="carousel-item">
                            <img src="/Images/slider5.jpg" class="d-block w-100" alt="...">
                        </div>
                        <div class="carousel-item">
                            <img src="/Images/slider6.jpeg" class="d-block w-100" alt="...">
                        </div>
                        <div class="carousel-item">
                            <img src="/Images/slider7.jpeg" class="d-block w-100" alt="...">
                        </div>
                        <div class="carousel-item">
                            <img src="/Images/slider1.jpg" class="d-block w-100" alt="...">
                        </div>
                    </div>
                    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Previous</span>
                    </button>
                    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Next</span>
                    </button>
                </div>
            </div>

            <div class="col-md-3">
                <h4 class="sheader"><%= Resources.Resources.titilepress %></h4>
                <marquee class="press-release-container" scrollamount="2" behavior="scroll" direction="up" onmouseover="this.stop();" onmouseout="this.start();">
                    <ul class="press-list">
                        <li class="press-item">
                            <a href="#">बेतिया पुलिस विभाग ने इस महीने अवैध शराब के खिलाफ बड़े पैमाने पर छापेमारी की।</a>
                        </li>
                        <li class="press-item">
                            <a href="#">बेतिया पुलिस विभाग ने नई सुरक्षा व्यवस्था लागू की, जिससे सड़क दुर्घटनाओं में कमी आई है।</a>
                        </li>
                        <li class="press-item">
                            <a href="#">बेतिया पुलिस ने लापता बच्चों को ढूंढने के लिए विशेष अभियान शुरू किया।</a>
                        </li>
                        <li class="press-item">
                            <a href="#">बेतिया पुलिस विभाग ने साइबर अपराधों के खिलाफ जागरूकता अभियान चलाया।</a>
                        </li>
                        <li class="press-item">
                            <a href="#">बेतिया पुलिस ने त्योहारों के दौरान सुरक्षा के लिए अतिरिक्त बल तैनात किए।</a>
                        </li>
                        <li class="press-item">
                            <a href="#">महिलाओं की सुरक्षा को लेकर बेतिया पुलिस ने विशेष हेल्पलाइन शुरू की।</a>
                        </li>
                        <li class="press-item">
                            <a href="#">बेतिया पुलिस ने पर्यावरण संरक्षण के लिए हरित पट्टी अभियान में हिस्सा लिया।</a>
                        </li>

                    </ul>
                </marquee>
            </div>



        </div>
    </section>

    <section class="container my-2 p-0">
        <div class="row g-3">

            <div class="col-md-9">
                <h4 class="sheader"><%= Resources.Resources.titleservices %></h4>
                <div class="row">
                    <div class="col-md-4 my-2">
                        <div class="card service-card text-center">
                            <div class="card-body">
                                <div class="service-icon">
                                    <i class="fa fa-building"></i>
                                </div>
                                <h5 class="card-title"><%= Resources.Resources.servicepolice %></h5>
                                <a href="#" class="btn btn-sm btn-primary">Learn More</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 my-2">
                        <div class="card service-card text-center">
                            <div class="card-body">
                                <div class="service-icon">
                                    <i class="fa fa-info-circle"></i>
                                </div>
                                <h5 class="card-title"><%= Resources.Resources.servicerti %></h5>
                                <a href="#" class="btn btn-sm btn-primary">Learn More</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 my-2">
                        <div class="card service-card text-center">
                            <div class="card-body">
                                <div class="service-icon">
                                    <i class="fa fa-file-alt"></i>
                                </div>
                                <h5 class="card-title"><%= Resources.Resources.servicecomplain %></h5>
                                <a href="#" class="btn btn-sm btn-primary">Learn More</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 my-2">
                        <div class="card service-card text-center">
                            <div class="card-body">
                                <div class="service-icon">
                                    <i class="fa fa-user-check"></i>
                                </div>
                                <h5 class="card-title"><%= Resources.Resources.servicecharacter %></h5>
                                <a href="#" class="btn btn-sm btn-primary">Learn More</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 my-2">
                        <div class="card service-card text-center">
                            <div class="card-body">
                                <div class="service-icon">
                                    <i class="fa fa-passport"></i>
                                </div>
                                <h5 class="card-title"><%= Resources.Resources.servicepassport %></h5>
                                <a href="#" class="btn btn-sm btn-primary">Learn More</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 my-2">
                        <div class="card service-card text-center">
                            <div class="card-body">
                                <div class="service-icon">
                                    <i class="fa fa-comments"></i>
                                </div>
                                <h5 class="card-title"><%= Resources.Resources.servicefeedback %></h5>
                                <a href="#" class="btn btn-sm btn-primary">Learn More</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-3">
                <h4 class="sheader"><%= Resources.Resources.titleimplinks %></h4>
                <div class="important-links">
                    <i class="fa fa-sign-in-alt"></i>
                    <a target="blank" href="/login.aspx"><%= Resources.Resources.implinkofficiallogin %></a>
                </div>
                <div class="important-links">
                    <i class="fa fa-info-circle"></i>
                    <a target="blank" href="https://biharpolicedg.bihar.gov.in/"><%= Resources.Resources.implinkdarpan %></a>
                </div>
                <div class="important-links">
                    <i class="fa fa-map-marker-alt"></i>
                    <a target="blank" href="https://westchamparan.nic.in/police/"><%= Resources.Resources.implinkjamuidistrict %></a>
                </div>
                <div class="important-links">
                    <i class="fa fa-map-marker-alt"></i>
                    <a target="blank" href="https://police.bihar.gov.in/"><%= Resources.Resources.implinkbiharpolice %></a>
                </div>
                <div class="important-links">
                    <i class="fa fa-upload"></i>
                    <a target="blank" href="https://scrb.bihar.gov.in/Admin/login.aspx"><%= Resources.Resources.implinkfirupload %></a>
                </div>
                <div class="important-links">
                    <i class="fa fa-shield-alt"></i>
                    <a target="blank" href="https://cybersafe.gov.in/Cybersafe/index.html"><%= Resources.Resources.implinkcybersafe %></a>
                </div>
                <div class="important-links">
                    <i class="fa fa-shield-alt"></i>
                    <a target="blank" href="https://cybercrime.gov.in/"><%= Resources.Resources.implinknationalcybercrime %></a>
                </div>
                <div class="important-links">
                    <i class="fa fa-child"></i>
                    <a target="blank" href="https://trackthemissingchild.gov.in/trackchild/index.php"><%= Resources.Resources.implinkmissingchild %></a>
                </div>
                <div class="important-links">
                    <i class="fa fa-tachometer-alt"></i>
                    <a target="blank" href="http://www.dashboard.bihar.gov.in/"><%= Resources.Resources.implinkedashboard %></a>
                </div>
                <div class="important-links">
                    <i class="fa fa-bus"></i>
                    <a target="blank" href="https://pgportal.gov.in/Signin"><%= Resources.Resources.implinkpgportal %></a>
                </div>
                <div class="important-links">
                    <i class="fa fa-id-card"></i>
                    <a target="blank" href="https://portal1.passportindia.gov.in/AppOnlineProject/welcomeLink"><%= Resources.Resources.implinkpassportseva %></a>
                </div>
            </div>

        </div>
    </section>

    <section class="container my-2 p-0">
        <div class="row g-3">

            <div class="col-md-9">
                <h4 class="sheader"><%= Resources.Resources.titlemostwanted %></h4>

                <div id="criminalslider" class="swiper-container">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">
                            <img src="Images/criminal1.jpeg" />
                            <div class="description">
                                Ramesh Tuddu alias Tetu Tuddu
                                <br />
                                S/O- Matru Tuddu, Address- Buddhighat, Police Station- Katoriya, District- Banka
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <img src="Images/criminal2.jpeg" />
                            <div class="description">
                                PARVIN YADAV<br />
                                S/O JALDHARI YADAV AT- AMARI PS-KHAIRA DIST- BETTIAH 
                            </div>
                        </div>
                    </div>
                    <!-- Add Pagination -->
                    <div class="swiper-pagination"></div>
                    <!-- Add Navigation -->
                    <div class="swiper-button-next"></div>
                    <div class="swiper-button-prev"></div>
                </div>

                <h4 class="sheader mt-3"><%= Resources.Resources.titleabout %></h4>
                <div style="width: 100%; padding: 30px !important; box-shadow: 0px 0px 5px 0px rgb(0 0 0 / 50%); margin: 10px 0; white-space: pre-line; text-align: justify;">
                    Bettiah district police is a part of Munger Police Range. It has 2  sub-divisions, 16 Police Stations (including dedicated Police Station for Mahila and SC/ST) and 2 OP. Bettiah district police have 278 Police Officers, 55 Havaldars, 961 Constables and 342 BHG. 12 Police Stations of Bettiah district are naxal affected. Several camps of CAPF  including CRPF/SSB are situated at different locations including Gidhheshwar Pahad, Chormara and other tough terrain areas of Bettiah district. Also 4 BMP companies and STF forces  are deployed in district.
                    Bettiah Police has organized several Medical camps as part of community Policing to reach out to tribal as well as to assimilate them to main stream of society.
                    Under the leadership of the Superintendent of Police bettiah immense efforts are being taken towards tackling naxals, inclusion of affected people to mainstream and maintenance of law and order as well as public order with a goal of crime free and peaceful society. Bettiah Police is committed to ensure safety, security of public and society.
                </div>

                <h4 class="sheader mt-3"><%= Resources.Resources.titleacheve %></h4>

                <div id="achivementslider" class="swiper-container">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">
                            <img src="Images/achieve1.jpg" />
                            <div class="description">Description</div>
                        </div>
                        <div class="swiper-slide">
                            <img src="Images/achieve2.jpg" />
                            <div class="description">Description</div>
                        </div>
                        <div class="swiper-slide">
                            <img src="Images/achieve3.jpg" />
                            <div class="description">Description</div>
                        </div>
                        <div class="swiper-slide">
                            <img src="Images/achieve4.jpg" />
                            <div class="description">Description</div>
                        </div>
                        <div class="swiper-slide">
                            <img src="Images/achieve5.jpg" />
                            <div class="description">Description</div>
                        </div>
                        <div class="swiper-slide">
                            <img src="Images/achieve6.jpg" />
                            <div class="description">Description</div>
                        </div>
                        <div class="swiper-slide">
                            <img src="Images/achieve7.jpg" />
                            <div class="description">Description</div>
                        </div>
                        <div class="swiper-slide">
                            <img src="Images/achieve8.jpg" />
                            <div class="description">Description</div>
                        </div>
                    </div>
                    <!-- Add Pagination -->
                    <div class="swiper-pagination"></div>
                    <!-- Add Navigation -->
                    <div class="swiper-button-next"></div>
                    <div class="swiper-button-prev"></div>
                </div>

                <h4 class="sheader mt-3"><%= Resources.Resources.titlebestpolice %></h4>

                <div class="swiper-container">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">
                            <img src="/Images/achieve1.jpg" alt="Criminal 1">
                            <div class="description">
                                Description<br />
                                Police Inspector
                            </div>
                        </div>
                        .
                    </div>
                    <!-- Add Pagination -->
                    <div class="swiper-pagination"></div>
                    <!-- Add Navigation -->
                    <div class="swiper-button-next"></div>
                    <div class="swiper-button-prev"></div>
                </div>

                <h4 class="sheader mt-3"><%= Resources.Resources.titleimagegallery %></h4>

                <div id="imagegallery" class="swiper-container">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">
                            <img src="/Images/slider2.jpeg" alt="Criminal 1">
                        </div>
                        <div class="swiper-slide">
                            <img src="/Images/slider2.jpeg" alt="Criminal 2">
                        </div>
                        <div class="swiper-slide">
                            <img src="/Images/slider2.jpeg" alt="Criminal 3">
                        </div>
                        <div class="swiper-slide">
                            <img src="/Images/slider2.jpeg" alt="Criminal 4">
                        </div>
                    </div>
                    <!-- Add Pagination -->
                    <div class="swiper-pagination"></div>
                    <!-- Add Navigation -->
                    <div class="swiper-button-next"></div>
                    <div class="swiper-button-prev"></div>
                </div>

            </div>

            <div class="col-md-3">
                <h4 class="sheader"><%= Resources.Resources.titlesocial %></h4>
                <iframe height="500" scrolling="no" frameborder="0" allowfullscreen="true" allow="autoplay; clipboard-write; encrypted-media; picture-in-picture; web-share" data-adapt-container-width="false" style="border: 1px solid #ff6a00; margin-bottom: 10px; overflow: hidden; text-align: center;"
                    src="https://www.facebook.com/v16.0/plugins/page.php?adapt_container_width=false&amp;app_id=&amp;channel=https%3A%2F%2Fstaticxx.facebook.com%2Fx%2Fconnect%2Fxd_arbiter%2F%3Fversion%3D46%23cb%3Df2ef309ed5e5278%26domain%3Djamui.mocsoft.in%26is_canvas%3Dfalse%26origin%3Dhttp%253A%252F%252Fjamui.mocsoft.in%252Ff6bf7ab7cd71b%26relation%3Dparent.parent&amp;height=500&amp;hide_cover=false&amp;href=https%3A%2F%2Fwww.facebook.com%2FBettiahPoliceWC&amp;locale=en_GB&amp;sdk=joey&amp;show_facepile=true&amp;small_header=true&amp;tabs=timeline"
                    width="340"></iframe>
                <iframe id="twitter-widget-0" scrolling="no" frameborder="0" allowtransparency="true" allowfullscreen="true" title="Twitter Timeline" class="twitter" style="border: 1px solid #ff6a00; margin-bottom: 10px; position: static; visibility: visible; width: 340px; height: 500px; display: block; flex-grow: 1;"
                    src="https://syndication.twitter.com/srv/timeline-profile/screen-name/Bettiah_Police?dnt=false&amp;embedId=twitter-widget-12&amp;features=eyJ0ZndfdGltZWxpbmVfbGlzdCI6eyJidWNrZXQiOltdLCJ2ZXJzaW9uIjpudWxsfSwidGZ3X2ZvbGxvd2VyX2NvdW50X3N1bnNldCI6eyJidWNrZXQiOnRydWUsInZlcnNpb24iOm51bGx9LCJ0ZndfdHdlZXRfZWRpdF9iYWNrZW5kIjp7ImJ1Y2tldCI6Im9uIiwidmVyc2lvbiI6bnVsbH0sInRmd19yZWZzcmNfc2Vzc2lvbiI6eyJidWNrZXQiOiJvbiIsInZlcnNpb24iOm51bGx9LCJ0ZndfbWl4ZWRfbWVkaWFfMTU4OTciOnsiYnVja2V0IjoidHJlYXRtZW50IiwidmVyc2lvbiI6bnVsbH0sInRmd19leHBlcmltZW50c19jb29raWVfZXhwaXJhdGlvbiI6eyJidWNrZXQiOjEyMDk2MDAsInZlcnNpb24iOm51bGx9LCJ0ZndfZHVwbGljYXRlX3NjcmliZXNfdG9fc2V0dGluZ3MiOnsiYnVja2V0Ijoib24iLCJ2ZXJzaW9uIjpudWxsfSwidGZ3X3ZpZGVvX2hsc19keW5hbWljX21hbmlmZXN0c18xNTA4MiI6eyJidWNrZXQiOiJ0cnVlX2JpdHJhdGUiLCJ2ZXJzaW9uIjpudWxsfSwidGZ3X2xlZ2FjeV90aW1lbGluZV9zdW5zZXQiOnsiYnVja2V0Ijp0cnVlLCJ2ZXJzaW9uIjpudWxsfSwidGZ3X3R3ZWV0X2VkaXRfZnJvbnRlbmQiOnsiYnVja2V0Ijoib24iLCJ2ZXJzaW9uIjpudWxsfX0%3D&amp;frame=false&amp;hideBorder=false&amp;hideFooter=false&amp;hideHeader=false&amp;hideScrollBar=false&amp;lang=en&amp;maxHeight=500px&amp;origin=https%3A%2F%2Fpublish.twitter.com%2F%23&amp;sessionId=68f32caa5c7d388397adc8d5da0edea09906faf6&amp;showHeader=true&amp;showReplies=false&amp;theme=light&amp;transparent=false&amp;widgetsVersion=aaf4084522e3a%3A1674595607486"></iframe>
            </div>

        </div>
    </section>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Script" runat="server">
    <script type="text/javascript">
        var swiper1 = new Swiper('.swiper-container', {
            slidesPerView: 3,
            spaceBetween: 10,
            autoplay: {
                delay: 3000,
                disableOnInteraction: false,
            },
            pagination: {
                el: '.swiper-pagination',
                clickable: true,
            },
            navigation: {
                nextEl: '.swiper-button-next',
                prevEl: '.swiper-button-prev',
            },
        });
    </script>
</asp:Content>
