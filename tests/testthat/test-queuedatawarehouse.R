test_that("Validate QueueDataWarehouse using legacy credentials", {

  skip_on_cran()

  #Correct [masked] credentials
  SCAuth(Sys.getenv("USER", ""), Sys.getenv("SECRET", ""))

  #FTP test
  report.id <- QueueDataWarehouse("zwitchdev",
                                    "2016-11-01",
                                    "2016-11-07",
                                    c("visits", "pageviews"),
                                    c("page"),
                                    enqueueOnly=TRUE,
                                    ftp = list(host = Sys.getenv("FTP", ""),
                                               port = "21",
                                               directory = "/DWtest/",
                                               username = Sys.getenv("FTPUSER", ""),
                                               password = Sys.getenv("FTPPW", ""),
                                               filename = "myreport.csv")
  )

  #Validate returned value is numeric id
  expect_is(report.id, "numeric")
  
  #Return answer to console
  qdw <- QueueDataWarehouse("zwitchdev",
                                    "2016-11-01",
                                    "2016-11-07",
                                    c("visits", "pageviews"),
                                    c("page"),
                                    enqueueOnly=FALSE
  )
  
  #Validate returned value is a data.frame
  expect_is(qdw, "data.frame")

})
