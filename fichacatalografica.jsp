<%--
  Created by IntelliJ IDEA.
  User: fernando
  Date: 22/09/17
  Time: 13:38
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" %>


<html>
<head>
    <title>Ficha Catalográfica</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <%--<link rel="stylesheet" href="<%= request.getContextPath() %>/code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">--%>
    <link rel="shortcut icon" href="<%= request.getContextPath() %>/favicon.ico" type="image/x-icon"/>
    <link rel="stylesheet" href="<%= request.getContextPath() %>/static/css/jquery-ui-1.10.3.custom/redmond/jquery-ui-1.10.3.custom.css" type="text/css" />
    <link rel="stylesheet" href="<%= request.getContextPath() %>/static/css/bootstrap/bootstrap.min.css" type="text/css" />
    <link rel="stylesheet" href="<%= request.getContextPath() %>/static/css/bootstrap/bootstrap-theme.min.css" type="text/css" />
    <link rel="stylesheet" href="<%= request.getContextPath() %>/static/css/bootstrap/dspace-theme.css" type="text/css" />
    <link rel="stylesheet" href="<%= request.getContextPath() %>/static/css/customDspace.css" type="text/css" />
    <%--<link rel="stylesheet" href="<%= request.getContextPath() %>/util/css/bootstrap.css">--%>
    <link rel="stylesheet" href="<%= request.getContextPath() %>/util/css/CustomForm.css">


    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script src="<%= request.getContextPath() %>/util/js/bootstrap.min.js"></script>

</head>
<body>
<header class="navbar navbar-inverse">
    <div class="container">
        <%@
                include file="layout/navbar-default.jsp"
        %>
    </div>
</header>

