# Set library ----
message("Load the libraries")
library(rvest)
library(mongolite)
library(dplyr)
library(httr)

message("Scraping Data Pada Website")
data<-data.frame()
page = 100
for (i in 1:page){
  url <- paste0("https://www.goodreads.com/quotes?pages=",i)
  url2 <- url %>% GET(.,timeout(60)) 
  html<-read_html(url2)
  #html <- read_html(url)
  quote<- html_text(html_nodes(html, ".quoteText"), trim=T)
  by<- html_text(html_nodes(html, "span.authorOrTitle"), trim=T)
  suka<- html_text(html_nodes(html, ".right"), trim=T)
  isiquote=c();penulis=c();like=c()
  for (p in 1:length(quote)){
    isiquote[p] <- strsplit(quote,split="\n|“|”")[[p]][2]
    penulis[p] <- strsplit(by,split=",")[[p]][1]
    like[p] <- strsplit(suka,split=" ")[[p]][1]
  }
  output <- cbind(isiquote,penulis,like)
  data <- rbind(data, output)
}

#Connect to MongoDB ----
message("Menghubungkan ke MongoDB Cloud")
atlas <- mongo(
  collection = Sys.getenv("ATLAS_COLLECTION"),
  db         = Sys.getenv("ATLAS_DB"),
  url        = Sys.getenv("ATLAS_URL")
)

message("Masukkan Data Frame ke MongoDB Cloud")
atlas$insert(data)

rm(atlas)
