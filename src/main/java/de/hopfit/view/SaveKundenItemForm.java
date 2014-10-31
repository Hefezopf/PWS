package de.hopfit.view;

import java.text.DecimalFormat;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;
import org.apache.struts.upload.FormFile;

import de.hopfit.util.Const;

public class SaveKundenItemForm extends ActionForm {
	
	/**
	 * Comment for <code>serialVersionUID</code>
	 */
	private static final long serialVersionUID = 325756321504691253L;

	private FormFile myItemFile;

	private String description;

	private String detaildescription;

	private String item_no;

	private String title;

	private String price;

	private String visible;

	/* (non-Javadoc)
	 * @see org.apache.struts.action.ActionForm#validate(org.apache.struts.action.ActionMapping, javax.servlet.http.HttpServletRequest)
	 */
	public ActionErrors validate(ActionMapping mapping,
			HttpServletRequest request) {
		ActionErrors errors = new ActionErrors();

		String item_id = (String) request.getParameter(Const.ITEM_ID);
		request.setAttribute(Const.ITEM_ID, item_id);
		request.setAttribute(Const.ITEM_NO, this.getItem_no());
		request.setAttribute(Const.TITLE, this.getTitle());
		request.setAttribute(Const.PRICE, this.getPrice());
		request.setAttribute(Const.DESCRIPTION, this.getDescription());
		request.setAttribute(Const.DETAILDESCRIPTION, this
				.getDetaildescription());

		//
		// Form verification
		//
		
		if (item_no.length() > Const.ITEM_NO_TEXT_LENGTH) {
			errors.add("item_no", new ActionMessage("error.itemnoField.tooLong"));
		}
		
		if (title == null || title.length() == 0) {
			errors.add("title", new ActionMessage("error.titleField.required"));
		}
		if (title.length() > Const.TILTLE_TEXT_LENGTH) {
			errors.add("title", new ActionMessage("error.titleField.tooLong"));
		}

		if (price == null || price.length() == 0) {
			errors.add("price", new ActionMessage("error.priceField.required"));
		} else {
			try {
				DecimalFormat df = new DecimalFormat(Const.PRICE_FORMAT);
				String s = price.replace(',', '.');
				s = df.format(Double.parseDouble(s));
			} catch (Exception e) {
				errors.add("price", new ActionMessage(
						"error.priceField.required"));
			}
		}

		if (description == null || description.length() == 0) {
			errors.add("description", new ActionMessage(
					"error.descriptionField.required"));
		}
		if (description.length() > Const.DESCRIPTION_TEXT_LENGTH) {
			errors.add("description", new ActionMessage("error.descriptionField.tooLong"));
		}
		
		if (detaildescription.length() > Const.DETAIL_DESCRIPTION_TEXT_LENGTH) {
			errors.add("detaildescription", new ActionMessage("error.detaildescriptionField.tooLong"));
		}

		if (myItemFile.getFileSize() > Const.FILE_SIZE) {
			errors.add("picFile", new ActionMessage("error.picField.required",
					Const.FILE_SIZE));
		}
		if ((!myItemFile.getFileName().equals(""))
				&& (!myItemFile.getFileName().toUpperCase().contains(".GIF"))) {
			errors.add("pickindFile", new ActionMessage(
					"error.pickindField.required", Const.FILE_SIZE));
		}

		return errors;
	}

	/**
	 * @return Returns the visible.
	 */
	public String getVisible() {
		return visible;
	}

	/**
	 * @param visible
	 *            The visible to set.
	 */
	public void setVisible(String visible) {
		this.visible = visible;
	}

	/**
	 * @return Returns the detaildescription.
	 */
	public String getDetaildescription() {
		return detaildescription.replace(Const.JAVA_SCRIPT_ANFUEHRUNGSZEICHEN, Const.ERSATZ_ANFUEHRUNGSZEICHEN);
	}

	/**
	 * @param detaildescription
	 *            The detaildescription to set.
	 */
	public void setDetaildescription(String detaildescription) {
		this.detaildescription = detaildescription;
	}

	public FormFile getMyItemFile() {
		return myItemFile;
	}

	public void setMyItemFile(FormFile myItemFile) {
		this.myItemFile = myItemFile;
	}

	public void setTitle(String title) {
		this.title = title.trim();
	}

	public String getTitle() {
		return title.replace(Const.JAVA_SCRIPT_ANFUEHRUNGSZEICHEN, Const.ERSATZ_ANFUEHRUNGSZEICHEN);
	}

	public void setPrice(String price) {
		this.price = price.trim();
	}

	public String getPrice() {
		return price;
	}

	/**
	 * @return Returns the desc.
	 */
	public String getDescription() {
		return description.replace(Const.JAVA_SCRIPT_ANFUEHRUNGSZEICHEN, Const.ERSATZ_ANFUEHRUNGSZEICHEN);
	}

	/**
	 * @param desc
	 *            The desc to set.
	 */
	public void setDescription(String desc) {
		this.description = desc;
	}

	/**
	 * @return Returns the item_no.
	 */
	public String getItem_no() {
		return item_no.replace(Const.JAVA_SCRIPT_ANFUEHRUNGSZEICHEN, Const.ERSATZ_ANFUEHRUNGSZEICHEN);
	}

	/**
	 * @param item_no
	 *            The item_no to set.
	 */
	public void setItem_no(String item_no) {
		this.item_no = item_no;
	}
}
