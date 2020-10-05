

#---- Please install the following libraries ----#'

#install.packages('shiny')
#install.packages('shinydashboard')
#install.packages('ggplot2')
#install.packages('dplyr')
#install.packages('plyr')
#install.packages('googleAnalyticsR')  
#install.packages('readr')
#install.packages('RGoogleAnalytics')



#-------------------------

library(shiny)
library(shinydashboard)
library(ggplot2)
library(dplyr)
library(plyr)
library(googleAnalyticsR)  
library(readr)
library(RGoogleAnalytics)


# ga_auth(new_user=TRUE)

df4 <- data.frame()
df6 <- data.frame()




dim1 <- c('ga:date','ga:userType','ga:sessionCount','ga:daysSinceLastSession','ga:userDefinedValue','ga:userBucket','ga:sessionDurationBucket','ga:referralPath','ga:fullReferrer','ga:campaign','ga:source','ga:medium','ga:sourceMedium','ga:keyword','ga:adContent','ga:socialNetwork','ga:hasSocialSourceReferral','ga:campaignCode','ga:goalCompletionLocation','ga:goalPreviousStep1','ga:goalPreviousStep2','ga:goalPreviousStep3','ga:browser','ga:browserVersion','ga:operatingSystem','ga:operatingSystemVersion','ga:mobileDeviceBranding','ga:mobileDeviceModel','ga:mobileInputSelector','ga:mobileDeviceInfo','ga:mobileDeviceMarketingName','ga:deviceCategory','ga:browserSize','ga:dataSource','ga:continent','ga:subContinent','ga:country','ga:region','ga:metro','ga:city','ga:latitude','ga:longitude','ga:networkDomain','ga:networkLocation','ga:cityId','ga:continentId','ga:countryIsoCode','ga:metroId','ga:regionId','ga:regionIsoCode','ga:subContinentCode','ga:flashVersion','ga:javaEnabled','ga:language','ga:screenColors','ga:sourcePropertyDisplayName','ga:sourcePropertyTrackingId','ga:screenResolution','ga:hostname','ga:pagePath','ga:pagePathLevel1','ga:pagePathLevel2','ga:pagePathLevel3','ga:pagePathLevel4','ga:pageTitle','ga:landingPagePath','ga:secondPagePath','ga:exitPagePath','ga:previousPagePath','ga:pageDepth','ga:searchUsed','ga:searchKeyword','ga:searchKeywordRefinement','ga:searchCategory','ga:searchStartPage','ga:searchDestinationPage','ga:searchAfterDestinationPage','ga:eventCategory','ga:eventAction','ga:eventLabel','ga:transactionId','ga:affiliation','ga:sessionsToTransaction','ga:daysToTransaction','ga:productSku','ga:productName','ga:productCategory','ga:currencyCode','ga:checkoutOptions','ga:internalPromotionCreative','ga:internalPromotionId','ga:internalPromotionName','ga:internalPromotionPosition','ga:orderCouponCode','ga:productBrand','ga:productCategoryHierarchy','ga:productCategoryLevelXX','ga:productCouponCode','ga:productListName','ga:productListPosition','ga:productVariant','ga:shoppingStage','ga:dimension1','ga:dimension2','ga:dimension3','ga:dimension4','ga:dimension5','ga:dimension6','ga:dimension7','ga:dimension8','ga:dimension9','ga:dimension10','ga:dimension11','ga:dimension12','ga:dimension13','ga:dimension14','ga:dimension15','ga:dimension16','ga:dimension17','ga:dimension18','ga:dimension19','ga:dimension20','ga:dimension21','ga:dimension22','ga:dimension23','ga:dimension24','ga:dimension25','ga:dimension26','ga:dimension27','ga:dimension28','ga:dimension29','ga:dimension30','ga:dimension31','ga:dimension32','ga:dimension33','ga:dimension34','ga:dimension35','ga:dimension36','ga:dimension37','ga:dimension38','ga:dimension39','ga:dimension40','ga:dimension41','ga:dimension42','ga:dimension43','ga:dimension44','ga:dimension45','ga:dimension46','ga:dimension47','ga:dimension48','ga:dimension49','ga:dimension50','ga:dimension51','ga:dimension52','ga:dimension53','ga:dimension54','ga:dimension55','ga:dimension56','ga:dimension57','ga:dimension58','ga:dimension59','ga:dimension60','ga:dimension61','ga:dimension62','ga:dimension63','ga:dimension64','ga:dimension65','ga:dimension66','ga:dimension67','ga:dimension68','ga:dimension69','ga:dimension70','ga:dimension71','ga:dimension72','ga:dimension73','ga:dimension74','ga:dimension75','ga:dimension76','ga:dimension77','ga:dimension78','ga:dimension79','ga:dimension80','ga:dimension81','ga:dimension82','ga:dimension83','ga:dimension84','ga:dimension85','ga:dimension86','ga:dimension87','ga:dimension88','ga:dimension89','ga:dimension90','ga:dimension91','ga:dimension92','ga:dimension93','ga:dimension94','ga:dimension95','ga:dimension96','ga:dimension97','ga:dimension98','ga:dimension99','ga:dimension100','ga:acquisitionTrafficChannel','ga:channelGrouping')
dim2 <- c('Date','userType','sessionCount','daysSinceLastSession','userDefinedValue','userBucket','sessionDurationBucket','referralPath','fullReferrer','campaign','source','medium','sourceMedium','keyword','adContent','socialNetwork','hasSocialSourceReferral','campaignCode','goalCompletionLocation','goalPreviousStep1','goalPreviousStep2','goalPreviousStep3','browser','browserVersion','operatingSystem','operatingSystemVersion','mobileDeviceBranding','mobileDeviceModel','mobileInputSelector','mobileDeviceInfo','mobileDeviceMarketingName','deviceCategory','browserSize','dataSource','continent','subContinent','country','region','metro','city','latitude','longitude','networkDomain','networkLocation','cityId','continentId','countryIsoCode','metroId','regionId','regionIsoCode','subContinentCode','flashVersion','javaEnabled','language','screenColors','sourcePropertyDisplayName','sourcePropertyTrackingId','screenResolution','hostname','pagePath','pagePathLevel1','pagePathLevel2','pagePathLevel3','pagePathLevel4','pageTitle','landingPaePath','secondPagePath','exitPagePath','previousPagePath','pageDepth','searchUsed','searchKeyword','searchKeywordRefinement','searchCategory','searchStartPage','searchDestinationPage','searchAfterDestinationPage','eventCategory','eventAction','eventLabel','transactionId','affiliation','sessionsToTransaction','daysToTransaction','productSku','productName','productCategory','currencyCode','checkoutOptions','internalPromotionCreative','internalPromotionId','internalPromotionName','internalPromotionPosition','orderCouponCode','productBrand','productCategoryHierarchy','productCategoryLevelXX','productCouponCode','productListName','productListPosition','productVariant','shoppingStage','dimension1','dimension2','dimension3','dimension4','dimension5','dimension6','dimension7','dimension8','dimension9','dimension10','dimension11','dimension12','dimension13','dimension14','dimension15','dimension16','dimension17','dimension18','dimension19','dimension20','dimension21','dimension22','dimension23','dimension24','dimensio25','dimension26','dimension27','dimension28','dimension29','dimension30','dimension31','dimension32','dimension33','dimension34','dimension35','dimension36','dimension37','dimension38','dimension39','dimension40','dimension41','dimension42','dimension43','dimension44','dimension45','dimension46','dimension47','dimension48','dimension49','dimension50','dimension51','dimension52','dimension53','dimension54','dimension55','dimension56','dimension57','dimension58','dimension59','dimension60','dimension61','dimension62','dimension63','dimension64','dimension65','dimension66','dimension67','dimension68','dimension69','dimension70','dimension71','dimension72','dimension73','dimension74','dimension75','dimension76','dimension77','dimension78','dimension79','dimension80','dimension81','dimension82','dimension83','dimension84','dimension85','dimension86','dimension87','dimension88','dimension89','dimension90','dimension91','dimension92','dimension93','dimension94','dimension95','dimension96','dimension97','dimension98','dimension99','dimension100','acquisitionTrafficChannel','channelGrouping')
dimension <- data.frame(dim2, dim1)

