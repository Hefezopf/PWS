/*
 * Created on 07.02.2006
 *
 * TODO To change the template for this generated file go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
package de.hopfit.timer;

import de.hopfit.controller.StatistikAction;
import de.hopfit.util.Const;
import de.hopfit.util.Logger;

/**
 * @author Hopf
 * 
 * TODO To change the template for this generated type comment go to Window -
 * Preferences - Java - Code Style - Code Templates
 */
public class StatistikListener implements ContextListener {

	public StatistikListener() {
		super();
		Logger.log("StatistikListener()");
	}

	public synchronized void notify(boolean bstop) {
		Logger.log("******************************************");
		Logger.log("StatistikListener: check for statistics...");
		Logger.log("******************************************");

		MailThread.resetCounter();
		StatistikAction sa = new StatistikAction();

		// DEMO SHOPS
		for (int i = 1; i <= 3; i++) {
			sa.createStatistikInfo("" + i);
		}

		// Partners
		for (int i = Const.START_PARTNER_ID; i <= Const.END_PARTNER_ID; i++) {
			sa.createStatistikInfo("" + i);
		}

		// do
		if (!bstop) {
			Const.statistikTimer = new ContextThread(this, Const.TIMER_INTERVAL);
			Const.statistikTimer.start();
		}
	}
}
