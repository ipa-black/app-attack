package com.appsgeyser.multiTabApp.configuration;

import android.content.Context;
import com.appsgeyser.multiTabApp.Factory;
import com.appsgeyser.multiTabApp.controllers.WidgetsController;
import com.w_19998775.R;
import java.io.InputStream;
import javax.xml.parsers.SAXParserFactory;
/* loaded from: classes2.dex */
public class XMLConfigurationParser {
    private static final String EXCEPTION_MESSAGE = "Wrong format of configuration.xml file";
    private static final int RESOURCE_ID = 2131820544;
    private Context context;

    public XMLConfigurationParser(Context context) {
        this.context = context;
    }

    public WebWidgetConfiguration parse() throws Exception {
        SAXParserFactory newInstance = SAXParserFactory.newInstance();
        try {
            WidgetsController widgetsController = Factory.getInstance().getWidgetsController();
            WebWidgetConfiguration webWidgetConfiguration = new WebWidgetConfiguration();
            widgetsController.removeAll();
            newInstance.newSAXParser().parse(getConfigurationStream(), new XMLConfigurationHandler(webWidgetConfiguration, widgetsController));
            return webWidgetConfiguration;
        } catch (Exception unused) {
            throw new Exception(EXCEPTION_MESSAGE);
        }
    }

    private InputStream getConfigurationStream() throws Exception {
        try {
            return this.context.getResources().openRawResource(R.raw.configuration);
        } catch (Exception unused) {
            throw new Exception("Couldn't find configuration file");
        }
    }
}
