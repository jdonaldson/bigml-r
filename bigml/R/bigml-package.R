#' R bindings for BigML API
#'
#' \tabular{ll}{
#' Package: \tab bigml\cr
#' Type: \tab Package\cr
#' Version: \tab 0.1-2\cr
#' Date: \tab 20012-04-30\cr
#' License: \tab GPL (>= 2)\cr
#' LazyLoad: \tab yes\cr
#' }
#'
#' A set of methods that enable straightforward usage of the BigML API.
#' The methods use R idioms and native datatypes where appropriate, while
#' also providing access to more conventional API usage.
#'
#' @note In some cases RCurl may lack the necessary certificates to 
#'  validate secure BigML connections.  In order to fix this, consider adding
#'  them to your curl options (see example section).  
#'  Also, see \href{http://www.omegahat.org/RCurl/FAQ.html}{the RCurl FAQ} 
#'  and \href{http://curl.haxx.se/}{the main cURL site} for
#'  more information.
#' @name bigml-package
#' @aliases bigml
#' @docType package
#' @template author
#' @keywords package
#' @examples 
#' \dontrun{
#' # download the file needed for authentication
#' download.file(url="http://curl.haxx.se/ca/cacert.pem", destfile="cacert.pem")
#'
#' # set the curl options
#' curl <- getCurlHandle();
#' options(RCurlOptions = list(capath = system.file("CurlSSL", "cacert.pem",
#'      package = "RCurl"), ssl.verifypeer = FALSE));
#' curlSetOpt(.opts = list(proxy = 'proxyserver:port'), curl = curl);
#' 
#' # set default credentials for your BigML account.
#' setCredentials('username', 'key')
#' model = quickModel(iris, 'Species')
#' quickPrediction(model, c(Petal.Width=0.2, Petal.Length=1.4))
#' #' 	# use specific credentials
#' quickPrediction(model, c(Petal.Width=0.2, Petal.Length=1.4), username='someuser', api_key='somekey')
#'  
#' # list most recent sources
#' listSources()
#' #' 	# specify limit and offset
#' listModels(limit=15,offset=300)
#' #'	# specify filter criteria
#' listDatasets(size__gt=1048576)
#' }
NULL