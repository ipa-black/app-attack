package com.appsgeyser.sdk.ads;

import android.content.Context;
import com.appsgeyser.sdk.configuration.Configuration;
import com.appsgeyser.sdk.hasher.Hasher;
/* loaded from: classes2.dex */
public abstract class BaseSecureJsInterface {
    /* JADX INFO: Access modifiers changed from: protected */
    public boolean checkSecurityCode(String str, Context context) {
        Configuration configuration = Configuration.getInstance(context);
        return str.equalsIgnoreCase(Hasher.md5(configuration.getAppGuid() + configuration.getApplicationId()));
    }
}
