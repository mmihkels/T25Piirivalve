// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ee.itcollege.T25Piirivalve.entities;

import ee.itcollege.T25Piirivalve.entities.PIIRIVALVURI_SEADUS_INTSIDENDIS;
import java.lang.Long;
import java.util.List;
import javax.persistence.Entity;

privileged aspect PIIRIVALVURI_SEADUS_INTSIDENDIS_Roo_Entity {
    
    declare @type: PIIRIVALVURI_SEADUS_INTSIDENDIS: @Entity;
    
    public static long PIIRIVALVURI_SEADUS_INTSIDENDIS.countPIIRIVALVURI_SEADUS_INTSIDENDISs() {
        return entityManager().createQuery("SELECT COUNT(o) FROM PIIRIVALVURI_SEADUS_INTSIDENDIS o", Long.class).getSingleResult();
    }
    
    public static List<PIIRIVALVURI_SEADUS_INTSIDENDIS> PIIRIVALVURI_SEADUS_INTSIDENDIS.findAllPIIRIVALVURI_SEADUS_INTSIDENDISs() {
        return entityManager().createQuery("SELECT o FROM PIIRIVALVURI_SEADUS_INTSIDENDIS o", PIIRIVALVURI_SEADUS_INTSIDENDIS.class).getResultList();
    }
    
    public static PIIRIVALVURI_SEADUS_INTSIDENDIS PIIRIVALVURI_SEADUS_INTSIDENDIS.findPIIRIVALVURI_SEADUS_INTSIDENDIS(Long id) {
        if (id == null) return null;
        return entityManager().find(PIIRIVALVURI_SEADUS_INTSIDENDIS.class, id);
    }
    
    public static List<PIIRIVALVURI_SEADUS_INTSIDENDIS> PIIRIVALVURI_SEADUS_INTSIDENDIS.findPIIRIVALVURI_SEADUS_INTSIDENDISEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM PIIRIVALVURI_SEADUS_INTSIDENDIS o", PIIRIVALVURI_SEADUS_INTSIDENDIS.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
}
