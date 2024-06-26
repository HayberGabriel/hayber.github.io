library(shiny)
library(bslib)
library(shinydashboard)

# Links para os painéis PowerBI
linkHermes <- "https://app.powerbi.com/view?r=eyJrIjoiMmQ0NmE2ZjUtNjRkMi00ZjI3LWFlM2QtN2RhNGJmYTBjMjFlIiwidCI6IjYxOGE5ZWVkLWYxM2MtNDU4Ny1iODgzLTAwNWZiY2Q4N2FlZCJ9"
linkHalo <- "https://app.powerbi.com/view?r=eyJrIjoiMmNlMTIzOWMtODJhNC00ZjYyLTlhMmEtMTJiN2RhMDZhYWVjIiwidCI6IjYxOGE5ZWVkLWYxM2MtNDU4Ny1iODgzLTAwNWZiY2Q4N2FlZCJ9"
linkRankTransCnj <- "https://app.powerbi.com/view?r=eyJrIjoiZTFiYTZjZGQtMjA2NC00MjUwLTkyMjQtMGU1N2QwMTZlMDJmIiwidCI6IjYxOGE5ZWVkLWYxM2MtNDU4Ny1iODgzLTAwNWZiY2Q4N2FlZCJ9"
linkPremioCnJQual <- "https://app.powerbi.com/view?r=eyJrIjoiYzIyMzIzZDctM2RhYy00NTFiLWJjNDgtNTFiODcyNzNhMjZhIiwidCI6IjYxOGE5ZWVkLWYxM2MtNDU4Ny1iODgzLTAwNWZiY2Q4N2FlZCJ9"
linkConformidade <- "https://app.powerbi.com/view?r=eyJrIjoiZWFmM2UyNWYtZjlkMi00NTIyLTkxZTktOTg3MDQxMDBjYWI4IiwidCI6IjYxOGE5ZWVkLWYxM2MtNDU4Ny1iODgzLTAwNWZiY2Q4N2FlZCJ9"
linkSemNacTrab22 <- "https://app.powerbi.com/view?r=eyJrIjoiOTZhZjcwNjgtZGYzZC00YmE3LWJiM2UtZDVjNmZjNjc1ZWFmIiwidCI6IjYxOGE5ZWVkLWYxM2MtNDU4Ny1iODgzLTAwNWZiY2Q4N2FlZCJ9"
linkSemNacTrab23 <- "https://app.powerbi.com/view?r=eyJrIjoiZDdhZDVhZjctYzVlMC00MzRjLWFkOTQtZjQyYjVhYTY1OTk5IiwidCI6IjYxOGE5ZWVkLWYxM2MtNDU4Ny1iODgzLTAwNWZiY2Q4N2FlZCJ9"
linkSemNacConc23 <- "https://app.powerbi.com/view?r=eyJrIjoiMmE0NTMzYjItNzRhNS00NGY2LWJhZDYtMTE2MGQxOWVjNDVjIiwidCI6IjYxOGE5ZWVkLWYxM2MtNDU4Ny1iODgzLTAwNWZiY2Q4N2FlZCJ9"
linkMetasNacCnj19 <- "https://app.powerbi.com/view?r=eyJrIjoiYmNjYTRiZGMtNTVlYi00ZDU5LTk3YWQtMjNjZGIyNDJjZjhjIiwidCI6IjYxOGE5ZWVkLWYxM2MtNDU4Ny1iODgzLTAwNWZiY2Q4N2FlZCJ9"
linkMetasNacCnj20 <- "https://app.powerbi.com/view?r=eyJrIjoiMGJiYTI0M2MtOTIzYS00MGJkLTkwYjItMjA5OGFiNWZiMWU1IiwidCI6IjYxOGE5ZWVkLWYxM2MtNDU4Ny1iODgzLTAwNWZiY2Q4N2FlZCJ9"
linkMetasNacCnj21 <- "https://app.powerbi.com/view?r=eyJrIjoiOGIzY2Q1YzUtNzc3OS00MDMwLTllODEtODI1YmNkMjU2ZGZkIiwidCI6IjYxOGE5ZWVkLWYxM2MtNDU4Ny1iODgzLTAwNWZiY2Q4N2FlZCJ9"
linkMetasNac22 <- "https://app.powerbi.com/view?r=eyJrIjoiZDYzZmE4ZTctYWFmYy00NTYyLThhYmEtYWNhNTY5YmQ3NDQwIiwidCI6IjYxOGE5ZWVkLWYxM2MtNDU4Ny1iODgzLTAwNWZiY2Q4N2FlZCJ9"
linkMetasNac23 <- "https://app.powerbi.com/view?r=eyJrIjoiYzY3NzEwOTgtMzdjZS00MGJkLWFkNjctODc0MTViNWFmZmExIiwidCI6IjYxOGE5ZWVkLWYxM2MtNDU4Ny1iODgzLTAwNWZiY2Q4N2FlZCJ9"
linkMetasNac24 <- "https://app.powerbi.com/view?r=eyJrIjoiMmYzNDljM2QtY2YxZC00MTJhLWExMDEtYjRhY2MzZjA3NmYzIiwidCI6IjYxOGE5ZWVkLWYxM2MtNDU4Ny1iODgzLTAwNWZiY2Q4N2FlZCJ9"
linkMetPlanEst23 <- "https://app.powerbi.com/view?r=eyJrIjoiYzY3NzEwOTgtMzdjZS00MGJkLWFkNjctODc0MTViNWFmZmExIiwidCI6IjYxOGE5ZWVkLWYxM2MtNDU4Ny1iODgzLTAwNWZiY2Q4N2FlZCJ9"
linkMetPlanEst22 <- "https://app.powerbi.com/view?r=eyJrIjoiZDYzZmE4ZTctYWFmYy00NTYyLThhYmEtYWNhNTY5YmQ3NDQwIiwidCI6IjYxOGE5ZWVkLWYxM2MtNDU4Ny1iODgzLTAwNWZiY2Q4N2FlZCJ9"
linkMet22Csjt <- "https://app.powerbi.com/view?r=eyJrIjoiMDA4YWM3NzAtZDhjMy00YzlhLTg2NDQtZmExYTllYmYyZjdjIiwidCI6ImNjZDk5MTdlLWNiNDctNDJhNS1hMjYyLWUyMjcyZGNlZjZhYiJ9"
linkMet23Csjt <- "https://app.powerbi.com/view?r=eyJrIjoiZTYzNmJlODktNjkyNi00NWFjLTg2MzEtYWVmMzdhNWY3OTQ1IiwidCI6ImNjZDk5MTdlLWNiNDctNDJhNS1hMjYyLWUyMjcyZGNlZjZhYiJ9"
linkJN <- "https://app.powerbi.com/view?r=eyJrIjoiNmRmNjRmNjktZThjYi00M2RmLWIwMDktNzYzNTAyN2I4ZWQ3IiwidCI6IjYxOGE5ZWVkLWYxM2MtNDU4Ny1iODgzLTAwNWZiY2Q4N2FlZCJ9"
linkTRT7Números <- "https://app.powerbi.com/view?r=eyJrIjoiNTZhZTIzY2QtMGY2My00NDZkLWE4MDUtMWI3Y2ViMTRiNzQ5IiwidCI6IjYxOGE5ZWVkLWYxM2MtNDU4Ny1iODgzLTAwNWZiY2Q4N2FlZCJ9"
linkProcAptJulg <- "https://app.powerbi.com/view?r=eyJrIjoiYjliODY4ZWUtOTZkYy00MjE0LWI1N2MtYzEyYTJkODRkZTJiIiwidCI6IjYxOGE5ZWVkLWYxM2MtNDU4Ny1iODgzLTAwNWZiY2Q4N2FlZCJ9"
linkMovProcOrgJulg <- "https://app.powerbi.com/view?r=eyJrIjoiMWVmMTNhMzktYmQ3My00MTViLWIzODUtOTA5NjUzZTg4YWVhIiwidCI6IjYxOGE5ZWVkLWYxM2MtNDU4Ny1iODgzLTAwNWZiY2Q4N2FlZCJ9"
linkRecDist2Gr <- "https://app.powerbi.com/view?r=eyJrIjoiYjY3NTdhNmMtN2Q1ZS00YmQyLWJmZTUtYTIyYTQzYTAyNjYwIiwidCI6IjYxOGE5ZWVkLWYxM2MtNDU4Ny1iODgzLTAwNWZiY2Q4N2FlZCJ9"
linkExec <- "https://app.powerbi.com/view?r=eyJrIjoiY2U2OTVmODAtOTRlNS00YTljLTk5YmEtZmYzM2JjNzk1M2E0IiwidCI6IjYxOGE5ZWVkLWYxM2MtNDU4Ny1iODgzLTAwNWZiY2Q4N2FlZCJ9"
linkSemNacConc22 <- "https://app.powerbi.com/view?r=eyJrIjoiYTVlM2ZiMzItMTBhMC00MDllLThhMTEtZWVjOGFmMjc2MmVkIiwidCI6IjYxOGE5ZWVkLWYxM2MtNDU4Ny1iODgzLTAwNWZiY2Q4N2FlZCJ9"
linkSelExc <- "https://app.powerbi.com/view?r=eyJrIjoiZmY1YzRjMDgtODJmMi00MDQ2LTk4NTgtN2VmOWJhMmZmYjZkIiwidCI6IjYxOGE5ZWVkLWYxM2MtNDU4Ny1iODgzLTAwNWZiY2Q4N2FlZCJ9"
linkProjInst <- "https://app.powerbi.com/view?r=eyJrIjoiMjE3MjRkOTMtYWFiZS00MTgxLWFlZjgtYTViYTY0ZDYwZDg5IiwidCI6IjYxOGE5ZWVkLWYxM2MtNDU4Ny1iODgzLTAwNWZiY2Q4N2FlZCJ9"
linkPendFinTranPrio <- "https://app.powerbi.com/view?r=eyJrIjoiODcwNTgyNDctODMxYS00MGExLWJiZGItMzJmYWExNjRkYmZhIiwidCI6IjYxOGE5ZWVkLWYxM2MtNDU4Ny1iODgzLTAwNWZiY2Q4N2FlZCJ9"
linkPai7iGest <- "https://app.powerbi.com/view?r=eyJrIjoiYjExZGVmZTgtNjU0NC00MDAwLWJkYzgtNThlYjQwYTJhMDNhIiwidCI6IjYxOGE5ZWVkLWYxM2MtNDU4Ny1iODgzLTAwNWZiY2Q4N2FlZCJ9"
linkSuperPlat <- "https://sgge.shinyapps.io/home/"
linkiGestRMD <- "https://igest.shinyapps.io/home/"

