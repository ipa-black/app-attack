package com.applovin.impl.sdk.utils;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.XmlResourceParser;
import android.os.Bundle;
import com.applovin.impl.sdk.v;
import com.google.android.exoplayer2.util.MimeTypes;
/* loaded from: classes.dex */
public class e {

    /* renamed from: a  reason: collision with root package name */
    private static e f6067a;

    /* renamed from: b  reason: collision with root package name */
    private static final Object f6068b = new Object();

    /* renamed from: c  reason: collision with root package name */
    private final Bundle f6069c;

    /* renamed from: d  reason: collision with root package name */
    private final int f6070d;

    /* renamed from: e  reason: collision with root package name */
    private final boolean f6071e;

    private e(Context context) {
        boolean z;
        Bundle bundle = null;
        try {
            try {
                bundle = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData;
            } catch (PackageManager.NameNotFoundException e2) {
                v.c("AndroidManifest", "Failed to get meta data.", e2);
            }
            int i = 0;
            try {
                XmlResourceParser openXmlResourceParser = context.getAssets().openXmlResourceParser("AndroidManifest.xml");
                int eventType = openXmlResourceParser.getEventType();
                int i2 = 0;
                z = false;
                do {
                    if (2 == eventType) {
                        try {
                            if (openXmlResourceParser.getName().equals(MimeTypes.BASE_TYPE_APPLICATION)) {
                                for (int i3 = 0; i3 < openXmlResourceParser.getAttributeCount(); i3++) {
                                    String attributeName = openXmlResourceParser.getAttributeName(i3);
                                    String attributeValue = openXmlResourceParser.getAttributeValue(i3);
                                    if (attributeName.equals("networkSecurityConfig")) {
                                        i2 = Integer.valueOf(attributeValue.substring(1)).intValue();
                                    } else if (attributeName.equals("usesCleartextTraffic")) {
                                        z = Boolean.valueOf(attributeValue).booleanValue();
                                    }
                                }
                            }
                        } catch (Throwable th) {
                            th = th;
                            i = i2;
                            try {
                                v.c("AndroidManifest", "Failed to parse AndroidManifest.xml.", th);
                                this.f6070d = i;
                                this.f6071e = z;
                            } catch (Throwable th2) {
                                this.f6070d = i;
                                this.f6071e = z;
                                throw th2;
                            }
                        }
                    }
                    eventType = openXmlResourceParser.next();
                } while (eventType != 1);
                this.f6070d = i2;
            } catch (Throwable th3) {
                th = th3;
                z = false;
            }
            this.f6071e = z;
        } finally {
            this.f6069c = bundle;
        }
    }

    public static e a(Context context) {
        e eVar;
        synchronized (f6068b) {
            if (f6067a == null) {
                f6067a = new e(context);
            }
            eVar = f6067a;
        }
        return eVar;
    }

    public String a(String str, String str2) {
        Bundle bundle = this.f6069c;
        return bundle != null ? bundle.getString(str, str2) : str2;
    }

    public boolean a() {
        return this.f6070d != 0;
    }

    public boolean a(String str) {
        Bundle bundle = this.f6069c;
        if (bundle != null) {
            return bundle.containsKey(str);
        }
        return false;
    }

    public boolean a(String str, boolean z) {
        Bundle bundle = this.f6069c;
        return bundle != null ? bundle.getBoolean(str, z) : z;
    }
}
