package com.ironsource.sdk.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes3.dex */
public class FeaturesManager {

    /* renamed from: a  reason: collision with root package name */
    private static volatile FeaturesManager f11590a;

    /* renamed from: b  reason: collision with root package name */
    private Map<String, ?> f11591b;

    /* renamed from: c  reason: collision with root package name */
    private ArrayList<String> f11592c = new ArrayList<String>() { // from class: com.ironsource.sdk.controller.FeaturesManager.1
        {
            add("webviewperad-v1");
            add("noPackagesInstallationPolling");
            add("removeViewOnDestroy");
            add("bannerMultipleInstances");
            add("lastUpdateTimeRemoval");
            add("isnFileSystemAPI");
            add("controlActivityLifecycle");
            add("bannersOpenMeasurement");
        }
    };

    private FeaturesManager() {
        if (f11590a != null) {
            throw new RuntimeException("Use getInstance() method to get the single instance of this class.");
        }
        this.f11591b = new HashMap();
    }

    public static FeaturesManager getInstance() {
        if (f11590a == null) {
            synchronized (FeaturesManager.class) {
                if (f11590a == null) {
                    f11590a = new FeaturesManager();
                }
            }
        }
        return f11590a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final ArrayList<String> a() {
        return new ArrayList<>(this.f11592c);
    }

    public int getDebugMode() {
        Integer num = 0;
        try {
            if (this.f11591b.containsKey("debugMode")) {
                num = (Integer) this.f11591b.get("debugMode");
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        if (num != null) {
            return num.intValue();
        }
        return 0;
    }

    public void updateDebugConfigurations(Map<String, Object> map) {
        if (map == null) {
            return;
        }
        this.f11591b = map;
    }
}
