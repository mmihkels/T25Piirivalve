// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ee.itcollege.T25Piirivalve.entities;

import ee.itcollege.T25Piirivalve.entities.INTSIDENDI_LIIK;
import java.lang.Long;
import java.util.List;

privileged aspect INTSIDENDI_LIIK_Roo_Entity {
    
    public static long INTSIDENDI_LIIK.countINTSIDENDI_LIIKs() {
        return entityManager().createQuery("SELECT COUNT(o) FROM INTSIDENDI_LIIK o", Long.class).getSingleResult();
    }
    
    public static List<INTSIDENDI_LIIK> INTSIDENDI_LIIK.findAllINTSIDENDI_LIIKs() {
        return entityManager().createQuery("SELECT o FROM INTSIDENDI_LIIK o", INTSIDENDI_LIIK.class).getResultList();
    }
    
    public static INTSIDENDI_LIIK INTSIDENDI_LIIK.findINTSIDENDI_LIIK(Long id) {
        if (id == null) return null;
        return entityManager().find(INTSIDENDI_LIIK.class, id);
    }
    
    public static List<INTSIDENDI_LIIK> INTSIDENDI_LIIK.findINTSIDENDI_LIIKEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM INTSIDENDI_LIIK o", INTSIDENDI_LIIK.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
}
