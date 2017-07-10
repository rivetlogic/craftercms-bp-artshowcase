import scripts.utils.MailHelper

import org.craftercms.engine.exception.HttpStatusCodeException

def contextURL = "/site/website${ params.contextURL ?: "" }/index.xml"
def contextSite = siteItemService.getSiteItem(contextURL)

def toMails = getToMails(contextSite);

def fromEmail = params.email
def name = params.name
def phone = params.phone
def message = params.message

if (!fromEmail) {
    throw new HttpStatusCodeException(400, "Bad request: missing email")
} else if (!name) {
    throw new HttpStatusCodeException(400, "Bad request: missing name")
} else if (!phone) {
    throw new HttpStatusCodeException(400, "Bad request: missing phone")
} else if (!message) {
    throw new HttpStatusCodeException(400, "Bad request: missing message")
}

// def mailHelper = new MailHelper(siteContext.freeMarkerConfig.configuration);
// mailHelper.sendEmail(fromEmail, toMails, "${name} contacted you", "${name} ${phone} \n ${message}");

println "Processing Contact Us Request with values:"
println params

return [success: true];

def getToMails(contextSite){
    def toMails = contextSite.get('contactEmails/item/email');
    if ( toMails in List ) {
        def tempArray = new String[toMails.size()];
        for(ii=0; ii< toMails.size(); ii++){
            tempArray[ii] = toMails.get(ii).getText();
        }
        toMails = tempArray;
        //for()
    } else {
        toMails = (String[])[ toMails.getText() ];
    }
    return toMails;
}