filter1 <-c('None','ga:date','ga:deviceCategory','ga:userType','ga:sessionCount','ga:daysSinceLastSession','ga:userDefinedValue','ga:userBucket','ga:sessionDurationBucket','ga:referralPath','ga:fullReferrer','ga:campaign','ga:source','ga:medium','ga:sourceMedium','ga:keyword','ga:adContent','ga:socialNetwork','ga:hasSocialSourceReferral','ga:campaignCode','ga:goalCompletionLocation','ga:goalPreviousStep1','ga:goalPreviousStep2','ga:goalPreviousStep3','ga:browser','ga:browserVersion','ga:operatingSystem','ga:operatingSystemVersion','ga:mobileDeviceBranding','ga:mobileDeviceModel','ga:mobileInputSelector','ga:mobileDeviceInfo','ga:mobileDeviceMarketingName','ga:browserSize','ga:dataSource','ga:continent','ga:subContinent','ga:country','ga:region','ga:metro','ga:city','ga:latitude','ga:longitude','ga:networkDomain','ga:networkLocation','ga:cityId','ga:continentId','ga:countryIsoCode','ga:metroId','ga:regionId','ga:regionIsoCode','ga:subContinentCode','ga:flashVersion','ga:javaEnabled','ga:language','ga:screenColors','ga:sourcePropertyDisplayName','ga:sourcePropertyTrackingId','ga:screenResolution','ga:hostname','ga:pagePath','ga:pagePathLevel1','ga:pagePathLevel2','ga:pagePathLevel3','ga:pagePathLevel4','ga:pageTitle','ga:landingPagePath','ga:secondPagePath','ga:exitPagePath','ga:previousPagePath','ga:pageDepth','ga:searchUsed','ga:searchKeyword','ga:searchKeywordRefinement','ga:searchCategory','ga:searchStartPage','ga:searchDestinationPage','ga:searchAfterDestinationPage','ga:eventCategory','ga:eventAction','ga:eventLabel','ga:transactionId','ga:affiliation','ga:sessionsToTransaction','ga:daysToTransaction','ga:productSku','ga:productName','ga:productCategory','ga:currencyCode','ga:checkoutOptions','ga:internalPromotionCreative','ga:internalPromotionId','ga:internalPromotionName','ga:internalPromotionPosition','ga:orderCouponCode','ga:productBrand','ga:productCategoryHierarchy','ga:productCategoryLevelXX','ga:productCouponCode','ga:productListName','ga:productListPosition','ga:productVariant','ga:shoppingStage','ga:dimension1','ga:dimension2','ga:dimension3','ga:dimension4','ga:dimension5','ga:dimension6','ga:dimension7','ga:dimension8','ga:dimension9','ga:dimension10','ga:dimension11','ga:dimension12','ga:dimension13','ga:dimension14','ga:dimension15','ga:dimension16','ga:dimension17','ga:dimension18','ga:dimension19','ga:dimension20','ga:dimension21','ga:dimension22','ga:dimension23','ga:dimension24','ga:dimension25','ga:dimension26','ga:dimension27','ga:dimension28','ga:dimension29','ga:dimension30','ga:dimension31','ga:dimension32','ga:dimension33','ga:dimension34','ga:dimension35','ga:dimension36','ga:dimension37','ga:dimension38','ga:dimension39','ga:dimension40','ga:dimension41','ga:dimension42','ga:dimension43','ga:dimension44','ga:dimension45','ga:dimension46','ga:dimension47','ga:dimension48','ga:dimension49','ga:dimension50','ga:dimension51','ga:dimension52','ga:dimension53','ga:dimension54','ga:dimension55','ga:dimension56','ga:dimension57','ga:dimension58','ga:dimension59','ga:dimension60','ga:dimension61','ga:dimension62','ga:dimension63','ga:dimension64','ga:dimension65','ga:dimension66','ga:dimension67','ga:dimension68','ga:dimension69','ga:dimension70','ga:dimension71','ga:dimension72','ga:dimension73','ga:dimension74','ga:dimension75','ga:dimension76','ga:dimension77','ga:dimension78','ga:dimension79','ga:dimension80','ga:dimension81','ga:dimension82','ga:dimension83','ga:dimension84','ga:dimension85','ga:dimension86','ga:dimension87','ga:dimension88','ga:dimension89','ga:dimension90','ga:dimension91','ga:dimension92','ga:dimension93','ga:dimension94','ga:dimension95','ga:dimension96','ga:dimension97','ga:dimension98','ga:dimension99','ga:dimension100','ga:acquisitionTrafficChannel','ga:channelGrouping')
filter2 <- c('None', 'Date','deviceCategory','userType','sessionCount','daysSinceLastSession','userDefinedValue','userBucket','sessionDurationBucket','referralPath','fullReferrer','campaign','source','medium','sourceMedium','keyword','adContent','socialNetwork','hasSocialSourceReferral','campaignCode','goalCompletionLocation','goalPreviousStep1','goalPreviousStep2','goalPreviousStep3','browser','browserVersion','operatingSystem','operatingSystemVersion','mobileDeviceBranding','mobileDeviceModel','mobileInputSelector','mobileDeviceInfo','mobileDeviceMarketingName','browserSize','dataSource','continent','subContinent','country','region','metro','city','latitude','longitude','networkDomain','networkLocation','cityId','continentId','countryIsoCode','metroId','regionId','regionIsoCode','subContinentCode','flashVersion','javaEnabled','language','screenColors','sourcePropertyDisplayName','sourcePropertyTrackingId','screenResolution','hostname','pagePath','pagePathLevel1','pagePathLevel2','pagePathLevel3','pagePathLevel4','pageTitle','landingPaePath','secondPagePath','exitPagePath','previousPagePath','pageDepth','searchUsed','searchKeyword','searchKeywordRefinement','searchCategory','searchStartPage','searchDestinationPage','searchAfterDestinationPage','eventCategory','eventAction','eventLabel','transactionId','affiliation','sessionsToTransaction','daysToTransaction','productSku','productName','productCategory','currencyCode','checkoutOptions','internalPromotionCreative','internalPromotionId','internalPromotionName','internalPromotionPosition','orderCouponCode','productBrand','productCategoryHierarchy','productCategoryLevelXX','productCouponCode','productListName','productListPosition','productVariant','shoppingStage','dimension1','dimension2','dimension3','dimension4','dimension5','dimension6','dimension7','dimension8','dimension9','dimension10','dimension11','dimension12','dimension13','dimension14','dimension15','dimension16','dimension17','dimension18','dimension19','dimension20','dimension21','dimension22','dimension23','dimension24','dimensio25','dimension26','dimension27','dimension28','dimension29','dimension30','dimension31','dimension32','dimension33','dimension34','dimension35','dimension36','dimension37','dimension38','dimension39','dimension40','dimension41','dimension42','dimension43','dimension44','dimension45','dimension46','dimension47','dimension48','dimension49','dimension50','dimension51','dimension52','dimension53','dimension54','dimension55','dimension56','dimension57','dimension58','dimension59','dimension60','dimension61','dimension62','dimension63','dimension64','dimension65','dimension66','dimension67','dimension68','dimension69','dimension70','dimension71','dimension72','dimension73','dimension74','dimension75','dimension76','dimension77','dimension78','dimension79','dimension80','dimension81','dimension82','dimension83','dimension84','dimension85','dimension86','dimension87','dimension88','dimension89','dimension90','dimension91','dimension92','dimension93','dimension94','dimension95','dimension96','dimension97','dimension98','dimension99','dimension100','acquisitionTrafficChannel','channelGrouping')
filterc <- data.frame(filter2, filter1)




