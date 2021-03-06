% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/GetReportsByIds.R
\name{GetReportsByIds}
\alias{GetReportsByIds}
\title{Get EnQueued Reports by report ID}
\usage{
GetReportsByIds(report.ids, interval.seconds = 10, max.attempts = 300,
  print.attempts = TRUE)
}
\arguments{
\item{report.ids}{list of report ids that you've enqueued and want to retrieve the data for}

\item{interval.seconds}{How long to wait between attempts}

\item{max.attempts}{Number of API attempts before stopping}

\item{print.attempts}{Print each attempt to check if report is ready}
}
\value{
list of (report id and Data frame pairs)
}
\description{
Get reports for report ids provided as a list. These reports are previously enqueued.
}
\details{
This is a function for advanced users, after you've enqueued multiple reports
and want to get all of them when they're ready.
}
\examples{
\dontrun{

reports <- GetReportsByIds(list(12345678,87654321),print.attempts=FALSE)

}

}

