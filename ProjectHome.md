### Introduction ###
This demo illustrates building an Ajax based application with DWR, Spring and Hibernate using the classic Petstore application as the RI.

### Background ###
This is my personal project for exploring
  * Spring framework
  * Ajax (using DWR)
  * Acegi Security System for Spring
  * Sitemesh layout and decoration framework

### Installation ###
Grab one of the pre-built WAR's from the download section.
Building from source without eclipse is a pain (Plan to correct this). I have tested **only** on Tomcat 6 but should work in any 2.4+ container.

Use the following credential for login: _pink/panther_

The application starts in the context pets2, so depending on the port Tomcat is setup the application should be available in `http://localhost:8080/pets2`

### To Do List ###
  * Swing UI to check out the remoting features
  * Implement a GWT based client
  * Plug in some Dojo magic
  * Have a SPring MVC based non-Ajax UI
  * Check out JPA

### Resources ###
  * [Tomcat](http://tomcat.apache.org/)
  * [Spring Framework](http://www.springframework.org/)
  * [DWR](http://getahead.org/dwr)
  * [Acegi](http://www.acegisecurity.org/)
  * [Sitemesh](http://www.opensymphony.com/sitemesh/)
  * [Eclipse 3.3](http://www.eclipse.org/europa/)