// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ee.itcollege.veebirakendused.java.team25.web;

import ee.itcollege.T25Piirivalve.entities.INTSIDENT;
import ee.itcollege.T25Piirivalve.entities.VAHTKOND;
import ee.itcollege.T25Piirivalve.entities.VAHTKOND_INTSIDENDIS;
import java.io.UnsupportedEncodingException;
import java.lang.Integer;
import java.lang.Long;
import java.lang.String;
import java.util.Collection;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.util.UriUtils;
import org.springframework.web.util.WebUtils;

privileged aspect VAHTKOND_INTSIDENDISController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST)
    public String VAHTKOND_INTSIDENDISController.create(@Valid VAHTKOND_INTSIDENDIS VAHTKOND_INTSIDENDIS, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            uiModel.addAttribute("VAHTKOND_INTSIDENDIS", VAHTKOND_INTSIDENDIS);
            addDateTimeFormatPatterns(uiModel);
            return "vahtkond_intsidendiss/create";
        }
        uiModel.asMap().clear();
        VAHTKOND_INTSIDENDIS.persist();
        return "redirect:/vahtkond_intsidendiss/" + encodeUrlPathSegment(VAHTKOND_INTSIDENDIS.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", method = RequestMethod.GET)
    public String VAHTKOND_INTSIDENDISController.createForm(Model uiModel) {
        uiModel.addAttribute("VAHTKOND_INTSIDENDIS", new VAHTKOND_INTSIDENDIS());
        addDateTimeFormatPatterns(uiModel);
        return "vahtkond_intsidendiss/create";
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.GET)
    public String VAHTKOND_INTSIDENDISController.show(@PathVariable("id") Long id, Model uiModel) {
        addDateTimeFormatPatterns(uiModel);
        uiModel.addAttribute("vahtkond_intsidendis", VAHTKOND_INTSIDENDIS.findVAHTKOND_INTSIDENDIS(id));
        uiModel.addAttribute("itemId", id);
        return "vahtkond_intsidendiss/show";
    }
    
    @RequestMapping(method = RequestMethod.GET)
    public String VAHTKOND_INTSIDENDISController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            uiModel.addAttribute("vahtkond_intsidendiss", VAHTKOND_INTSIDENDIS.findVAHTKOND_INTSIDENDISEntries(page == null ? 0 : (page.intValue() - 1) * sizeNo, sizeNo));
            float nrOfPages = (float) VAHTKOND_INTSIDENDIS.countVAHTKOND_INTSIDENDISs() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("vahtkond_intsidendiss", VAHTKOND_INTSIDENDIS.findAllVAHTKOND_INTSIDENDISs());
        }
        addDateTimeFormatPatterns(uiModel);
        return "vahtkond_intsidendiss/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT)
    public String VAHTKOND_INTSIDENDISController.update(@Valid VAHTKOND_INTSIDENDIS VAHTKOND_INTSIDENDIS, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            uiModel.addAttribute("VAHTKOND_INTSIDENDIS", VAHTKOND_INTSIDENDIS);
            addDateTimeFormatPatterns(uiModel);
            return "vahtkond_intsidendiss/update";
        }
        uiModel.asMap().clear();
        VAHTKOND_INTSIDENDIS.merge();
        return "redirect:/vahtkond_intsidendiss/" + encodeUrlPathSegment(VAHTKOND_INTSIDENDIS.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{id}", params = "form", method = RequestMethod.GET)
    public String VAHTKOND_INTSIDENDISController.updateForm(@PathVariable("id") Long id, Model uiModel) {
        uiModel.addAttribute("VAHTKOND_INTSIDENDIS", VAHTKOND_INTSIDENDIS.findVAHTKOND_INTSIDENDIS(id));
        addDateTimeFormatPatterns(uiModel);
        return "vahtkond_intsidendiss/update";
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE)
    public String VAHTKOND_INTSIDENDISController.delete(@PathVariable("id") Long id, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        VAHTKOND_INTSIDENDIS.findVAHTKOND_INTSIDENDIS(id).remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/vahtkond_intsidendiss";
    }
    
    @ModelAttribute("intsidents")
    public Collection<INTSIDENT> VAHTKOND_INTSIDENDISController.populateINTSIDENTS() {
        return INTSIDENT.findAllINTSIDENTS();
    }
    
    @ModelAttribute("vahtkonds")
    public Collection<VAHTKOND> VAHTKOND_INTSIDENDISController.populateVAHTKONDS() {
        return VAHTKOND.findAllVAHTKONDS();
    }
    
    @ModelAttribute("vahtkond_intsidendiss")
    public Collection<VAHTKOND_INTSIDENDIS> VAHTKOND_INTSIDENDISController.populateVAHTKOND_INTSIDENDISs() {
        return VAHTKOND_INTSIDENDIS.findAllVAHTKOND_INTSIDENDISs();
    }
    
    void VAHTKOND_INTSIDENDISController.addDateTimeFormatPatterns(Model uiModel) {
        uiModel.addAttribute("VAHTKOND_INTSIDENDIS_alates_date_format", "dd.MM.yyyy");
        uiModel.addAttribute("VAHTKOND_INTSIDENDIS_kuni_date_format", "dd.MM.yyyy");
    }
    
    String VAHTKOND_INTSIDENDISController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
        String enc = httpServletRequest.getCharacterEncoding();
        if (enc == null) {
            enc = WebUtils.DEFAULT_CHARACTER_ENCODING;
        }
        try {
            pathSegment = UriUtils.encodePathSegment(pathSegment, enc);
        }
        catch (UnsupportedEncodingException uee) {}
        return pathSegment;
    }
    
}
