// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ee.itcollege.veebirakendused.java.team25.web;

import ee.itcollege.T25Piirivalve.entities.ISIKU_SEADUS_INTSIDENDIS;
import ee.itcollege.T25Piirivalve.entities.ISIK_INTSIDENDIS;
import ee.itcollege.T25Piirivalve.entities.SEADUS;
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

privileged aspect ISIKU_SEADUS_INTSIDENDISController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST)
    public String ISIKU_SEADUS_INTSIDENDISController.create(@Valid ISIKU_SEADUS_INTSIDENDIS ISIKU_SEADUS_INTSIDENDIS, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            uiModel.addAttribute("ISIKU_SEADUS_INTSIDENDIS", ISIKU_SEADUS_INTSIDENDIS);
            addDateTimeFormatPatterns(uiModel);
            return "isiku_seadus_intsidendiss/create";
        }
        uiModel.asMap().clear();
        ISIKU_SEADUS_INTSIDENDIS.persist();
        return "redirect:/isiku_seadus_intsidendiss/" + encodeUrlPathSegment(ISIKU_SEADUS_INTSIDENDIS.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", method = RequestMethod.GET)
    public String ISIKU_SEADUS_INTSIDENDISController.createForm(Model uiModel) {
        uiModel.addAttribute("ISIKU_SEADUS_INTSIDENDIS", new ISIKU_SEADUS_INTSIDENDIS());
        addDateTimeFormatPatterns(uiModel);
        return "isiku_seadus_intsidendiss/create";
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.GET)
    public String ISIKU_SEADUS_INTSIDENDISController.show(@PathVariable("id") Long id, Model uiModel) {
        addDateTimeFormatPatterns(uiModel);
        uiModel.addAttribute("isiku_seadus_intsidendis", ISIKU_SEADUS_INTSIDENDIS.findISIKU_SEADUS_INTSIDENDIS(id));
        uiModel.addAttribute("itemId", id);
        return "isiku_seadus_intsidendiss/show";
    }
    
    @RequestMapping(method = RequestMethod.GET)
    public String ISIKU_SEADUS_INTSIDENDISController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            uiModel.addAttribute("isiku_seadus_intsidendiss", ISIKU_SEADUS_INTSIDENDIS.findISIKU_SEADUS_INTSIDENDISEntries(page == null ? 0 : (page.intValue() - 1) * sizeNo, sizeNo));
            float nrOfPages = (float) ISIKU_SEADUS_INTSIDENDIS.countISIKU_SEADUS_INTSIDENDISs() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("isiku_seadus_intsidendiss", ISIKU_SEADUS_INTSIDENDIS.findAllISIKU_SEADUS_INTSIDENDISs());
        }
        addDateTimeFormatPatterns(uiModel);
        return "isiku_seadus_intsidendiss/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT)
    public String ISIKU_SEADUS_INTSIDENDISController.update(@Valid ISIKU_SEADUS_INTSIDENDIS ISIKU_SEADUS_INTSIDENDIS, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            uiModel.addAttribute("ISIKU_SEADUS_INTSIDENDIS", ISIKU_SEADUS_INTSIDENDIS);
            addDateTimeFormatPatterns(uiModel);
            return "isiku_seadus_intsidendiss/update";
        }
        uiModel.asMap().clear();
        ISIKU_SEADUS_INTSIDENDIS.merge();
        return "redirect:/isiku_seadus_intsidendiss/" + encodeUrlPathSegment(ISIKU_SEADUS_INTSIDENDIS.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{id}", params = "form", method = RequestMethod.GET)
    public String ISIKU_SEADUS_INTSIDENDISController.updateForm(@PathVariable("id") Long id, Model uiModel) {
        uiModel.addAttribute("ISIKU_SEADUS_INTSIDENDIS", ISIKU_SEADUS_INTSIDENDIS.findISIKU_SEADUS_INTSIDENDIS(id));
        addDateTimeFormatPatterns(uiModel);
        return "isiku_seadus_intsidendiss/update";
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE)
    public String ISIKU_SEADUS_INTSIDENDISController.delete(@PathVariable("id") Long id, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        ISIKU_SEADUS_INTSIDENDIS.findISIKU_SEADUS_INTSIDENDIS(id).remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/isiku_seadus_intsidendiss";
    }
    
    @ModelAttribute("isiku_seadus_intsidendiss")
    public Collection<ISIKU_SEADUS_INTSIDENDIS> ISIKU_SEADUS_INTSIDENDISController.populateISIKU_SEADUS_INTSIDENDISs() {
        return ISIKU_SEADUS_INTSIDENDIS.findAllISIKU_SEADUS_INTSIDENDISs();
    }
    
    @ModelAttribute("isik_intsidendiss")
    public Collection<ISIK_INTSIDENDIS> ISIKU_SEADUS_INTSIDENDISController.populateISIK_INTSIDENDISs() {
        return ISIK_INTSIDENDIS.findAllISIK_INTSIDENDISs();
    }
    
    @ModelAttribute("seadus")
    public Collection<SEADUS> ISIKU_SEADUS_INTSIDENDISController.populateSEADUS() {
        return SEADUS.findAllSEADUS();
    }
    
    void ISIKU_SEADUS_INTSIDENDISController.addDateTimeFormatPatterns(Model uiModel) {
        uiModel.addAttribute("ISIKU_SEADUS_INTSIDENDIS_alates_date_format", "dd.MM.yyyy");
        uiModel.addAttribute("ISIKU_SEADUS_INTSIDENDIS_kuni_date_format", "dd.MM.yyyy");
    }
    
    String ISIKU_SEADUS_INTSIDENDISController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
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
