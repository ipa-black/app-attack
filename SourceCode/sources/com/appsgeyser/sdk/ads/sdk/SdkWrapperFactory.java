package com.appsgeyser.sdk.ads.sdk;

import java.security.InvalidParameterException;
import java.util.HashMap;
/* loaded from: classes2.dex */
class SdkWrapperFactory {
    private static final SdkWrapperFactory INSTANCE = new SdkWrapperFactory();
    private final HashMap<String, SdkWrapper> map = new HashMap<>();

    private SdkWrapperFactory() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public SdkWrapper getWrapperByKey(String str) throws InvalidParameterException {
        if (this.map.get(str) == null) {
            SdkWrapper newInstance = newInstance(str);
            if (newInstance == null) {
                throw new InvalidParameterException("Could not create wrapper for " + str);
            }
            this.map.put(str, newInstance);
        }
        return this.map.get(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static SdkWrapperFactory getInstance() {
        return INSTANCE;
    }

    private SdkWrapper newInstance(String str) {
        str.hashCode();
        if (str.equals("APPNEXT")) {
            return new AppNextSdkWrapper();
        }
        return null;
    }
}
