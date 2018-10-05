@RestResource(urlMapping='/Temp/v1/*')
global with sharing class WebServiceV1 {
    
    @HttpPost
    global static Decimal FahToCel(Decimal fh) {
        Decimal cs = (fh - 32) * 5/9;
        return cs.setScale(2);
    }
}