<div class="container">

    <div class="form-group col-md-12">
        <h1>Criar Ficha Catalográfica</h1>

        <form action="/fichacatalografica/ficha/report" method="post" name="formficha"
              class="form-horizontal formulario" id="formficha">

            <div class="form-group prop col-md-12">
                <p class="help-block">Todos os itens com * são obrigatórios</p>
                <p class="help-block">O Código Cutter será gerado automaticamente</p>

            </div>

            <div class="row">
                <div class="col-md-12">
                    <label for="nome">Nome e primeiros sobrenomes*: </label>
                    <div class="value ">
                        <input type="text" name="nome" class="form-control " value="" id="nome"
                               placeholder="Ex. Márcia Andreia Albuquerque da." required>
                    </div>
                    <label for="nome"><span style="font-style:italic;font-size:9px;">Nome e primeiros sobrenomes. (Ex. Márcia Andreia Albuquerque da. Ex.2.: João de Souza da)</span></label>
                </div>
            </div>

            <div class="row">
                <div class="col-md-12">
                    <label for="sobrenome">Sobrenome*:</label>
                    <div class="value ">
                        <input type="text" name="sobrenome" class="form-control " maxlength="50" value="" id="sobrenome"
                               placeholder="Ex.: Silva Filho, Oliveira Neto" required>
                    </div>
                    <label for="nome"><span style="font-style:italic;font-size:9px;">Apenas o ùltimo sobrenome. Em caso de parentesco, este deve ser inserido após o último sobrenome (Ex.: Silva Filho, Oliveira Neto)</span></label>
                </div>
            </div>

            <div class="row ">
                <div class="col-md-12">
                    <div class="name">
                        <label for="tituloTrabalho">Título Trabalho*: </label>
                    </div>
                    <div class="value ">
                        <input type="text" class="form-control" name="tituloTrabalho" value="" id="tituloTrabalho" required>
                    </div>
                    <label for="nome"><span style="font-style:italic;font-size:9px;">
                    Não deve ser utilizada apenas letras maiúsculas! Utilize letras maiúsculas somente para o início do título, siglas ou nomes próprios.
                </span></label>
                </div>
            </div>

            <div class="row">
                <div class="col-md-12">
                    <div class="name">
                        <label for="subTituloTrabalho">Sub Titulo Trabalho:</label>
                    </div>
                    <div class="value ">
                        <input type="text" class="form-control" name="subTituloTrabalho" value=""
                               id="subTituloTrabalho" >
                    </div>
                    <label for="nome"><span style="font-style:italic;font-size:9px;">
                                Não deve ser utilizada apenas letras maiúsculas!
                            </span></label>
                </div>
            </div>

            <div class="row">

                <div class="col-md-12">
                    <div class="name">
                        <label for="cursoPrograma">Curso Programa*:</label>
                    </div>
                    <div class="value ">
                        <input class="form-control" name="cursoPrograma" id="cursoPrograma" required>

                    </div>
                    <label for="nome"><span style="font-style:italic;font-size:9px;">
                                Clique na lupa para abrir a janela de opções e digite o nome do curso ou programa.
                            </span></label>
                </div>
            </div>

            <div class="row">

                <div class="col-md-9">
                    <div class="name">

                        <label for="tipoTrabalho">Tipo Trabalho*:</label>
                    </div>
                    <div class="value ">

                        <label class="radio-inline">
                            <input type="radio" name="tipoTrabalho" checked="checked" value="1"> Tese
                        </label>


                        <label class="radio-inline">
                            <input type="radio" name="tipoTrabalho" value="2"> Dissertação
                        </label>


                        <label class="radio-inline">
                            <input type="radio" name="tipoTrabalho" value="3"> TCC(Especialização)
                        </label>


                        <label class="radio-inline">
                            <input type="radio" name="tipoTrabalho" value="4"> TCC(Graduação)
                        </label>


                    </div>
                </div>
            </div>

            <div class="row formTop">
                <div class="col-md-12 orientador campoNome">
                    <div class="name">
                        <label for="nomeOrientador">Nome do Orientador*:</label>
                    </div>

                    <div class="col-md-6 divFloat">
                        <input type="text" class="form-control" name="nomeOrientador[]" maxlength="100" value=""
                               id="nomeOrientador" required>
                    </div>

                    <div class="col-md-2">
                        <button class="btn btn-success orientador_add" type="button">
                            <span class="glyphicon glyphicon-plus"></span>&nbsp;&nbsp;Adicionar mais
                        </button>
                    </div>

                </div>
            </div>

            <div class="row formTop">
                <div class=" col-md-12 nomeCoOrientador">
                    <div class="name">
                        <label for="nomeCoOrientador">Nome Co-Orientador:</label>
                    </div>
                    <div class="col-md-6 divFloat">
                        <input type="text" class="form-control " name="nomeCoOrientador" maxlength="50" value=""
                               id="nomeCoOrientador">
                    </div>
                    <div class="col-md-2">
                        <button class="btn btn-success co-orientador_add" type="button">
                            <span class="glyphicon glyphicon-plus"></span>&nbsp;&nbsp;Adicionar mais
                        </button>
                    </div>
                </div>
            </div>

            <div class="row formTop">


                <div class="col-md-3">
                    <div class="name">
                        <label for="alturaFolha">Altura Folha*:</label>
                    </div>
                    <div class="value ">
                        <label for="alturaFolha">31</label>
                    </div>
                </div>

                <div class="col-md-1">
                    <div class="name">
                        <label for="ano">Ano*:</label>
                    </div>
                    <div class="value ">
                        <input type="text" class="form-control " name="ano" maxlength="4" value="" id="ano">
                    </div>
                </div>

                <div class="col-md-3">
                    <div class="name">
                        <label for="ilustracoes">Ilustrações*:</label>
                    </div>
                    <div class="value ">
                        <select name="ilustracoes" class="form-control" id="ilustracoes">
                            <option value="">-Selecione o tipo-</option>
                            <option value="Sem ilustrações">Sem ilustrações</option>
                            <option value="Preto e Branco">Preto e Branco</option>
                            <option value="Colorido">Colorido</option>
                        </select>
                    </div>
                </div>

                <div class="col-md-5">
                    <div class="name">
                        <label for="numeroArabico">Número de páginas (Número Arábico)*:</label>
                    </div>
                    <div class="col-md-2 divFloat">
                        <input type="text" class="form-control " name="numeroArabico" value="" id="numeroArabico">
                    </div>
                </div>


            </div>


            <div class="row formTop">
                <div class="col-md-3">
                    <div class="name">
                        <label title="Não usar fórmulas. Em caso de termo cientifico, utilizar também o nome popular - Ex: Apis mellifera(Abelha)."
                               for="palavraChave1">Palavra-Chave 1*:</label>
                    </div>
                    <div class="value ">
                        <input type="text"
                               title="Não usar fórmulas. Em caso de termo cientifico, utilizar também o nome popular - Ex: Apis mellifera(Abelha)."
                               class="form-control " name="palavraChave1" maxlength="50" value="" id="palavraChave1" required>
                    </div>
                </div>

                <div class="col-md-3">
                    <div class="name">
                        <label for="palavraChave2">Palavra-Chave 2*:</label>
                    </div>
                    <div class="value ">
                        <input type="text" class="form-control " name="palavraChave2" maxlength="50" value=""
                               id="palavraChave2" required>
                    </div>
                </div>

                <div class="col-md-3">
                    <div class="name">
                        <label for="palavraChave3">Palavra-Chave 3*:</label>
                    </div>
                    <div class="value ">
                        <input type="text" class="form-control " name="palavraChave3" maxlength="50" value=""
                               id="palavraChave3"required>
                    </div>
                </div>
            </div>


            <div class="row formTop">
                <div class="col-md-3">
                    <div class="name">
                        <label for="palavraChave4">Palavra-Chave 4*:</label>
                    </div>
                    <div class="value ">
                        <input type="text" class="form-control " name="palavraChave4" maxlength="50" value=""
                               id="palavraChave4">
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="name">
                        <label for="palavraChave5">Palavra-Chave 5</label>
                    </div>
                    <div class="value ">
                        <input type="text" class="form-control " name="palavraChave5" maxlength="50" value=""
                               id="palavraChave5">
                    </div>
                </div>
            </div>

            <div class="row formTop">

                <b>
                    <input type="submit" name="create" class="btn btn-primary button" value="Gerar Ficha Catalográfica"
                           onclick="return confirm('A Ficha gerada deve ser salva em PDF e impressa junto com o trabalho')"
                           id="create">
                </b>

            </div>
        </form>
    </div>
