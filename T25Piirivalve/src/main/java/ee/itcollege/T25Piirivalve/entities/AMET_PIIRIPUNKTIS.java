package ee.itcollege.T25Piirivalve.entities;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.springframework.roo.addon.entity.RooEntity;
import org.springframework.roo.addon.tostring.RooToString;
import ee.itcollege.T25Piirivalve.entities.AMET;
import ee.itcollege.T25Piirivalve.entities.PIIRIPUNKT;
import javax.persistence.ManyToOne;

/**
 * Entity implementation class for Entity: AMET_PIIRIPUNKTIS
 *
 */
@Entity
@RooToString
@RooEntity

public class AMET_PIIRIPUNKTIS extends BaseEntity implements Serializable {

	   
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long amet_piiripunktis_id;
	private static final long serialVersionUID = 1L;
	@ManyToOne
	private AMET aMET;
	@ManyToOne
	private PIIRIPUNKT pIIRIPUNKT;

	public AMET_PIIRIPUNKTIS() {
		super();
	}   
	public Long getAmet_piiripunktis_id() {
		return this.amet_piiripunktis_id;
	}

	public void setAmet_piiripunktis_id(Long amet_piiripunktis_id) {
		this.amet_piiripunktis_id = amet_piiripunktis_id;
	}
	public AMET getAMET() {
	    return aMET;
	}
	public void setAMET(AMET param) {
	    this.aMET = param;
	}
	public PIIRIPUNKT getPIIRIPUNKT() {
	    return pIIRIPUNKT;
	}
	public void setPIIRIPUNKT(PIIRIPUNKT param) {
	    this.pIIRIPUNKT = param;
	}
   
}
