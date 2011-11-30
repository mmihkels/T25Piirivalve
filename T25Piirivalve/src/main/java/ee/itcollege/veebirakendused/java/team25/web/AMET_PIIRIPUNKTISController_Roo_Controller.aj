// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ee.itcollege.veebirakendused.java.team25.web;

import ee.itcollege.T25Piirivalve.entities.AMET;
import ee.itcollege.T25Piirivalve.entities.AMET_PIIRIPUNKTIS;
import ee.itcollege.T25Piirivalve.entities.PIIRIPUNKT;
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

privileged aspect AMET_PIIRIPUNKTISController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST)
    public String AMET_PIIRIPUNKTISController.create(@Valid AMET_PIIRIPUNKTIS AMET_PIIRIPUNKTIS, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            uiModel.addAttribute("AMET_PIIRIPUNKTIS", AMET_PIIRIPUNKTIS);
            addDateTimeFormatPatterns(uiModel);
            return "amet_piiripunktiss/create";
        }
        uiModel.asMap().clear();
        AMET_PIIRIPUNKTIS.persist();
        return "redirect:/amet_piiripunktiss/" + encodeUrlPathSegment(AMET_PIIRIPUNKTIS.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", method = RequestMethod.GET)
    public String AMET_PIIRIPUNKTISController.createForm(Model uiModel) {
        uiModel.addAttribute("AMET_PIIRIPUNKTIS", new AMET_PIIRIPUNKTIS());
        addDateTimeFormatPatterns(uiModel);
        return "amet_piiripunktiss/create";
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.GET)
    public String AMET_PIIRIPUNKTISController.show(@PathVariable("id") Long id, Model uiModel) {
        addDateTimeFormatPatterns(uiModel);
        uiModel.addAttribute("amet_piiripunktis", AMET_PIIRIPUNKTIS.findAMET_PIIRIPUNKTIS(id));
        uiModel.addAttribute("itemId", id);
        return "amet_piiripunktiss/show";
    }
    
    @RequestMapping(method = RequestMethod.GET)
    public String AMET_PIIRIPUNKTISController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            uiModel.addAttribute("amet_piiripunktiss", AMET_PIIRIPUNKTIS.findAMET_PIIRIPUNKTISEntries(page == null ? 0 : (page.intValue() - 1) * sizeNo, sizeNo));
            float nrOfPages = (float) AMET_PIIRIPUNKTIS.countAMET_PIIRIPUNKTISs() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("amet_piiripunktiss", AMET_PIIRIPUNKTIS.findAllAMET_PIIRIPUNKTISs());
        }
        addDateTimeFormatPatterns(uiModel);
        return "amet_piiripunktiss/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT)
    public String AMET_PIIRIPUNKTISController.update(@Valid AMET_PIIRIPUNKTIS AMET_PIIRIPUNKTIS, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            uiModel.addAttribute("AMET_PIIRIPUNKTIS", AMET_PIIRIPUNKTIS);
            addDateTimeFormatPatterns(uiModel);
            return "amet_piiripunktiss/update";
        }
        uiModel.asMap().clear();
        AMET_PIIRIPUNKTIS.merge();
        return "redirect:/amet_piiripunktiss/" + encodeUrlPathSegment(AMET_PIIRIPUNKTIS.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{id}", params = "form", method = RequestMethod.GET)
    public String AMET_PIIRIPUNKTISController.updateForm(@PathVariable("id") Long id, Model uiModel) {
        uiModel.addAttribute("AMET_PIIRIPUNKTIS", AMET_PIIRIPUNKTIS.findAMET_PIIRIPUNKTIS(id));
        addDateTimeFormatPatterns(uiModel);
        return "amet_piiripunktiss/update";
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE)
    public String AMET_PIIRIPUNKTISController.delete(@PathVariable("id") Long id, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        AMET_PIIRIPUNKTIS.findAMET_PIIRIPUNKTIS(id).remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/amet_piiripunktiss";
    }
    
    @ModelAttribute("amets")
    public Collection<AMET> AMET_PIIRIPUNKTISController.populateAMETS() {
        return AMET.findAllAMETS();
    }
    
    @ModelAttribute("amet_piiripunktiss")
    public Collection<AMET_PIIRIPUNKTIS> AMET_PIIRIPUNKTISController.populateAMET_PIIRIPUNKTISs() {
        return AMET_PIIRIPUNKTIS.findAllAMET_PIIRIPUNKTISs();
    }
    
    @ModelAttribute("piiripunkts")
    public Collection<PIIRIPUNKT> AMET_PIIRIPUNKTISController.populatePIIRIPUNKTS() {
        return PIIRIPUNKT.findAllPIIRIPUNKTS();
    }
    
    void AMET_PIIRIPUNKTISController.addDateTimeFormatPatterns(Model uiModel) {
        uiModel.addAttribute("AMET_PIIRIPUNKTIS_alates_date_format", "dd.MM.yyyy");
        uiModel.addAttribute("AMET_PIIRIPUNKTIS_kuni_date_format", "dd.MM.yyyy");
    }
    
    String AMET_PIIRIPUNKTISController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
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
