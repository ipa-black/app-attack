package com.appsgeyser.multiTabApp.configuration;

import android.content.Context;
import com.appsgeyser.multiTabApp.Factory;
import com.appsgeyser.multiTabApp.MainNavigationActivity;
/* loaded from: classes2.dex */
public class ConfigResolver {
    public static WebWidgetConfiguration resolveConfig(Context context) {
        MainNavigationActivity mainNavigationActivity = Factory.getInstance().getMainNavigationActivity();
        if (mainNavigationActivity != null) {
            return mainNavigationActivity.getConfig();
        }
        try {
            return WebWidgetConfigurationManager.getInstance(context).loadConfiguration(context);
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }
}
