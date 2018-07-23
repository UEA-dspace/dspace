<%--

    The contents of this file are subject to the license and copyright
    detailed in the LICENSE and NOTICE files at the root of the source
    tree and available online at

    http://www.dspace.org/license/

--%>
<%--
  - Footer for home page
  --%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<%@ page contentType="text/html;charset=UTF-8" %>

<%@ page import="java.net.URLEncoder" %>
<%@ page import="org.dspace.app.webui.util.UIUtil" %>

<%
    String sidebar = (String) request.getAttribute("dspace.layout.sidebar");
//             Right-hand side bar if appropriate
    if (sidebar != null)
    {
%>
	</div>
	<div class="col-md-3">
                    <%= sidebar %>
    </div>
    </div>
<%
    }
%>

</div>
</main>
            <%-- Page footer --%>
<footer class="navbar navbar-inverse footer" >
    <%--<div class="container">--%>
        <div class="row">
            <div class="col-md-2 logos">
                <a href="http://www3.uea.edu.br/">
                    <img class="img-logo-button" src="<%= request.getContextPath() %>/image/logo-uea.png"
                alt="Logo UEA" />
                </a>
            </div>
            <div class="col-md-5">
                <h5 class="text-light">UNIVERSIDADE DO ESTADO DO AMAZONAS</h5>
    
                <address class="text-light">
                    <strong>Sistema Integrado de Bibliotecas SIB/UEA</strong><br>
                    <%--<p class="text-justify descricao">O Repositório Institucional da UEA tem a finalidade de tornar disponível em ambiente digital e interoperável, as produções científicas e acadêmicas, contribuindo para fortalecer o apoio ao processo de ensino e pesquisa. </p>--%>
                     +55 92 98410-6272<br>
                    <a class="text-light email-ri" href="mailto:bibliotecacentral@uea.edu.br">bibliotecacentral@uea.edu.br</a>
                </address>
            </div>
            <div class="col-md-2 logos">
                <a href="http://www.ibict.br/">
                    <img class ="img-ibict-logo" src="<%= request.getContextPath() %>/image/bannerIbict.png"
                    alt="Logo Ibict"/>
                </a>
            </div>
            <div class="col-md-3 logos">
                <a href="http://redenorte.ufam.edu.br/">
                    <img class="rede_norte" src="<%= request.getContextPath() %>/image/logo_rede_norte.jpeg" alt="Logo Rede norte"/>
                </a>
            </div>
        </div>
    <%--</div>--%>
    <div id="designedby" class="container text-muted">
        <span class="pull-left text-uea"></span>
        <%--<div id="footer_feedback" class="pull-right"></div>--%>
    <%--</div>--%>
</footer>

    <!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-116070758-1"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-116070758-1');
</script>

    </body>
</html>
