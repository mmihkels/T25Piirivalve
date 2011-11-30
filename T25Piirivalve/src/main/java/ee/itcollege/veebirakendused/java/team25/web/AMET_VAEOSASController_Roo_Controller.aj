// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ee.itcollege.veebirakendused.java.team25.web;

import ee.itcollege.T25Piirivalve.entities.AMET;
import ee.itcollege.T25Piirivalve.entities.AMET_VAEOSAS;
import ee.itcollege.T25Piirivalve.entities.VAEOSA;
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

privileged aspect AMET_VAEOSASController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST)
    public String AMET_VAEOSASController.create(@Valid AMET_VAEOSAS AMET_VAEOSAS, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            uiModel.addAttribute("AMET_VAEOSAS", AMET_VAEOSAS);
            addDateTimeFormatPatterns(uiModel);
            return "amet_vaeosass/create";
        }
        uiModel.asMap().clear();
        AMET_VAEOSAS.persist();
        return "redirect:/amet_vaeosass/" + encodeUrlPathSegment(AMET_VAEOSAS.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", method = RequestMethod.GET)
    public String AMET_VAEOSASController.createForm(Model uiModel) {
        uiModel.addAttribute("AMET_VAEOSAS", new AMET_VAEOSAS());
        addDateTimeFormatPatterns(uiModel);
        return "amet_vaeosass/create";
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.GET)
    public String AMET_VAEOSASController.show(@PathVariable("id") Long id, Model uiModel) {
        addDateTimeFormatPatterns(uiModel);
        uiModel.addAttribute("amet_vaeosas", AMET_VAEOSAS.findAMET_VAEOSAS(id));
        uiModel.addAttribute("itemId", id);
        return "amet_vaeosass/show";
    }
    
    @RequestMapping(method = RequestMethod.GET)
    public String AMET_VAEOSASController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            uiModel.addAttribute("amet_vaeosass", AMET_VAEOSAS.findAMET_VAEOSASEntries(page == null ? 0 : (page.intValue() - 1) * sizeNo, sizeNo));
            float nrOfPages = (float) AMET_VAEOSAS.countAMET_VAEOSASs() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("amet_vaeosass", AMET_VAEOSAS.findAllAMET_VAEOSASs());
        }
        addDateTimeFormatPatterns(uiModel);
        return "amet_vaeosass/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT)
    public String AMET_VAEOSASController.update(@Valid AMET_VAEOSAS AMET_VAEOSAS, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            uiModel.addAttribute("AMET_VAEOSAS", AMET_VAEOSAS);
            addDateTimeFormatPatterns(uiModel);
            return "amet_vaeosass/update";
        }
        uiModel.asMap().clear();
        AMET_VAEOSAS.merge();
        return "redirect:/amet_vaeosass/" + encodeUrlPathSegment(AMET_VAEOSAS.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{id}", params = "form", method = RequestMethod.GET)
    public String AMET_VAEOSASController.updateForm(@PathVariable("id") Long id, Model uiModel) {
        uiModel.addAttribute("AMET_VAEOSAS", AMET_VAEOSAS.findAMET_VAEOSAS(id));
        addDateTimeFormatPatterns(uiModel);
        return "amet_vaeosass/update";
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE)
    public String AMET_VAEOSASController.delete(@PathVariable("id") Long id, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        AMET_VAEOSAS.findAMET_VAEOSAS(id).remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/amet_vaeosass";
    }
    
    @ModelAttribute("amets")
    public Collection<AMET> AMET_VAEOSASController.populateAMETS() {
        return AMET.findAllAMETS();
    }
    
    @ModelAttribute("amet_vaeosass")
    public Collection<AMET_VAEOSAS> AMET_VAEOSASController.populateAMET_VAEOSASs() {
        return AMET_VAEOSAS.findAllAMET_VAEOSASs();
    }
    
    @ModelAttribute("vaeosas")
    public Collection<VAEOSA> AMET_VAEOSASController.populateVAEOSAS() {
        return VAEOSA.findAllVAEOSAS();
    }
    
    void AMET_VAEOSASController.addDateTimeFormatPatterns(Model uiModel) {
        uiModel.addAttribute("AMET_VAEOSAS_alates_date_format", "dd.MM.yyyy");
        uiModel.addAttribute("AMET_VAEOSAS_kuni_date_format", "dd.MM.yyyy");
    }
    
    String AMET_VAEOSASController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
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