#metr1 <- c('ga:sessions','ga:transactions', 'ga:transactionRevenue','ga:pageviews')
#metr2 <- c('Sessions','Transactions', 'TransactionRevenue','Pageviews')
metr1 <- c('ga:users','ga:newUsers','ga:percentNewSessions','ga:1dayUsers','ga:7dayUsers','ga:14dayUsers','ga:28dayUsers','ga:30dayUsers','ga:sessionsPerUser','ga:sessions','ga:bounces','ga:bounceRate','ga:sessionDuration','ga:avgSessionDuration','ga:uniqueDimensionCombinations','ga:hits','ga:totalEvents','ga:uniqueEvents','ga:eventValue','ga:avgEventValue','ga:sessionsWithEvent','ga:eventsPerSessionWithEvent','ga:transactions','ga:transactionsPerSession','ga:transactionRevenue','ga:revenuePerTransaction','ga:transactionRevenuePerSession','ga:transactionShipping','ga:transactionTax','ga:totalValue','ga:itemQuantity','ga:uniquePurchases','ga:revenuePerItem','ga:itemRevenue','ga:itemsPerPurchase','ga:localTransactionRevenue','ga:localTransactionShipping','ga:localTransactionTax','ga:localItemRevenue','ga:buyToDetailRate','ga:cartToDetailRate','ga:internalPromotionCTR','ga:internalPromotionClicks','ga:internalPromotionViews','ga:localProductRefundAmount','ga:localRefundAmount','ga:productAddsToCart','ga:productCheckouts','ga:productDetailViews','ga:productListCTR','ga:productListClicks','ga:productListViews','ga:productRefundAmount','ga:productRefunds','ga:productRemovesFromCart','ga:productRevenuePerPurchase','ga:quantityAddedToCart','ga:quantityCheckedOut','ga:quantityRefunded','ga:quantityRemovedFromCart','ga:refundAmount','ga:revenuePerUser','ga:totalRefunds','ga:transactionsPerUser')
metr2 <- c('users','newUsers','percentNewSessions','1dayUsers','7dayUsers','14dayUsers','28dayUsers','30dayUsers','sessionsPerUser','sessions','bounces','bounceRate','sessionDuration','avgSessionDuration','uniqueDimensionCombinations','hits','totalEvents','uniqueEvents','eventValue','avgEventValue','sessionsWithEvent','eventsPerSessionWithEvent','transactions','transactionsPerSession','transactionRevenue','revenuePerTransaction','transactionRevenuePerSession','transactionShipping','transactionTax','totalValue','itemQuantity','uniquePurchases','revenuePerItem','itemRevenue','itemsPerPurchase','localTransactionRevenue','localTransactionShipping','localTransactionTax','localItemRevenue','buyToDetailRate','cartToDetailRate','internalPromotionCTR','internalPromotionClicks','internalPromotionViews','localProductRefundAmount','localRefundAmount','productAddsToCart','productCheckouts','productDetailViews','productListCTR','productListClicks','productListViews','productRefundAmount','productRefunds','productRemovesFromCart','prouctRevenuePerPurchase','quantityAddedToCart','quantityCheckedOut','quantityRefunded','quantityRemovedFromCart','refundAmount','revenuePerUser','totalRefunds','transactionsPerUser')
metr <- data.frame(metr2,metr1)




