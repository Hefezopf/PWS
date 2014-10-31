package de.hopfit.model;

import java.io.Serializable;
import java.text.DecimalFormat;

import org.apache.struts.upload.FormFile;

import de.hopfit.util.Const;
 

public class Item implements Serializable{

  /**
	 * Comment for <code>serialVersionUID</code>
	 */
  private static final long serialVersionUID = 1L;
  private String title;
  private String price;
  private String description;
  private String detaildescription;
  private String item_no;
  private String image;
  private int    menge = 0;
  private FormFile formfile;
  private String formatedSumme;
  private int    itemId = -1;
  private int    partnerId = -1;
  private String visible;


	/**
	 * 
	 */
//	public Item() {
//	//	super();
//	}
	
  public Item(int itemId, int partnerId, String title, String price,
  		String desc, String detaildesc, FormFile formfile, 
  		String item_no, String visible) {
  	this(title, price, desc, detaildesc, formfile, item_no, visible);
    this.itemId = itemId;
    this.partnerId = partnerId;
  }

  public Item(String title, String price, String desc, String detaildesc,
  		FormFile formfile, String item_no, String visible) {
    this.title = title;
    this.price = price;
    this.description = desc;
    this.detaildescription = detaildesc;
    this.formfile = formfile;
    this.item_no = item_no;
    this.visible = visible;
 }

  
  
/**
 * @return Returns the visible.
 */
public String getVisible() {
	return visible;
}
/**
 * @param visible The visible to set.
 */
public void setVisible(String visible) {
	this.visible = visible;
}
	public int getPartnerId() {
		return partnerId;
	}
	
	public void setPartnerId(int partnerId) {
		this.partnerId = partnerId;
	}

	/**
	 * @return Returns the detaildescription.
	 */
	public String getDetaildescription() {
		return detaildescription;
	}
	/**
	 * @param detaildescription The detaildescription to set.
	 */
	public void setDetaildescription(String detaildescription) {
		this.detaildescription = detaildescription;
	}
	/**
	 * @return Returns the desc.
	 */
	public String getDescription() {
		return description;
	}
	/**
	 * @param desc The desc to set.
	 */
	public void setDescription(String desc) {
		this.description = desc;
	}
	/**
	 * @return Returns the item_no.
	 */
	public String getItem_no() {
		return item_no;
	}
	/**
	 * @param item_no The item_no to set.
	 */
	public void setItem_no(String item_no) {
		this.item_no = item_no;
	}
	
	
	/**
	 * @param title The title to set.
	 */
	public void setTitle(String title) {
		this.title = title;
	}
	
	public double getWert() {
    return menge * Double.parseDouble(price);
  }

  public String getTitle() {
    return title;
  }

  public String getPrice() {
	  DecimalFormat df = new DecimalFormat(Const.PRICE_FORMAT);
	//  Logger.log(",,,,,Price:"+price);
	  
	  String s = null;
	try {
		s = df.format(Double.parseDouble(price));
	} catch (NumberFormatException e) {
		//  Logger.log(",,,Error,,,,Price:"+s);
	}
	  
    return s;
  }

  public String getDoublePrice() {
  	String s = price.replace(',','.');
  //	Logger.log("getDoublePrice:"+(s));
  	return s;
  }

  public void setPrice(String price) {
    this.price = price;
  }

  public int getMenge() {
  	return menge;
  }
  
  public void incrementMenge() {
    this.menge++;
  }
  
  public void setMenge(int menge) {
    this.menge = menge;
  }


  public int getItemId() {
    return itemId;
  }
  
  public void setItemId(int itemId) {
    this.itemId = itemId;
  }

	/**
	 * @return Returns the formatedSumme.
	 */
	public String getFormatedSumme() {
		  DecimalFormat df = new DecimalFormat(Const.PRICE_FORMAT);
		  formatedSumme = df.format(getWert());
	
		return formatedSumme;
	}
	/**
	 * @param formatedSumme The formatedSumme to set.
	 */
	public void setFormatedSumme(String formatedSumme) {
		this.formatedSumme = formatedSumme;
	}
	
	public String getImage() {
		return image;
	}
	
	/**
	 * @param image The image to set.
	 */
	public void setImage(String image) {
		this.image = image;
	}
	/**
	 * @return Returns the formfile.
	 */
	public FormFile getFormfile() {
		return formfile;
	}
	/**
	 * @param formfile The formfile to set.
	 */
	public void setFormfile(FormFile formfile) {
		this.formfile = formfile;
	}
}
