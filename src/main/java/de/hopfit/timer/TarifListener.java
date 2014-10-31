/*
 * Created on 07.02.2006
 *
 */
package de.hopfit.timer;

import de.hopfit.controller.TarifInfoAction;
import de.hopfit.util.Const;
import de.hopfit.util.Logger;

/**
 * @author Hopf
 * 
 */
public class TarifListener implements ContextListener {

	public TarifListener() {
		super();
		Logger.log("TarifListener()");
	}

	public synchronized void notify(boolean bstop) {
		Logger.log("*****************************************");
		Logger.log("TarifListener: Check for tarif updates...");		
		Logger.log("*****************************************");
		
			MailThread.resetCounter();
			TarifInfoAction tia = new TarifInfoAction();
			
//			// DEMO SHOPS
			for (int i = 1; i <= 3; i++) {
				tia.createTarifInfo("" + i);
			}
			
//			// TEST
//			for (int i = 100; i <= 111; i++) {
//				tia.createTarifInfo("" + i);
//			}
			
			// Partners
			for (int i = Const.START_PARTNER_ID; i <= Const.END_PARTNER_ID; i++) {
				tia.createTarifInfo("" + i);
			}
			
	
		// do
		if (!bstop) {
			Const.tarifTimer = new ContextThread(this, Const.TIMER_INTERVAL);
			Const.tarifTimer.start();
		}
	}
}
