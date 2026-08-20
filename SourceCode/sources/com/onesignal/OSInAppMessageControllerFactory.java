package com.onesignal;

import com.onesignal.language.LanguageContext;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public class OSInAppMessageControllerFactory {
    private static final Object LOCK = new Object();
    private OSInAppMessageController controller;

    public OSInAppMessageController getController(OneSignalDbHelper oneSignalDbHelper, OSTaskController oSTaskController, OSLogger oSLogger, OSSharedPreferences oSSharedPreferences, LanguageContext languageContext) {
        if (this.controller == null) {
            synchronized (LOCK) {
                if (this.controller == null) {
                    this.controller = new OSInAppMessageController(oneSignalDbHelper, oSTaskController, oSLogger, oSSharedPreferences, languageContext);
                }
            }
        }
        return this.controller;
    }
}
