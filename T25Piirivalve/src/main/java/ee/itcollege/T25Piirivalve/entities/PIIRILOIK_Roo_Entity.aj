// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ee.itcollege.T25Piirivalve.entities;

import ee.itcollege.T25Piirivalve.entities.PIIRILOIK;
import java.lang.Long;
import java.util.List;

privileged aspect PIIRILOIK_Roo_Entity {
    
    public static long PIIRILOIK.countPIIRILOIKS() {
        return entityManager().createQuery("SELECT COUNT(o) FROM PIIRILOIK o", Long.class).getSingleResult();
    }
    
    public static List<PIIRILOIK> PIIRILOIK.findAllPIIRILOIKS() {
        return entityManager().createQuery("SELECT o FROM PIIRILOIK o", PIIRILOIK.class).getResultList();
    }
    
    public static PIIRILOIK PIIRILOIK.findPIIRILOIK(Long id) {
        if (id == null) return null;
        return entityManager().find(PIIRILOIK.class, id);
    }
    
    public static List<PIIRILOIK> PIIRILOIK.findPIIRILOIKEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM PIIRILOIK o", PIIRILOIK.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
}
