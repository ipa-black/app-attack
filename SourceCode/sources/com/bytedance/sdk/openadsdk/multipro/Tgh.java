package com.bytedance.sdk.openadsdk.multipro;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
/* compiled from: TTProviderManager.java */
/* loaded from: classes2.dex */
public class Tgh implements Qhi {
    private static volatile Tgh Qhi;
    private static final List<Qhi> ac;
    private static WeakReference<Context> cJ;

    private boolean ac(Uri uri) {
        return true;
    }

    static {
        List<Qhi> synchronizedList = Collections.synchronizedList(new ArrayList());
        ac = synchronizedList;
        synchronizedList.add(new com.bytedance.sdk.openadsdk.multipro.CJ.fl());
        synchronizedList.add(new com.bytedance.sdk.openadsdk.multipro.Qhi.cJ());
        synchronizedList.add(new com.bytedance.sdk.openadsdk.multipro.ac.Qhi());
        synchronizedList.add(new com.bytedance.sdk.openadsdk.cJ.Qhi.Tgh(new com.bytedance.sdk.component.Tgh.Qhi.cJ.cJ.cJ()));
        Iterator<Qhi> it = synchronizedList.iterator();
        while (it.hasNext()) {
            it.next();
        }
    }

    public static Tgh Qhi(Context context) {
        if (context != null) {
            cJ = new WeakReference<>(context.getApplicationContext());
        }
        if (Qhi == null) {
            synchronized (Tgh.class) {
                if (Qhi == null) {
                    Qhi = new Tgh();
                }
            }
        }
        return Qhi;
    }

    private Tgh() {
    }

    private Qhi cJ(Uri uri) {
        if (uri != null && ac(uri)) {
            String[] split = uri.getPath().split("/");
            if (split.length < 2) {
                return null;
            }
            String str = split[1];
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            for (Qhi qhi : ac) {
                if (str.equals(qhi.Qhi())) {
                    return qhi;
                }
            }
            return null;
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.Qhi
    public String Qhi() {
        return "";
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.Qhi
    public Cursor Qhi(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        try {
            Qhi cJ2 = cJ(uri);
            if (cJ2 != null) {
                return cJ2.Qhi(uri, strArr, str, strArr2, str2);
            }
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.Qhi
    public String Qhi(Uri uri) {
        try {
            Qhi cJ2 = cJ(uri);
            if (cJ2 != null) {
                return cJ2.Qhi(uri);
            }
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.Qhi
    public Uri Qhi(Uri uri, ContentValues contentValues) {
        try {
            Qhi cJ2 = cJ(uri);
            if (cJ2 != null) {
                return cJ2.Qhi(uri, contentValues);
            }
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.Qhi
    public int Qhi(Uri uri, String str, String[] strArr) {
        try {
            Qhi cJ2 = cJ(uri);
            if (cJ2 != null) {
                return cJ2.Qhi(uri, str, strArr);
            }
            return 0;
        } catch (Throwable unused) {
            return 0;
        }
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.Qhi
    public int Qhi(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        try {
            Qhi cJ2 = cJ(uri);
            if (cJ2 != null) {
                return cJ2.Qhi(uri, contentValues, str, strArr);
            }
            return 0;
        } catch (Throwable unused) {
            return 0;
        }
    }
}