</div>


<%@ include file="/layout/footer-default.jsp" %>

<script>
    $(
        function () {
            var listaCurso = [
                "Graduação em Administração - Bacharelado",
                "Graduação em Agrimensura - Tecnólogo",
                "Graduação em Alimentos - Tecnólogo",
                "Graduação em Arqueologia - Bacharelado",
                "Graduação em Biotecnologia - Tecnológo",
                "Graduação em Ciência Política - Bacharelado",
                "Graduação em Ciências Biológicas - Licenciatura",
                "Graduação em Ciências Contábeis - Bacharelado",
                "Graduação em Ciências da Religião - 1ª Licenciatura - Licenciatura",
                "Graduação em Ciências Econômicas - Bacharelado",
                "Graduação em Ciências Militares e Segurança Pública - Bacharelado",
                "Graduação em Construção Civil - Tecnólogo",
                "Graduação em Construção Naval - Tecnólogo",
                "Graduação em Dança - Bacharelado",
                "Graduação em Dança - Licenciatura",
                "Graduação em Eletrônica - Tecnólogo",
                "Graduação em Eletrotécnica - Tecnólogo",
                "Graduação em Engenharia Civil",
                "Graduação em Engenharia de Computação",
                "Graduação em Engenharia de Materiais",
                "Graduação em Engenharia de Operação em Indústria de Madeira",
                "Graduação em Engenharia de Produção",
                "Graduação em Engenharia Florestal",
                "Graduação em Engenharia Industrial Mecânica",
                "Graduação em Física - Licenciatura",
                "Graduação em Geografia - 2ª Licenciatura - Licenciatura",
                "Graduação em Geografia - Segunda Licenciatura - Licenciatura",
                "Graduação em Gestão Ambiental - Tecnólogo",
                "Graduação em Gestão Comercial - Tecnólogo",
                "Graduação em Gestão de Turismo - Tecnólogo",
                "Graduação em História - Primeira Licenciatura - Licenciatura",
                "Graduação em Informática - Licenciatura",
                "Graduação em Letras - Licenciatura",
                "Graduação em Licenciatura em Computação - Licenciatura",
                "Graduação em Logística - Tecnólogo",
                "Graduação em Manutenção Mecânica - Tecnólogo",
                "Graduação em Meteorologia - Bacharelado",
                "Graduação em Música - Licenciatura",
                "Graduação em Normal Superior - Licenciatura",
                "Graduação em Normal Superior - Educação Infantil e Séries Iniciais do Ensino Fundamental - Licenciatura",
                "Graduação em Pedagogia - Licenciatura",
                "Graduação em Petróleo e Gás - Tecnólogo",
                "Graduação em Processamento de Dados - Tecnólogo",
                "Graduação em Produção Pesqueira - Tecnológo",
                "Graduação em Química - Licenciatura",
                "Graduação em Saneamento Ambiental - Tecnólogo",
                "Graduação em Saúde Coletiva - Bacharelado",
                "Graduação em Segurança Pública e do Cidadão - Bacharelado",
                "Graduação em Sistemas de Informação - Bacharelado",
                "Graduação em Agroecologia - Tecnólogo",
                "Graduação em Análise e Desenvolvimento de Sistemas - Tecnólogo",
                "Graduação em Automação Industrial - Tecnólogo",
                "Graduação em Direito - Bacharelado",
                "Graduação em Educação Física - Licenciatura",
                "Graduação em Enfermagem - Licenciatura",
                "Graduação em Enfermagem - Bacharelado",
                "Graduação em Engenharia - Básico - Bacharelado",
                "Graduação em Engenharia de Controle e Automação;",
                "Graduação em Engenharia de Operação Civil de Obras Municipais;",
                "Graduação em Engenharia Elétrica;Engenheiro Eletricista",
                "Graduação em Engenharia Eletrônica - Bacharelado",
                "Graduação em Engenharia Industrial Elétrica;",
                "Graduação em Engenharia Mecânica",
                "Graduação em Engenharia Mecatrônica",
                "Graduação em Engenharia Naval",
                "Graduação em Engenharia Química",
                "Graduação em Farmácia",
                "Graduação em Geografia - Licenciatura",
                "Graduação em Geografia - Primeira Licenciatura - Licenciatura",
                "Graduação em Gestão Pública - Tecnológo",
                "Graduação em História - Licenciatura",
                "Graduação em Indústria da Madeira - Tecnólogo",
                "Graduação em Jogos Digitais - Tecnologia",
                "Graduação em Letras - Língua Inglesa - Licenciatura",
                "Graduação em Manutenção Industrial - Tecnólogo",
                "Graduação em Matemática - Licenciatura",
                "Graduação em Matemática - Primeira Licenciatura - Licenciatura",
                "Graduação em Medicina",
                "Graduação em Música - Bacharelado",
                "Graduação em Música - Canto - Licenciatura",
                "Graduação em Música Popular - Bacharelado",
                "Graduação em Música Popular - Instrumento - Bacharelado",
                "Graduação em Odontologia",
                "Graduação em Produção Audiovisual - Tecnológo",
                "Graduação em Química - Bacharelado",
                "Graduação em Teatro - Bacharelado",
                "Graduação em Topografia e Estradas - Tecnólogo",
                "Graduação em Turismo - Bacharelado",
                "Graduação em Turismo Ecológico - Tecnólogo",
                "PGLS - Análises Clínicas (Especialista)",
                "PGLS - Auditoria e Controladoria Interna (Especialista)",
                "PGLS - Biomecânica (Especialista)",
                "PGLS - Ciência e Engenharia de Materiais (Especialista)",
                "PGLS - Conservação dos Recursos Naturais (Especialista)",
                "PGLS - Dança Educação (Especialista)",
                "PGLS - Dentística Restauradora (Especialista)",
                "PGLS - Desenvolvimento de Jogos Eletrônicos (Especialista)",
                "PGLS - Desenvolvimento de Novos Produtos (Especialista)",
                "PGLS - Desenvolvimento em Software Livre (Especialista)",
                "PGLS - Direito Ambiental (Especialista)",
                "PGLS - Direito e Processo do Trabalho (Especialista)",
                "PGLS - Direito Eleitoral (Especialista)",
                "PGLS - Direito Público (Especialista)",
                "PGLS - Educação Ambiental (Especialista)",
                "PGLS - Educação de Jovens e Adultos (Especialista)",
                "PGLS - Educação do Campo com Ênfase no Projovem Campo - Saberes da Terra (Especialista)",
                "PGLS - Educação Matemática (Especialista)",
                "PGLS - Educação",
                "PGLS - Empreendedorismo (Especialista)",
                "PGLS - Endodontia (Especialista)",
                "PGLS - Enfermagem Cardiovascular (Especialista)",
                "PGLS - Enfermagem em Centro Cirúrgico e Centro de Material Esterilizado (Especialista)",
                "PGLS - Enfermagem em Infectologia (Especialista)",
                "PGLS - Enfermagem Oncológica (Especialista)",
                "PGLS - Engenharia da Computação (Especialista)",
                "PGLS - Engenharia de Avaliações e Perícias (Especialista)",
                "PGLS - Engenharia de Produção com Ênfase em Recursos Produtivos (Especialista)",
                "PGLS - Engenharia de Segurança do Trabalho (Especialista)",
                "PGLS - Engenharia Elétrica (Especialista)",
                "PGLS - Ensino da Matemática na Educação Básica e no Ensino Superior (Especialista)",
                "PGLS - Epidemiologia do Campo (Especialista)",
                "PGLS - Estomaterapia: Estomias",
                "PGLS - Estudos Clássicos (Especialista)",
                "PGLS - Formação em Educação Infantil (Especialista)",
                "PGLS - Genética Humana (Especialista)",
                "PGLS - Gerontologia e Saúde do Idoso (Especialista)",
                "PGLS - Gestão Ambiental (Especialista)",
                "PGLS - Gestão de Currículos e Desenvolvimento de Práticas Pedagógicas (Especialista)",
                "PGLS - Gestão de Projetos e Formação Docente (Especialista)",
                "PGLS - Gestão de Talentos (Especialista)",
                "PGLS - Gestão e Organização Educacional (Especialista)",
                "PGLS - Gestão e Produção Cultural (Especialista)",
                "PGLS - Gestão e Produção de Eventos (Especialista)",
                "PGLS - Gestão e Tecnologia de Sistemas Construtivos de Edifícios (Especialista)",
                "PGLS - Gestão e Tecnologias do Gás Natural (Especialista)",
                "PGLS - Gestão em Metrologia e Qualidade (Especialista)",
                "PGLS - Gestão Escolar (Especialista)",
                "PGLS - Gestão Logística no Amazonas (Especialista)",
                "PGLS - Gestão Pública (Especialista)",
                "PGLS - Gestão Pública Aplicada à Segurança (Especialista)",
                "PGLS - Hematologia Laboratorial (Especialista)",
                "PGLS - Hemoterapia (Especialista)",
                "PGLS - Implantodontia (Especialista)",
                "PGLS - Informática Aplicada à Educação (Especialista)",
                "PGLS - Matemática Aplicada (Especialista)",
                "PGLS - MBA em Desenvolvimento Sustentável e Gestão de Negócios (Especialista)",
                "PGLS - MBA em Engenharia da Qualidade (Especialista)",
                "PGLS - MBA em Gestão de Projetos (Especialista)",
                "PGLS - MBA em Gestão em Tecnologia da Informação (Especialista)",
                "PGLS - MBA em Gestão em Turismo e Desenvolvimento Sustentável (Especialista)",
                "PGLS - MBA em Gestão Pública (Especialista)",
                "PGLS - Mecatrônica Industrial (Especialista)",
                "PGLS - Metodologia da Educação Superior (Especialista)",
                "PGLS - Metodologia de Língua Inglesa (Especialista)",
                "PGLS - Metodologia do Ensino da Educação Física (Especialista)",
                "PGLS - Metodologia do Ensino de Arte (Especialista)",
                "PGLS - Metodologia do Ensino de Biologia (Especialista)",
                "PGLS - Metodologia do Ensino de Ciências Naturais (Especialista)",
                "PGLS - Metodologia do Ensino de Filosofia (Especialista)",
                "PGLS - Metodologia do Ensino de Física (Especialista)",
                "PGLS - Metodologia do Ensino de Geografia (Especialista)",
                "PGLS - Metodologia do Ensino de História (Especialista)",
                "PGLS - Metodologia do Ensino de Língua Portuguesa e suas Literaturas (Especialista)",
                "PGLS - Metodologia do Ensino de Matemática do Ensino Fundamental (Especialista)",
                "PGLS - Metodologia do Ensino de Matemática do Ensino Médio (Especialista)",
                "PGLS - Metodologia do Ensino de Química (Especialista)",
                "PGLS - Metodologia do Ensino de Sociologia (Especialista)",
                "PGLS - Odontologia Hospitalar (Especialista)",
                "PGLS - Odontologia para Pacientes com Necessidades Especiais (Especialista)",
                "PGLS - Odontopediatria (Especialista)",
                "PGLS - Ortodontia (Especialista)",
                "PGLS - Pesquisas Educacionais (Especialista)",
                "PGLS - Planejamento Governamental e Orçamento Público (Especialista)",
                "PGLS - Políticas Governamentais",
                "PGLS - Processos e Tecnologias de Fabricação Mecânica.;Especialista",
                "PGLS - Prótese Dentária (Especialista)",
                "PGLS - Psicologia da Saúde (Especialista)",
                "PGLS - Relações Internacionais e Geopolítica da Pan-Amazônia (Especialista)",
                "PGLS - Residência em Cirurgia e Traumatologia Bucomaxilofacial (Especialista)",
                "PGLS - Residência em Enfermagem (Especialista)",
                "PGLS - Residência em Enfermagem em Urgência e Emergência (Especialista)",
                "PGLS - Residência em Enfermagem Neonatal (Especialista)",
                "PGLS - Residência em Enfermagem Obstétrica (Especialista)",
                "PGLS - Residência Médica em Pediatria (Especialista)",
                "PGLS - Residência Multiprofissional em Saúde da Família e Comunidade (Especialista)",
                "PGLS - Saúde Coletiva (Especialista)",
                "PGLS - Saúde da Família (Especialista)",
                "PGLS - Saúde do Trabalhador e Meio Ambiente (Especialista)",
                "PGLS - Saúde Indígena (Especialista)",
                "PGLS - Saúde Mental",
                "PGLS - Segurança Pública e do Cidadão (Especialista)",
                "PGLS - Sexualidade",
                "PGLS - Sistemas Móveis e Convergentes em Telefonia Celular (Especialista)",
                "PGLS - Turismo e Desenvolvimento Local (Especialista)",
                "PGLS - Vigilância em Saúde do Trabalhador (Especialista)",
                "PGSS - Biodiversidade e Biotecnologia (Doutorado)",
                "PGSS - Bioquimica e Biologia Molecular (Mestrado)",
                "PGSS - Biotecnologia e Recursos Naturais da Amazônia (Mestrado)",
                "PGSS - Ciências Aplicada à Dermatologia (Mestrado)",
                "PGSS - Ciências Aplicadas à Hematologia (Mestrado)",
                "PGSS - Clima e Ambiente (Mestrado)",
                "PGSS - Clima e Ambiente (Doutorado)",
                "PGSS - Direito Ambiental (Mestrado)",
                "PGSS - Doenças Tropicais e Infecciosas (Mestrado)",
                "PGSS - Doenças Tropicais e Infecciosas (Doutorado)",
                "PGSS - Doutorado em Bioquímica e Biologia Molecular (Doutorado)",
                "PGSS - Doutorado Interinstitucional em Engenharia Química;Doutor",
                "PGSS - Educação em Ciências na Amazônia (Mestrado)",
                "PGSS - Emuação em Educação em Ciências e Matemática;Doutor",
                "PGSS - Ensino de Ciências na Amazônia (Mestrado)",
                "PGSS - Ensino de Ciências na Amazônia (Mestrado)",
                "PGSS - Gestão e Regulação de Recursos Hídricos (Mestrado)",
                "PGSS - Gestão e Regulação de Recursos Hídricos (Mestrado)",
                "PGSS - Letras e Artes (Mestrado)",
                "PGSS - Letras e Artes (Mestrado)",
                "PGSS - Mestrado do Programa Interinstitucional em Administração Pública (Mestrado)",
                "PGSS - Mestrado Interdisciplinar em Ciências Humanas (Mestrado)",
                "PGSS - Mestrado Interinstitucional em Engenharia Química (Mestrado)",
                "PGSS - Mestrado Profissional em Saúde da Família (Mestrado)",
                "PGSS - Residência em Enfermagem Urgência e Emergência (Especialista)",
                "PGSS - Segurança Pública",
                "Cursos Extensão em Iniciação Musical da UEA"
            ];
            $("#cursoPrograma").autocomplete({
                source: listaCurso
            });
        });

    //    $(document).ready(function(){
    var i=1;
    var x=1;
    
    $('.orientador_add').click(function(){
        i++;
        $('.campoNome').append('<div name="qtdOrientador" value="'+i+'" id="row'+i+'" >' +
            '                   <div  class="col-md-6 divFloat formTop">\n' +
            '                       <input type="text" class="form-control " name="nomeOrientador'+i+'" maxlength="100" value=""' +
            '                                   id="nomeOrientador">\n' +
            '                    </div>' +
            '                    <div class="col-md-2 formTop">' +
            '                       <button type="button" name="remove" id="'+i+'" ' +
            '                               class="btn btn-danger btn_remove">X</button>' +
            '                    </div>' +
            '                   </div>');
    });

    $('.co-orientador_add').click(function(){
        x++;
        $('.nomeCoOrientador').append('<div name="qtdCoOrientador" value="'+i+'" id="row'+i+'" >' +
            '                   <div  class="col-md-6 divFloat formTop">\n' +
            '                       <input type="text" class="form-control " name="nomeCoOrientador[]" maxlength="100" value=""' +
            '                                   id="nomeCoOrientador">\n' +
            '                    </div>' +
            '                    <div class="col-md-2 formTop">' +
            '                       <button type="button" name="remove" id="'+x+'" ' +
            '                               class="btn btn-danger btn_remove">X</button>' +
            '                    </div>' +
            '                   </div>');
    });

    $(document).on('click', '.btn_remove', function(){
        var button_id = $(this).attr("id");
        $('#row'+button_id+'').remove();

    });

    //        $('#submit').click(function(){
    //            $.ajax({
    //                url:"name.php",
    //                method:"POST",
    //                data:$('#add_name').serialize(),
    //                success:function(data)
    //                {
    //                    alert(data);
    //                    $('#add_name')[0].reset();
    //                }
    //            });
    //        });
    //    });

</script>

