package com.appsgeyser.multiTabApp.utils;

import android.content.Context;
import android.webkit.WebSettings;
import com.w_19998775.R;
/* loaded from: classes2.dex */
public class UserAgentManager {
    public static String getDesktopUserAgent(Context context) {
        return context.getString(R.string.chromeUserAgent);
    }

    public static String getDefaultUserAgent(Context context) {
        return NewApiWrapper.getDefaultUserAgent(context);
    }

    /* loaded from: classes2.dex */
    static class NewApiWrapper {
        NewApiWrapper() {
        }

        static String getDefaultUserAgent(Context context) {
            return WebSettings.getDefaultUserAgent(context);
        }
    }
}