fcon1 <- c("=~","!=", "==")
fcon2 <- c("Contains","Not Equal","Equals")
fconc <- data.frame(fcon2, fcon1)


#----------------------------
ui <- dashboardPage(
  dashboardHeader(
    title = "GA Data Extractor"
  ),
  dashboardSidebar(width = 200, 
                   div(style = "font-size: 12px;height: 50px; padding: 0px 0px", 
                       textInput("gacode", "GA View ID" , "152913495")),
                   
                   div(style = "font-size: 12px;height: 50px; padding: 0px 0px",
                       checkboxInput("Firstlogin", "First login", TRUE)),    
                   #textInput("gacode", "GA Code" , "176863072"),
                   #textInput("gacode", "GA Code" , "132849980"),
                   div(style = "font-size: 12px;height: 40px; padding: 0px 0px",             
                       actionButton("gaauth", "GA Auth")),
                   
                   div(style = "font-size: 12px;height: 70px; padding: 0px 0px",dateInput("date1", "Start Date:")),
                   div(style = "font-size: 12px;height: 70px; padding: 0px 0px",dateInput("date2", "End Date:")),
                   
                   div(style = "font-size: 12px; padding: 0px 0px",selectInput("inputid", "Segment", choices = "", multiple = TRUE , selected = "All Users")),
                   
                   div(style = "font-size: 12px; padding: 0px 0px",selectInput("Dimensionid", "Dimension", dimension[,1], multiple = TRUE,selected = "Date")),
                   div(style = "font-size: 12px; padding: 0px 0px",selectInput("metricid", "Metric", metr[,1], multiple = TRUE, selected = "sessions")),
                   div(style = "font-size: 12px;height: 70px; padding: 0px 0px",selectInput("Filterdimension", "Filter Dimension", choices = "", multiple = FALSE , selected = "None")),
                   conditionalPanel(
                     
                     condition = "input.Filterdimension !='None'",
                     div(style = "font-size: 12px; padding: 0px 0px",selectInput("Filtercondition", "Condition", choices = "", multiple = FALSE , selected = "=~")),
                     div(style = "font-size: 12px;height: 70px; padding: 0px 0px",textInput("Filterquery","Filter Query",value = ""))
                     
                   ),
                   
                   actionButton("goButton", "Fetch Data")
  ),
  dashboardBody(
    
    textOutput("pfilter"),
    downloadLink("downloadData", "Download Filter Data"),
    tableOutput("odata")
  )
)


