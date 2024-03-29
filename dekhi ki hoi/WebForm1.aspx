﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="dekhi_ki_hoi.WebForm1" %>

<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
  <head runat="server">
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/remixicon/4.1.0/remixicon.css"
      integrity="sha512-dUOcWaHA4sUKJgO7lxAQ0ugZiWjiDraYNeNJeRKGOIpEq4vroj1DpKcS3jP0K4Js4v6bXk31AAxAxaYt3Oi9xw=="
      crossorigin="anonymous"
      referrerpolicy="no-referrer"
    />
    <link rel="stylesheet" href="/css/swiper-bundle.css"/>
    <link rel="stylesheet" href="/css/portfolio_side.css" />
    <title>Side_bar_portfolio</title>
  </head>
  <body>
    <div class="nav_toggle" id="nav-toggle"><i class="ri-bar-chart-horizontal-line"></i></div>
    <aside class="sidebar" id="sidebar">
      <nav class="nav">
        <div class="logo">
          <a href="webform1.aspx" class="navlogo-text" style="cursor:pointer;">S</a>
        </div>
        <div class="nav_menu">
          <div class="menu">
            <ul class="nav_list">
              <li class="nav_items">
                <a href="#home" class="nav_link active-link"> Home</a>
              </li>
              <li class="nav_items">
                <a href="#about" class="nav_link"> About</a>
              </li>
              <li class="nav_items">
                <a href="#skills" class="nav_link">Skills</a>
              </li>
              <li class="nav_items">
                <a href="#work" class="nav_link"> Project</a>
              </li>
              <li class="nav_items">
                <a href="#contact" class="nav_link"> Contact</a>
              </li>
            </ul>
          </div>
        </div>
        <div class="button_share">
          <i class="ri-share-line"></i>
        </div>
        <div class="nav_close" id="nav-close">
          <i class="ri-close-line"></i>
        </div>
      </nav>
    </aside>
    <main class="main">
        <section class="home" id="home">
            <div class="home_container container grid">
                <div class="home_social">
                    <span class="home_social-follow">Follow Me</span>
                    <div class="home_social-links">
                        <a href="https://www.facebook.com/"  target="_blank" class="home_social-link"><i class="ri-facebook-fill"></i></a>
                        <a href="https://www.instagram.com/"  target="_blank" class="home_social-link"><i class="ri-instagram-line"></i></a>
                        <a href="https://www.telegram.com/"  target="_blank" class="home_social-link"><i class="ri-telegram-line"></i></a>
                        <a href="https://www.messenger.com/"  target="_blank" class="home_social-link"><i class="ri-messenger-line"></i></a>
                    </div>
                </div>
                <img src="images/shundor_pic.png" alt="" class="home_img">
                <div class="home_data"> 
                    <h1 class="home_title"> Hi, I'm Shawcha</h1>
                    <h3 class="home_subtitle">Student</h3>  
                    <p class="home_description">i am a student at kuet</p>
                    <a href="#about" class="button"> <i class="ri-user-3-fill button_icon"></i> More about me</a>
                </div>
            </div>
        </section>
        <section class="about_section" id="about">
          <h2 data-heading="My Intro" class="section_title">About Me</h2>
        <div class="about_container container grid">
          <img src="images/home_image.png" alt="" class="about_img">
          <div class="about_data">
            <h3 class="about_heading">Hi,I am Shawcha</h3>
            <p class="about_description">Studying at Khulna University of Engineering Technology, Khulna.
              I have vast knowledge about hardware design.
            </p>
            <div class="about_info grid">
            <div class="about_box">
              <i class="ri-award-line about_icon"></i>
              <h3 class="about_title"> Experience </h3>
              <span class="about_subtitle">21 year of studying</span>
            </div>
            <div class="about_box">
              <i class="ri-suitcase-line about_icon"></i>
              <h3 class="about_title"> Completed</h3>
              <span class="about_subtitle">4 project in 2 years</span>
            </div>
            <div class="about_box">
              <i class="ri-customer-service-line about_icon"></i>
              <h3 class="about_title">Support</h3>
              <span class="about_subtitle"> Online24/7</span>
            </div>
            </div>
            <a href="#contact" class="button"><i class="ri-navigation-line"></i>Contact Me</a>
          </div>
        </div>
        </section>
        <section class="qualification section">
          <h2 class="section_title" data-heading="My journey">Qualification</h2>
          <div class="qualification_container container grid">
            <div class="education">
              <h3 class="qualification_title">
                <i class="ri-graduation-cap-line"></i>
                Education
              </h3>
              <div class="timeline">
                <div class="timeline_item">
                  <div class="circle_dot"></div>
                  <div class="timeline_title">Khuna University of Engineering University, Khulna</div>
                  <p class="timeline_text">Bsc. in Computer Science and Engineering</p>
                  <span class="timeline_date"><i class="ri-calendar-line"></i>2021-2024</span>
                </div>
                <div class="timeline_item">
                  <div class="circle_dot"></div>
                  <div class="timeline_title"> Notre Dame College , Dhaka</div>
                  <p class="timeline_text">Completed HSC </p>
                  <span class="timeline_date"><i class="ri-calendar-line"></i>2018-2020</span>
                </div>
                <div class="timeline_item">
                  <div class="circle_dot"></div>
                  <div class="timeline_title">Jashore Zilla School , Jashore</div>
                  <p class="timeline_text"> Completed SSC </p>
                  <span class="timeline_date"><i class="ri-calendar-line"></i>2018</span>
                </div>
              </div>
            </div>
            <div class="experience">
              <h3 class="qualification_title">
                <i class="ri-briefcase-4-line"></i>
                Experience
              </h3>
              <div class="timeline">
                <div class="timeline_item">
                  <div class="circle_dot"></div>
                  <div class="timeline_title">HACK (Hardware Acceleration Club of Kuet)</div>
                  <p class="timeline_text"> practice hardware ideas and implemting in real</p>
                  <span class="timeline_date"><i class="ri-calendar-line"></i>2024-Present</span>
                </div>
                <div class="timeline_item">
                  <div class="circle_dot"></div>
                  <div class="timeline_title">Udvash</div>
                  <p class="timeline_text">As a Teacher</p>
                  <span class="timeline_date"><i class="ri-calendar-line"></i>2024-Present</span>
                </div>
                <div class="timeline_item">
                  <div class="circle_dot"></div>
                  <div class="timeline_title">Udvash</div>
                  <p class="timeline_text">QnA Section</p>
                  <span class="timeline_date"><i class="ri-calendar-line"></i>2024-Present</span>
                </div>
              </div>
            </div>
          </div>
        </section>
        <section class="skills section" id="skills">
          <h2 class="section_title" data-heading="My Abilities">My Experience</h2>
          <div class="skills_container container grid">
            <div class="skills_tabs">
              <div class="skills_header skills_active" data-target="#frontend">
                <i class="uil uil-brackets-curly skills_icon"></i>
                <div>
                  <h1 class="skills_title">Fluent in programming Language</h1>
                    <span class="skills_subtitle">c++, java, java-script, c, c# </span>
                </div>
                <i class="ri-arrow-down-line skills_arrow"></i>
              </div>
              <div class="skills_header" data-target="#design">
                <i class="uil uil-brackets-curly skills_icon"></i>
                <div>
                  <h1 class="skills_title">PCB Design</h1>
                    <span class="skills_subtitle"> Fluent in PCB desing in Easyeda</span>
                </div>
                <i class="ri-arrow-down-line skills_arrow"></i>
              </div>
              <div class="skills_header" data-target="#backend">
                <i class="uil uil-brackets-curly skills_icon"></i>
                <div>
                  <h1 class="skills_title">Photography</h1>
                    <span class="skills_subtitle">skilled in photography</span>
                  
                </div>
                <i class="ri-arrow-down-line skills_arrow"></i>
              </div>
            </div>
            <div class="skills_content">
              <div class="skills_group skills_active" data-content id="frontend">
                <div class="skills_list grid">
                  <div class="skills_data">
                    <div class="skills_titles">
                      <h3 class="skills_name">CSS</h3>
                      <span class="skills_number">80%</span>
                    </div>
                    <div class="skills_bar">
                      <span class="skills_percentage" style="width:90%"></span>
                    </div>
                  </div>

                  <div class="skills_data">
                    <div class="skills_titles">
                      <h3 class="skills_name">HTML</h3>
                      <span class="skills_number">70%</span>
                    </div>
                    <div class="skills_bar">
                      <span class="skills_percentage" style="width:90%"></span>
                    </div>
                  </div>

                  <div class="skills_data">
                    <div class="skills_titles">
                      <h3 class="skills_name">Javascript</h3>
                      <span class="skills_number">70%</span>
                    </div>
                    <div class="skills_bar">
                      <span class="skills_percentage" style="width:70%"></span>
                    </div>
                  </div>

                  <div class="skills_data">
                    <div class="skills_titles">
                      <h3 class="skills_name">C#</h3>
                      <span class="skills_number"> 60%</span>
                    </div>
                    <div class="skills_bar">
                      <span class="skills_percentage" style="width:60%"></span>
                    </div>
                  </div>

                </div>
              </div>
              <div class="skills_group" data-content id="design" >
                <div class="skills_list grid">
                  <div class="skills_data">
                    <div class="skills_titles">
                      <h3 class="skills_name">CSS</h3>
                      <span class="skills_number">80%</span>
                    </div>
                    <div class="skills_bar">
                      <span class="skills_percentage" style="width:80%"></span>
                    </div>
                  </div>

                  <div class="skills_data">
                    <div class="skills_titles">
                      <h3 class="skills_name">HTML</h3>
                      <span class="skills_number">70%</span>
                    </div>
                    <div class="skills_bar">
                      <span class="skills_percentage" style="width:70%"></span>
                    </div>
                  </div>

                  <div class="skills_data">
                    <div class="skills_titles">
                      <h3 class="skills_name">Javascript</h3>
                      <span class="skills_number">70%</span>
                    </div>
                    <div class="skills_bar">
                      <span class="skills_percentage" style="width:70%"></span>
                    </div>
                  </div>

                  <div class="skills_data">
                    <div class="skills_titles">
                      <h3 class="skills_name">boot_map</h3>
                      <span class="skills_number"> 60%</span>
                    </div>
                    <div class="skills_bar">
                      <span class="skills_percentage" style="width:60%"></span>
                    </div>
                  </div>

                </div>
              </div>


              <div class="skills_group"data-content id="backend">
                <div class="skills_list grid">
                  <div class="skills_data">
                    <div class="skills_titles">
                      <h3 class="skills_name">hii hello</h3>
                      <span class="skills_number">80%</span>
                    </div>
                    <div class="skills_bar">
                      <span class="skills_percentage" style="width:80%"></span>
                    </div>
                  </div>

                  <div class="skills_data">
                    <div class="skills_titles">
                      <h3 class="skills_name">lalon </h3>
                      <span class="skills_number">70%</span>
                    </div>
                    <div class="skills_bar">
                      <span class="skills_percentage" style="width:70%"></span>
                    </div>
                  </div>

                  <div class="skills_data">
                    <div class="skills_titles">
                      <h3 class="skills_name">Java</h3>
                      <span class="skills_number">30%</span>
                    </div>
                    <div class="skills_bar">
                      <span class="skills_percentage" style="width:30%"></span>
                    </div>
                  </div>

                  <div class="skills_data">
                    <div class="skills_titles">
                      <h3 class="skills_name">xang</h3>
                      <span class="skills_number"> 60%</span>
                    </div>
                    <div class="skills_bar">
                      <span class="skills_percentage" style="width:60%"></span>
                    </div>
                  </div>

                </div>
              </div>

            </div>
          </div>
        </section>


       
        <section class="work section container" id="work">



          <h2 class="section_title" data-heading="My Portfolio"> Recent Works</h2>
          <div class="work_filters">
            <span class="work_item active_work" data-filter="all">All</span>
          </div>
          <div class="work_container container grid" id="content" runat="server">
              </div>
        </section>
        <div class="portfolio_popup" id="container">
          <div class="portfolio_popup-inner">
            <div class="portfolio_popup-content grid">
              <span class="portfolio_popup-close"><i class="ri-close-fill"></i></span>
              <div class="pp_thumbnail">
                <img src="/images/R.webp" alt="" class="portfolio_popup-img">
              </div>
              <div class="portfolio_popup-info">
                <div class="portfolio_popup-subtitle">Featured - <span>Design</span></div>
                <div class="portfolio_popup-body">
                  <h3 class="details_title">App for tecnology & services</h3>
                  <p class="details_description">Lorem ipsum dolor sit amet consectetur adipisicing elit. Odit deleniti eveniet molestiae sequi, sapiente pariatur labore veniam repudiandae nobis optio nam assumenda similique tenetur, expedita fugit necessitatibus in perspiciatis delectus?</p>
                  <ul class="details_info">
                    <li>Created - <span>4 dec 2020</span></li>
                    <li> Technologis- <span>html css</span></li>
                    <li>Role <span>fontend</span></li>
                    <li>View- <span><a href="#">www.domain.com</a></span></li>
                  </ul>
                </div>
              </div>
            </div>
          </div>
        </div>
        <section class="serirvices section"  id="services" >
        <h2 data-heading="Services" class="section_title"> what I offer</h2>  
        <div class="services_container container grid">
          <div class="services_content">
            <div>
              <i class="ri-service-fill services_icon"></i>
              <h3 class="services_title">Web <br> Designer</h3>
            </div>
            <span class="services_button">
              View More <i class="ri-arrow-right-line services_button-icon"></i>
            </span>
            <div class="services_modal">
              <div class="services_modal-content">
                <i class="ri-close-fill services_modal-close"></i>
                <h3 class="services_modal-title">Web Designer</h3>
                <p class="services_modal-description">services with more than 3 year experience. 
                  providing quality work to clients and companies 
                  i develop the user interface.
                </p>
                <ul class="services_modal-services grid">
                  <li class="services_modal-service">
                    <i class="ri-circle-line services_modal-icon"></i>
                    <p class="services_modal-info">i develop the user interface.</p>
                  </li>
                  <li class="services_modal-service">
                    <i class="ri-circle-line services_modal-icon"></i>
                    <p class="services_modal-info">Web page development.</p>
                  </li>
                  <li class="services_modal-service">
                    <i class="ri-circle-line services_modal-icon"></i>
                    <p class="services_modal-info">I create ux element interactions.</p>
                  </li>
                  <li class="services_modal-service">
                    <i class="ri-circle-line services_modal-icon"></i>
                    <p class="services_modal-info">I position your company brand.</p>
                  </li>
                  <li class="services_modal-service">
                    <i class="ri-circle-line services_modal-icon"></i>
                    <p class="services_modal-info">Design and mockups of products for comapnies.</p>
                  </li>
                </ul>
    
              </div>
            </div>

          </div>
          <div class="services_content">
            <div>
              <i class="ri-service-fill services_icon"></i>
              <h3 class="services_title">UI/UX <br> Designer</h3>
            </div>
            <span class="services_button">
              View More <i class="ri-arrow-right-line services_button-icon"></i>
            </span>
            <div class="services_modal">
              <div class="services_modal-content">
                <i class="ri-close-fill services_modal-close"></i>
                <h3 class="services_modal-title">UI/ UX Designer</h3>
                <p class="services_modal-description">services with more than 3 year experience. 
                  providing quality work to clients and companies 
                  i develop the user interface.
                </p>
                <ul class="services_modal-services grid">
                  <li class="services_modal-service">
                    <i class="ri-circle-line services_modal-icon"></i>
                    <p class="services_modal-info">i develop the user interface.</p>
                  </li>
                  <li class="services_modal-service">
                    <i class="ri-circle-line services_modal-icon"></i>
                    <p class="services_modal-info">Web page development.</p>
                  </li>
                  <li class="services_modal-service">
                    <i class="ri-circle-line services_modal-icon"></i>
                    <p class="services_modal-info">I create ux element interactions.</p>
                  </li>
                  <li class="services_modal-service">
                    <i class="ri-circle-line services_modal-icon"></i>
                    <p class="services_modal-info">I position your company brand.</p>
                  </li>
                  <li class="services_modal-service">
                    <i class="ri-circle-line services_modal-icon"></i>
                    <p class="services_modal-info">Design and mockups of products for comapnies.</p>
                  </li>
                </ul>
    
              </div>
            </div>
          </div>
          <div class="services_content">
            <div>
              <i class="ri-service-fill services_icon" ></i>
              <h3 class="services_title">branding <br> Designer</h3>
            </div>
            <span class="services_button">
              View More <i class="ri-arrow-right-line services_button-icon"></i>
            </span>
            <div class="services_modal">
              <div class="services_modal-content">
                <i class="ri-close-fill services_modal-close"></i>
                <h3 class="services_modal-title">Branding Designer</h3>
                <p class="services_modal-description">services with more than 3 year experience. 
                  providing quality work to clients and companies 
                  i develop the user interface.
                </p>
                <ul class="services_modal-services grid">
                  <li class="services_modal-service">
                    <i class="ri-circle-line services_modal-icon"></i>
                    <p class="services_modal-info">i develop the user interface.</p>
                  </li>
                  <li class="services_modal-service">
                    <i class="ri-circle-line services_modal-icon"></i>
                    <p class="services_modal-info">Web page development.</p>
                  </li>
                  <li class="services_modal-service">
                    <i class="ri-circle-line services_modal-icon"></i>
                    <p class="services_modal-info">I create ux element interactions.</p>
                  </li>
                  <li class="services_modal-service">
                    <i class="ri-circle-line services_modal-icon"></i>
                    <p class="services_modal-info">I position your company brand.</p>
                  </li>
                  <li class="services_modal-service">
                    <i class="ri-circle-line services_modal-icon"></i>
                    <p class="services_modal-info">Design and mockups of products for comapnies.</p>
                  </li>
                </ul>
    
              </div>
            </div>
          </div>
        </div>
        </section>
        <section class="testimonial section ">
          <h2 data-heading="My client say" class="section_title">Testimonials</h2>
          <div class="testimonials_container container swiper">
            <div class="swiper-wrapper">
              <div class="testimonial_card swiper-slide">
                <div class="testimonial_quote">
                  <i class="ri-double-quotes-l"></i>
                </div>
                <p class="testimonial_description">Lorem ipsum dolor sit amet consectetur adipisicing elit. Quae voluptatum laudantium, voluptates esse totam aliquid, nulla rem mollitia dolores alias amet perspiciatis neque. Voluptatum provident, vel ipsa magnam dolore natus.</p>
                <h3 class="testimonial_date">March 27,2020</h3>
                <div class="testimonial_profile">
                  <img src="/images/solo_leveling.jpg" alt="solo_leveling" class="testimonial_profile-img">
                  <div class="testimonial_profile-data">
                    <span class="testimonial_profile-name">Shawcha</span>
                    <span class="testimonial_profile-details">DIrector of company</span>
                  </div>
                </div>
              </div>
              <div class="testimonial_card swiper-slide">
                <div class="testimonial_quote">
                  <i class="ri-double-quotes-l"></i>
                </div>
                <p class="testimonial_description">Lorem ipsum dolor sit amet consectetur adipisicing elit. Quae voluptatum laudantium, voluptates esse totam aliquid, nulla rem mollitia dolores alias amet perspiciatis neque. Voluptatum provident, vel ipsa magnam dolore natus.</p>
                <h3 class="testimonial_date">March 27,2020</h3>
                <div class="testimonial_profile">
                  <img src="/images/solo_leveling.jpg" alt="solo_leveling" class="testimonial_profile-img">
                  <div class="testimonial_profile-data">
                    <span class="testimonial_profile-name">Shawcha</span>
                    <span class="testimonial_profile-details">DIrector of company</span>

                  </div>
                </div>
              </div>
              <div class="testimonial_card swiper-slide">
                <div class="testimonial_quote">
                  <i class="ri-double-quotes-l"></i>
                </div>
                <p class="testimonial_description">Lorem ipsum dolor sit amet consectetur adipisicing elit. Quae voluptatum laudantium, voluptates esse totam aliquid, nulla rem mollitia dolores alias amet perspiciatis neque. Voluptatum provident, vel ipsa magnam dolore natus.</p>
                <h3 class="testimonial_date">March 27,2020</h3>
                <div class="testimonial_profile">
                  <img src="/images/solo_leveling.jpg" alt="solo_leveling" class="testimonial_profile-img">
                  <div class="testimonial_profile-data">
                    <span class="testimonial_profile-name">Shawcha</span>
                    <span class="testimonial_profile-details">DIrector of company</span>

                  </div>
                </div>
              </div>
            </div>
            <div class="swiper-pagination"></div>
          </div>
        </section>
        <section class="contact section" id="contact">
          <h2 class="section_title" data-heading="Get in touch">Contact Me</h2>
          <div class="contact_container container grid">
            <div class="contact_content">
              <div class="contact_info">
                <div class="contact_card">
                  <i class="ri-mail-line contact_card-icon"></i>
                  <h3 class="contact_card-title"> Email</h3>
                  <span class="contact_card-data">shawcha2007040@stud.kuet.ac.bd</span>
                  <span class="contact_button">
                    View More<i class="ri-arrow-right-line contact_button-icon"></i>
                  </span>
                </div>
                <div class="contact_card">
                  <i class="ri-mail-line contact_card-icon"></i>
                  <h3 class="contact_card-title"> Whatsapp</h3>
                  <span class="contact_card-data">01874075388</span>
                  <span class="contact_button">
                    View More<i class="ri-arrow-right-line contact_button-icon"></i>
                  </span>
                </div>
                <div class="contact_card">
                  <i class="ri-mail-line contact_card-icon"></i>
                  <h3 class="contact_card-title"> Messenger</h3>
                  <span class="contact_card-data">Shawcha</span>
                  <span class="contact_button">
                    View More<i class="ri-arrow-right-line contact_button-icon"></i>
                  </span>
                </div>
              </div>
            </div>
            <div class="contact_content">
              <form class="contact_form" runat="server" >
                <div class="input_container">
                <label for="name">Username</label>
                <input type="text" runat="server" class="input" placeholder="Name" id="name"/>
                </div>
                <div class="input_container">
                  <label for="email">Email</label>
                  <input type="email" runat="server" class="input" placeholder="email" id="email"/>
                  </div>
                 <div class="input_container">  
                  <label for="phone">Phone</label>
                    <input type="tel" runat="server" class="input" placeholder="Phone no" id="phone"/>
                    </div>
                    <div class="input_container textarea">
                      <label for="message">Message</label>
                     <textarea name="message" runat="server" placeholder="Message" cols="30" rows="10" id="message"></textarea> 
                      </div>  
                  <button class="button" runat="server" type="submit" id="sendbtn" value="send" onserverclick="sendbtn_Click"><i class="ri-navigation-line"></i>
                    Send message</button> 
              </form>
            </div>
          </div>
        </section>
        <footer class="footer">
          <div class="footer_bg">
            <div class="footer_container container grid">
              <div>
                <h1 class="footer_title">Shawcha</h1>
                <span class="footer_sibtitle">Fronten Developer</span>
              </div>
              <ul class="footer_links">
                <li><a href="#services" class="footer_link">Services</a></li>
                <li><a href="#work" class="footer_link">Work</a></li>
                <li><a href="#contact" class="footer_link">Contact</a></li>
              </ul>
            
            <div class="footer_socials">
              <a href="https://www.facebook.com/"  target="_blank" class="footer_social"><i class="ri-facebook-fill"></i></a>
              <a href="https://www.instagram.com/"  target="_blank" class="footer_social"><i class="ri-instagram-line"></i></a>
              <a href="https://www.telegram.com/"  target="_blank" class="footer_social"><i class="ri-telegram-line"></i></a>
              <a href="https://www.messenger.com/"  target="_blank" class="footer_social"><i class="ri-messenger-line"></i></a>
            </div>
          </div>
            <p class="footer_copy">&#169; copyright. All right reserved</p>
          </div>
        </footer>
    </main>
   <script src="/java/swiper-bundle.js"></script>
    <script src="/java/mixitup.min.js"></script>
    <script src="/java/portfolio_side.js"></script>
  </body>
</html>                                        gir ch