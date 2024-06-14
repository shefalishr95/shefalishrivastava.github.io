library(shinydashboard)

ui <- dashboardPage(
  dashboardHeader(
    #title = div("Shefali Shrivastava",style = "font-family: 'Open Sans', sans-serif; color: #355070; font-size: 32px; text-align: left;"),
    #titleWidth = 1500
  ),
  dashboardSidebar(disable = TRUE),
  dashboardBody(
    tags$head(
      tags$style(
        HTML('
             @import url(\'https://fonts.googleapis.com/css?family=Open+Sans:400\');
             body, .skin-blue .main-header .navbar {
               font-family: "Open Sans", sans-serif;
             } 
             .skin-blue .main-header .logo {
             background-color: #355070;
             }
             .skin-blue .main-header .logo:hover {
               background-color: #355070; /* Same as default background color */
               color: black; /* Same as default text color */
             }
             .main-header .logo {
             font-family: "Open Sans", sans-serif;
             font-weight: bold;
             font-size: 36px;
             }
             .skin-blue .main-header .navbar {
               background-color: #355070; /* Background color */
             }
             .content-wrapper, .right-side {
               background-color: #355070 ; /* Content background color */
               color: #000000; /* Text color */
             }
             ')
      )
    ),
    box(
      width = 12,
      tabBox(
        width = 12,
        id = "tabBox_next_previous",
        tabPanel(
          "About Me",
          fluidRow(
            column(5, align = "center",
                   br(),
                   br(),
                   br(),
                   br(),
                   h1("Shefali Shrivastava",
                      style = "font-family: 'Open Sans', sans-serif;"),
                   br(),
                   br(),
                   img(src = "image4.jpg", width="50%", height="auto"),
                   br(),
                   br(),
                   br(),
                   a(href = "https://www.linkedin.com/in/shefali-shrivastava-120b02bb/", target = "_blank", style = "font-family: 'Open Sans', sans-serif; font-size: 16px;", "LinkedIn"),
                   " | ",
                   a(href = "https://github.com/shefalishr95", target = "_blank", style = "font-family: 'Open Sans', sans-serif; font-size: 16px;", "GitHub")
            ),
            column(5, 
                   br(),
                   br(),
                   br(),
                   p("Shefali Shrivastava is excited by all things data - whether it's harnessing big data for strategic interventions in education or
                   analyzing experimental data for statistical insights. Pursuing MS in Applied Statistics from Columbia University, Shefali possesses a diverse skill 
                   set encompassing statistical analysis methodologies and tools, applied machine learning, and database management systems. She
                   is also proficient in Python, R and SQL as well as statistical analysis tools such as STATA and SPSS. Shefali's career journey spans 
                   diverse sectors, where she has excelled in roles such as Consultant (on secondment) at the Boston Consulting Group and Data Analytics Fellow 
                   at the District of Columbia Public Schools. Her hands-on experience in building dynamic dashboards, implementing data pipelines, and 
                   leading strategic interventions underscores her ability to translate data insights into actionable strategies.",
                     style = "font-family: 'Open Sans', sans-serif; font-size: 16px;"
                   ), br(),
                   p("Currently, Shefali  serves as a part-time Teaching Assistant in the Economics Department at Barnard College, 
                   supporting over 100 undergraduate students. Simultaneously, she is engaged as a Graduate Fellow, collaborating 
                   with a team to create an innovative and highly interactive website aimed at democratizing economics education.",
                     style = "font-family: 'Open Sans', sans-serif; font-size: 16px;"),
                   
                 #  p("Shefali Shrivastava is a skilled professional with a diverse background in data analytics, education consultancy, and business development. 
                  # She is currently pursuing MS in Applied Statistics from Columbia University, where she has maintained a GPA of 3.87/4. 
                   #She possesses proficiency in various technical skills, including programming languages such as Python and R, database management, 
                   #visualization tools, and statistical analysis tools. Her professional journey reflects her commitment to data-driven solutions and 
                   #impactful projects across different sectors and regions.",style = "font-family: 'Open Sans', sans-serif; font-size: 16px;"),
                   #br(),
                   #p("With a solid background in data analytics and a passion for education, Shefali has made significant contributions to organizations such 
                    # as the District of Columbia Public Schools and the Center for Public Research and Leadership at Columbia Law School.
                    # As a Data Analytics Fellow, she led the development of a dynamic Power BI dashboard to improve staff evaluation practices across 
                    # schools and automated data transformation processes using Power Query. Additionally, in her role as a Graduate Consultant, 
                    # Shefali implemented cost-saving measures through data automation and conducted A/B tests to evaluate educational interventions. 
                    # Her experience extends to strategic interventions in public education systems during her tenure at Boston Consulting Group, 
                    # where she collaborated with government officials and external organizations. Through her innovative projects and strategic initiatives, 
                    # Shefali continues to make a significant impact in the fields of data analytics and education consultancy.",
                    # style = "font-family: 'Open Sans', sans-serif; font-size: 16px;"
                   #)
            )
          ),
         
          tags$hr(style = "border: none; background-color: transparent; height: 10px;"), 
          fluidRow(
                   box(
                     width = 12,
                     title = strong("Technical Skills"),
                     style = "font-family: 'Open Sans', sans-serif; font-size: 16px;",
                     em("Programming: "),"Python (Scikit-learn, XGBoost, spaCy, NumPy, Pandas), SQL, R (Shiny, tidyverse, caret, tm)",
                     br(),
                     br(),
                     em("Visualization tools: "),"Power BI, Python (Seaborn, Matplotlib), R (ggplot2, Leaflet)",
                     br(),
                     br(),
                     em("Database management & Processing: "), "Google Cloud, PostgreSQL, Power Query",
                     br(),
                     br(),
                     em("Tools: "), "GitHub, Colab/GCP, Jupyter Notebook, Visual Studio, R Studio; Other statistical analysis tools: STATA, SPSS"
                   )
            )
          
          
          
          
          
        ),
        tabPanel(
          "Career",
          fluidRow(
            column(12, h4(style = "font-family: 'Open Sans', sans-serif; font-size: 16px;", "Please contact me at ", a("shefali.s@columbia.edu", href = "mailto:shefali.s@columbia.edu"), " for my resume."))
          )
        )
        
        ,
        tabPanel(
          "Projects",
          tags$hr(style = "border: none; background-color: transparent; height: 10px;"),
          fluidRow(
            column(12, h4("A brief summary of my technical projects.", style = "font-family: 'Open Sans', sans-serif;"))
          ),
          tags$hr(style = "border: none; background-color: transparent; height: 10px;"),
        
          fluidRow(
         column(width = 6,
                box(
                  width = 12,
                  title = strong("Object detection for self-autonomous vehicles using YOLOv8 and RT-DETR"),
                  collapsible = TRUE,
                  status = "primary",
                  collapsed = TRUE,
                  p("Implemented YOLOv8 and RT-DETR models on traffic and road signs database (10,000 images) to detect objects in real-time for self-driving vehicles; resulted in an uplift of 20% in mean average precision (mAP50)."),
                  p(a(href = "https://github.com/shefalishr95/Object-detection-using-YOLOv8-and-RT-DETR", target = "_blank", style = "font-family: 'Open Sans', sans-serif; font-size: 16px;", "Link here")),
                  style = "font-size: 16px; text-align: justify; color: black; padding: 5px; border-radius: 10px; margin-bottom: 2px; margin-top: 2px;"
                ),
                box(
                  width = 12,
                  title = strong("Mapping Disaster Recurrence: Geospatial Visualization and Analysis using RShiny and SQL"),
                  collapsible = TRUE,
                  status = "primary",
                  collapsed = TRUE,
                  p("Built an interactive web app on RShiny with geospatial visualizations of common disasters in the United States over the past 100 years for 
                    prospective home buyers; sourced data through static SQL queries to the FEMA database using PostgreSQL."),
                  p(a(href = "https://github.com/shefalishr95/ADS-Project2-ShinyApp", target = "_blank", style = "font-family: 'Open Sans', sans-serif; font-size: 16px;", "Link here")),
                  style = "font-size: 16px; text-align: justify; color: black; padding: 5px; border-radius: 10px; margin-bottom: 2px; margin-top: 2px;"
                )
      
      ),
      column(width = 6,
             box(
               width = 12,
               title = strong("What actions make us happy (Information extraction using Natural Language Processing)"),
               collapsible = TRUE,
               status = "primary",
               collapsed = TRUE,
               p("Conducted heuristic-based analysis of linguistic dependency trees to extract deliberate actions associated with happiness on crowdsourced database of 
                 100k+ happy ‘moments’; parsed results using DependencyMatcher (spaCy) and visualized data."),
               p(a(href = "https://github.com/shefalishr95/ads-fall2023-project1-shefalishr95", target = "_blank", style = "font-family: 'Open Sans', sans-serif; font-size: 16px;", "Link here")),
               style = "font-size: 16px; text-align: justify; color: black; padding: 5px; border-radius: 10px; margin-bottom: 2px; margin-top: 2px;"
             ),
             box(
               width = 12,
               title = strong("Automatic data upload from Qualtrics on Google Cloud/BigQuery"),
               collapsible = TRUE,
               status = "primary",
               collapsed = TRUE,
               p("Built an ETL data pipeline to automate daily processing and uploading of raw data from Qualtrics API to
                 BigQuery using Google Cloud Functions and Scheduler."),
               p(a(href = "https://github.com/shefalishr95/Automatic_Qualtrics_Upload_on_GCP", target = "_blank", style = "font-family: 'Open Sans', sans-serif; font-size: 16px;", "Link here")),
               style = "font-size: 16px; text-align: justify; color: black; padding: 5px; border-radius: 10px; margin-bottom: 2px; margin-top: 2px;"
             )
      )
        )
      )
    )
  )
)
)

server <- function(input, output, session) {
  # Server logic goes here
}

shinyApp(ui, server)
