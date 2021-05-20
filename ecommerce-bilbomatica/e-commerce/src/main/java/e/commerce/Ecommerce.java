package e.commerce;

import info.magnolia.ui.api.app.AppContext;
import info.magnolia.ui.api.app.AppView;
import info.magnolia.ui.api.location.Location;
import info.magnolia.ui.contentapp.ContentApp;

/**
 * This class is optional and represents the configuration for the e-commerce module.
 * By exposing simple getter/setter/adder methods, this bean can be configured via content2bean
 * using the properties and node from <tt>config:/modules/e-commerce</tt>.
 * If you don't need this, simply remove the reference to this class in the module descriptor xml.
 * See https://documentation.magnolia-cms.com/display/DOCS/Module+configuration for information about module configuration.
 */
public class Ecommerce extends ContentApp {

	public Ecommerce(AppContext appContext, AppView view) {
		super(appContext, view);
		// TODO Auto-generated constructor stub
	}
    /* you can optionally implement info.magnolia.module.ModuleLifecycle */
	 public void start(Location location) {
	        super.start(location);
	        // code to extend default behavior
	    }
	    @Override
	    public void locationChanged(Location location) {
	        super.locationChanged(location);
	        // code to extend default behavior
	    }
	    @Override
	    public void stop() {
	        // code to extend default behavior
	    }
	    /* you can optionally implement info.magnolia.module.ModuleLifecycle */
}