alturaTelaBi <- 700
linkLogo <- "https://i.postimg.cc/kghg9vnP/coord-Logo.png"
# UI do aplicativo
ui <- dashboardPage(
    title = "Painéis judiciais",
    dashboardHeader(title = tags$img(src=linkLogo,
                                width="200px",
                                height="50px"
                               ),
                    titleWidth = "300px"
                    
                    ),
    dashboardSidebar(
        width = 300,
        tags$head(
            tags$style(HTML("
            
        .skin-blue .content {
            background-color: #ececec;
        }
        
        .skin-blue .navbar .sidebar-toggle {
          height: 50px;
          margin-top: 10px;
        }
        
        .skin-blue .main-header .navbar .sidebar-toggle:hover {
          background-color: #0067a0;
          border-radius: 20%;
        }
        
        .skin-blue .main-header { /* Barra superior*/
          background-color: #01426a; /* Altere esta cor para a desejada */
        }
        
        .skin-blue .main-header .navbar { /* Barra superior*/
          background-color: #01426a; /* Altere esta cor para a desejada */
          height: 70px;
        }
        
        .skin-blue .main-header .logo { 
          background-color: #01426a;
          margin-top: 10px
        }
        
        .skin-blue .main-header .logo:hover { /* Estilo para o título Painéis Judiciais */
          background-color: #01426a; /* Altere esta cor para a desejada quando passa o cursor em cima */
        }
        
        .sidebar-menu .treeview-menu > li.active > a {
          background-color: #007b5f !important; /* Altere esta cor para a desejada */
        }
         
        .skin-blue .main-sidebar {
          background-color: #01426a;
          margin-top: 20px;
        }
        
        .skin-blue .main-sidebar .sidebar .sidebar-menu .active a {
          background-color: #01426a;
        }
        
        .skin-blue .main-sidebar .sidebar .sidebar-menu a {
          background-color: #01426a;
          color: #ececec;
        }
        
        .skin-blue .main-sidebar .sidebar .sidebar-menu a > span {
          font-weight: bold;
          color: #ececec;
        }
        
        .skin-blue .main-sidebar .sidebar .sidebar-menu a:hover {
          background-color: #0067a0;
        }
        
      "))
        ),
        sidebarMenu(
            menuItem("Gestão Judicial",
                     menuSubItem("Painel Hermes", tabName = "hermes", icon = icon("chart-bar")),
                     menuSubItem("Painel Halo", tabName = "halo", icon = icon("chart-line")),
                     menuSubItem("Semana Exec. Trabalhista 2022", tabName = "sem_nac_trab22", icon = icon("calendar-alt")),
                     menuSubItem("Semana Exec. Trabalhista 2023", tabName = "sem_nac_trab23", icon = icon("calendar-alt")),
                     menuSubItem("Semana Conciliação 2023", tabName = "sem_nac_conc23", icon = icon("handshake")),
                     menuSubItem("Semana Conciliação 2022", tabName = "SemNacConc22", icon = icon("handshake")),
                     menuSubItem("Aptos para Julgamento", tabName = "proc_apt_julg", icon = icon("gavel")),
                     menuSubItem("Movimentação Processual", tabName = "mov_proc_org_julg", icon = icon("exchange-alt")),
                     menuSubItem("Recursos Distribuídos 2º Grau", tabName = "rec_dist_2gr", icon = icon("balance-scale")),
                     menuSubItem("Execução", tabName = "Exec", icon = icon("balance-scale")),
                     menuSubItem("Pendentes Idosos", tabName = "PendFinalizIdosos", icon = icon("person-cane"))
                     ),
            menuItem("Conformidade e Transparência",
                     menuSubItem("Rankings Transparência CNJ", tabName = "rank_trans_cnj", icon = icon("chart-pie")),
                     menuSubItem("Prêmio CNJ Qualidade", tabName = "premio_cnj_qual", icon = icon("trophy")),
                     menuSubItem("Conformidade", tabName = "conformidade", icon = icon("clipboard-check")),
                     menuSubItem("Selo Excelência", tabName = "SelExc", icon = icon("award"))
                     ),
            menuItem("Gestão Estratégica",
                     menuSubItem("Metas Nacionais CNJ 2019", tabName = "metas_nac_cnj19", icon = icon("bullseye")),
                     menuSubItem("Metas Nacionais CNJ 2020", tabName = "metas_nac_cnj20", icon = icon("bullseye")),
                     menuSubItem("Metas Nacionais CNJ 2021", tabName = "metas_nac_cnj21", icon = icon("bullseye")),
                     menuSubItem("Metas Nacionais CNJ 2022", tabName = "metas_nac22", icon = icon("bullseye")),
                     menuSubItem("Metas Nacionais CNJ 2023", tabName = "metas_nac23", icon = icon("bullseye")),
                     menuSubItem("Metas Nacionais CNJ 2024", tabName = "metas_nac24", icon = icon("bullseye")),
                     menuSubItem("Planejamento Estratégico 2023", tabName = "met_plan_est23", icon = icon("clipboard-list")),
                     menuSubItem("Planejamento Estratégico 2022", tabName = "met_plan_est22", icon = icon("clipboard-list")),
                     menuSubItem("Metas 2022 CSJT", tabName = "met22_csjt", icon = icon("clipboard-list")),
                     menuSubItem("Metas 2023 CSJT", tabName = "met23_csjt", icon = icon("clipboard-list")),
                     menuSubItem("Justiça em Números", tabName = "jn", icon = icon("chart-area")),
                     menuSubItem("TRT7 em Números", tabName = "trt7_numeros", icon = icon("chart-area")),
                     menuSubItem("Projetos Institucionais", tabName = "ProjInst", icon = icon("building-columns")),  
                     menuSubItem("Painel 7 iGest", tabName = "PAI7Gestao", icon = icon("balance-scale")),
                     menuSubItem("Super Plataforma", tabName = "SuperPlataforma", icon = icon("balance-scale")),
                     menuSubItem("iGest RMD", tabName = "iGestRMD", icon = icon("balance-scale"))
                    )
                )
        ),
    dashboardBody(
        tabItems(
            tabItem(tabName = "hermes", uiOutput("hermes")),
            tabItem(tabName = "halo", uiOutput("halo")),
            tabItem(tabName = "rank_trans_cnj", uiOutput("rank_trans_cnj")),
            tabItem(tabName = "premio_cnj_qual", uiOutput("premio_cnj_qual")),
            tabItem(tabName = "conformidade", uiOutput("conformidade")),
            tabItem(tabName = "sem_nac_trab22", uiOutput("sem_nac_trab22")),
            tabItem(tabName = "sem_nac_trab23", uiOutput("sem_nac_trab23")),
            tabItem(tabName = "sem_nac_conc23", uiOutput("sem_nac_conc23")),
            tabItem(tabName = "metas_nac_cnj19", uiOutput("metas_nac_cnj19")),
            tabItem(tabName = "metas_nac_cnj20", uiOutput("metas_nac_cnj20")),
            tabItem(tabName = "metas_nac_cnj21", uiOutput("metas_nac_cnj21")),
            tabItem(tabName = "metas_nac22", uiOutput("metas_nac22")),
            tabItem(tabName = "metas_nac23", uiOutput("metas_nac23")),
            tabItem(tabName = "metas_nac24", uiOutput("metas_nac24")),
            tabItem(tabName = "met_plan_est23", uiOutput("met_plan_est23")),
            tabItem(tabName = "met_plan_est22", uiOutput("met_plan_est22")),
            tabItem(tabName = "met22_csjt", uiOutput("met22_csjt")),
            tabItem(tabName = "met23_csjt", uiOutput("met23_csjt")),
            tabItem(tabName = "jn", uiOutput("jn")),
            tabItem(tabName = "trt7_numeros", uiOutput("trt7_numeros")),
            tabItem(tabName = "proc_apt_julg", uiOutput("proc_apt_julg")),
            tabItem(tabName = "mov_proc_org_julg", uiOutput("mov_proc_org_julg")),
            tabItem(tabName = "rec_dist_2gr", uiOutput("rec_dist_2gr")),
            tabItem(tabName = "Exec", uiOutput("Exec")),
            tabItem(tabName = "SemNacConc22", uiOutput("SemNacConc22")),
            tabItem(tabName = "SelExc", uiOutput("SelExc")),
            tabItem(tabName = "ProjInst", uiOutput("ProjInst")),
            tabItem(tabName = "PendFinalizIdosos", uiOutput("PendFinalizIdosos")),
            tabItem(tabName = "PAI7Gestao", uiOutput("PAI7Gestao")),
            tabItem(tabName = "SuperPlataforma", uiOutput("SuperPlataforma")),
            tabItem(tabName = "iGestRMD", uiOutput("iGestRMD"))
        )
    )
)

# Server do aplicativo
server <- function(input, output, session) {
    output$hermes <- renderUI({
        tags$iframe(src = linkHermes, height = alturaTelaBi, width = "100%", AllowFullScreen="true")
    })
    output$halo <- renderUI({
        tags$iframe(src = linkHalo, height = alturaTelaBi, width = "100%", AllowFullScreen="true")
    })
    output$rank_trans_cnj <- renderUI({
        tags$iframe(src = linkRankTransCnj, height = alturaTelaBi, width = "100%", AllowFullScreen="true")
    })
    output$premio_cnj_qual <- renderUI({
        tags$iframe(src = linkPremioCnJQual, height = alturaTelaBi, width = "100%", AllowFullScreen="true")
    })
    output$conformidade <- renderUI({
        tags$iframe(src = linkConformidade, height = alturaTelaBi, width = "100%", AllowFullScreen="true")
    })
    
    output$sem_nac_trab22 <- renderUI({
        tags$iframe(src = linkSemNacTrab22, height = alturaTelaBi, width = "100%", AllowFullScreen="true")
    })
    
    output$sem_nac_trab23 <- renderUI({
        tags$iframe(src = linkSemNacTrab23, height = alturaTelaBi, width = "100%", AllowFullScreen="true")
    })
    output$sem_nac_conc23 <- renderUI({
        tags$iframe(src = linkSemNacConc23, height = alturaTelaBi, width = "100%", AllowFullScreen="true")
    })
    output$metas_nac_cnj19 <- renderUI({
        tags$iframe(src = linkMetasNacCnj19, height = alturaTelaBi, width = "100%", AllowFullScreen="true")
    })
    output$metas_nac_cnj20 <- renderUI({
        tags$iframe(src = linkMetasNacCnj20, height = alturaTelaBi, width = "100%", AllowFullScreen="true")
    })
    output$metas_nac_cnj21 <- renderUI({
        tags$iframe(src = linkMetasNacCnj21, height = alturaTelaBi, width = "100%", AllowFullScreen="true")
    })
    output$metas_nac22 <- renderUI({
        tags$iframe(src = linkMetasNac22, height = alturaTelaBi, width = "100%", AllowFullScreen="true")
    })
    output$metas_nac23 <- renderUI({
        tags$iframe(src = linkMetasNac23, height = alturaTelaBi, width = "100%", AllowFullScreen="true")
    })
    output$metas_nac24 <- renderUI({
        tags$iframe(src = linkMetasNac24, height = alturaTelaBi, width = "100%", AllowFullScreen="true")
    })
    output$met_plan_est23 <- renderUI({
        tags$iframe(src = linkMetPlanEst23, height = alturaTelaBi, width = "100%", AllowFullScreen="true")
    })
    output$met_plan_est22 <- renderUI({
        tags$iframe(src = linkMetPlanEst22, height = alturaTelaBi, width = "100%", AllowFullScreen="true")
    })
    output$met22_csjt <- renderUI({
        tags$iframe(src = linkMet22Csjt, height = alturaTelaBi, width = "100%", AllowFullScreen="true")
    })
    output$met23_csjt <- renderUI({
        tags$iframe(src = linkMet23Csjt, height = alturaTelaBi, width = "100%", AllowFullScreen="true")
    })
    output$jn <- renderUI({
        tags$iframe(src = linkJN, height = alturaTelaBi, width = "100%", AllowFullScreen="true")
    })
    output$trt7_numeros <- renderUI({
        tags$iframe(src = linkTRT7Números, height = alturaTelaBi, width = "100%", AllowFullScreen="true")
    })
    output$proc_apt_julg <- renderUI({
        tags$iframe(src = linkProcAptJulg, height = alturaTelaBi, width = "100%", AllowFullScreen="true")
    })
    output$mov_proc_org_julg <- renderUI({
        tags$iframe(src = linkMovProcOrgJulg, height = alturaTelaBi, width = "100%", AllowFullScreen="true")
    })
    output$rec_dist_2gr <- renderUI({
        tags$iframe(src = linkRecDist2Gr, height = alturaTelaBi, width = "100%", AllowFullScreen="true")
    })
    output$Exec <- renderUI({
        tags$iframe(src = linkExec, height = alturaTelaBi, width = "100%", AllowFullScreen="true")
    })
    output$SemNacConc22 <- renderUI({
        tags$iframe(src = linkSemNacConc22, height = alturaTelaBi, width = "100%", AllowFullScreen="true")
    })
    output$SelExc <- renderUI({
        tags$iframe(src = linkSelExc, height = alturaTelaBi, width = "100%", AllowFullScreen="true")
    })
    output$ProjInst <- renderUI({
        tags$iframe(src = linkProjInst, height = alturaTelaBi, width = "100%", AllowFullScreen="true")
    })
    output$PendFinalizIdosos <- renderUI({
        tags$iframe(src = linkPendFinTranPrio, height = alturaTelaBi, width = "100%", AllowFullScreen="true")
    })
    output$PAI7Gestao <- renderUI({
        tags$iframe(src = linkPai7iGest, height = alturaTelaBi, width = "100%", AllowFullScreen="true")
    })
    
    output$SuperPlataforma <- renderUI({
        tags$iframe(src = linkSuperPlat, height = alturaTelaBi, width = "100%", AllowFullScreen="true")
    })
    output$iGestRMD <- renderUI({
        tags$iframe(src = linkiGestRMD, height = alturaTelaBi, width = "100%", AllowFullScreen="true")
    })
}

# Executa o aplicativo
shinyApp(ui, server)