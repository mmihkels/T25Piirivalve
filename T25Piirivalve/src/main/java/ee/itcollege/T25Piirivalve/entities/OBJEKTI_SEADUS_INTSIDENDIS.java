package ee.itcollege.T25Piirivalve.entities;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.*;

import org.springframework.roo.addon.entity.RooEntity;
import org.springframework.roo.addon.tostring.RooToString;
import ee.itcollege.T25Piirivalve.entities.OBJEKT_INTSIDENDIS;
import ee.itcollege.T25Piirivalve.entities.SEADUS;

/**
 * Entity implementation class for Entity: OBJEKTI_SEADUS_INTSIDENDIS
 *
 */
@Entity
@RooToString
@RooEntity

public class OBJEKTI_SEADUS_INTSIDENDIS extends BaseEntity implements Serializable {

	
	private Date alates;
	private Date kuni;
	private static final long serialVersionUID = 1L;
	@ManyToOne
	private OBJEKT_INTSIDENDIS oBJEKT_INTSIDENDIS;
	@ManyToOne
	private SEADUS sEADUS;

	public OBJEKTI_SEADUS_INTSIDENDIS() {
		super();
	}   
	public Date getAlates() {
		return this.alates;
	}

	public void setAlates(Date alates) {
		this.alates = alates;
	}   
	public Date getKuni() {
		return this.kuni;
	}

	public void setKuni(Date kuni) {
		this.kuni = kuni;
	}
	public OBJEKT_INTSIDENDIS getOBJEKT_INTSIDENDIS() {
	    return oBJEKT_INTSIDENDIS;
	}
	public void setOBJEKT_INTSIDENDIS(OBJEKT_INTSIDENDIS param) {
	    this.oBJEKT_INTSIDENDIS = param;
	}
	public SEADUS getSEADUS() {
	    return sEADUS;
	}
	public void setSEADUS(SEADUS param) {
	    this.sEADUS = param;
	}
   
}