server <- function(input, output, session) {
  
  
  
  observeEvent(input$gaauth, {
    
    dummy <- input$Firstlogin   
    gavalue <- "True"
    
    
    if (dummy == FALSE) {
      ga_auth(new_user=FALSE)
    }
    else if(dummy== TRUE)
    {
      ga_auth(new_user=TRUE)
    }
    
    
    x <- input$gaauth 
    #x1 <- eventReactive(input$gaauth,{
    
    if (is.null(x))
      x <- character(0)
    
    
    
    #---------------------------
    ga_auth()
    
    account_list <- google_analytics_account_list()
    
    viewID <- input$gacode
    
    
    
    
    my_segments <- ga_segment_list()
    segs <- my_segments$items
    
    segs[,c("name","id")]
    
    seg <- segs[,c("name","id")]
    
    
    useg <- paste0("gaid::",seg$id)
    
    useg1 <- cbind(seg,useg)
    
    useg1$useg <- as.character(useg1$useg)
    
    updateSelectInput(session, "inputid", choices =  as.list(useg1[,1]), selected =  "All Users") 
    updateSelectInput(session, "Filterdimension", choices =  filterc[,1], selected =  "None") 
    updateSelectInput(session, "Filtercondition", choices =  fconc[,1], selected =  "Contains") 
  })
  
  
  
  sdate <- reactive({
    
    ydate <- as.Date(input$date1)
    
    return(ydate)
    
  })
  edate <- reactive({
    
    xdate <- as.Date(input$date2)
    
    return(xdate)
    
  })
  
  
  
  
  #-----------------------------------------------------
  # P1 <- observeEvent(input$goButton, {
  P1 <- eventReactive(input$goButton, {  
    st <- sdate()
    en <- edate()
    
    ll <- seq(en, st, by = "-1 day")
    date <- rev(ll)
    
    df2<-data.frame()
    
    
    ga_auth()
    
    account_list <- google_analytics_account_list()
    
    viewID <- input$gacode
    
    
    
    my_segments <- ga_segment_list()
    segs <- my_segments$items
    
    segs[,c("name","id")]
    
    seg <- segs[,c("name","id")]
    
    
    useg <- paste0("gaid::",seg$id)
    
    useg1 <- cbind(seg,useg)
    
    useg1$useg <- as.character(useg1$useg)
    
    
    
    xy <- filter(useg1,useg1$name %in% input$inputid )
    
    # browser()
    
    segment_for_call <- xy[,3]
    
    for(j in 1:length(date))
    {
      for (i in 1:length(segment_for_call)) {
        
        seg_obj <- segment_ga4("Kermit Environment", segment_id = segment_for_call[i])
        
        
        dimx <- filter(dimension, dimension$dim2 %in% input$Dimensionid )
        metx <- filter(metr, metr$metr2 %in% input$metricid)
        filterq <- filter(filterc, filterc$filter2 %in% input$Filterdimension )
        fconx <- filter(fconc, fconc$fcon2 %in% input$Filtercondition)
        
        
        
        segment_for_call <- xy[,3]
        
        
        if(input$Filterdimension=="None"){
          
          df1 <- google_analytics_4(viewID, 
                                    
                                    date_range = c(date[j],date[j]), 
                                    segments = seg_obj,
                                    # metrics =  input$metricid,
                                    metrics = as.character(metx$metr1), 
                                    #dimensions = input$Dimensionid,   
                                    dimensions = as.character(dimx$dim1),
                                    anti_sample = TRUE,
                                    #filtersExpression = "ga:eventCategory=~error message" ,
                                    #filtersExpression = paste0(as.character(filterq$dim1),"=~",input$Filterquery),
                                    filtersExpression = NULL
                                    
                                    
          )
        }
        else
        {
          
          df1 <- google_analytics_4(viewID, 
                                    
                                    date_range = c(date[j],date[j]), 
                                    segments = seg_obj,
                                    # metrics =  input$metricid,
                                    metrics = as.character(metx$metr1), 
                                    #dimensions = input$Dimensionid,   
                                    dimensions = as.character(dimx$dim1),
                                    anti_sample = TRUE,
                                    #filtersExpression = "ga:eventCategory=~error message" ,
                                    #filtersExpression = paste0(as.character(filterq$filter1),"=~",input$Filterquery),
                                    filtersExpression = paste0(as.character(filterq$filter1),as.character(fconx$fcon1),input$Filterquery),
                                    #filtersExpression = NULL
                                    
          )
          
        }
        
        
        
        if(nrow(df2)==0){
          df2<-df1;
        }else{
          df2<-rbind(df2,df1)
        }
        
      }
    }
    
    
    #----------------------------------------------
    
    
    df2$date <- as.character(df2$date)
    
    write.csv(df2, 'file.csv')
    
    
    return(df2)
    
    
  })  
  
  #-----------------------------------------------------    
  
  
  
  
  
  
  output$downloadData <- downloadHandler(
    filename = function() {
      paste("data-", Sys.Date(), ".csv", sep="")
    },
    content = function(file) {
      write.csv(P1(), file)
    }
  )
  
  
  #-----------------------
  #  output$Firstlogin <- ({
  
  #   renderText(input$Firstlogin)
  
  # })
  #---------------------
  output$odata <- ({
    
    renderTable(P1())
  })
}

shinyApp(ui, server)


