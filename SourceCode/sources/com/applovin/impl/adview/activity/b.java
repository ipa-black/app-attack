package com.applovin.impl.adview.activity;

import android.app.Activity;
import android.content.Context;
import android.content.res.Configuration;
import android.view.WindowManager;
import com.applovin.impl.sdk.ad.e;
import com.applovin.impl.sdk.utils.Utils;
import com.applovin.sdk.AppLovinSdkUtils;
/* loaded from: classes.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private final Activity f4294a;

    /* renamed from: b  reason: collision with root package name */
    private final int f4295b;

    /* renamed from: c  reason: collision with root package name */
    private final int f4296c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f4297d;

    /* renamed from: e  reason: collision with root package name */
    private final boolean f4298e;

    public b(Activity activity) {
        this.f4294a = activity;
        int rotation = Utils.getRotation(activity);
        this.f4296c = rotation;
        boolean isTablet = AppLovinSdkUtils.isTablet(activity);
        this.f4297d = isTablet;
        this.f4295b = a(rotation, isTablet);
        this.f4298e = isTablet && 2 == a(activity);
    }

    private int a(int i, boolean z) {
        if (z && this.f4298e) {
            if (i == 0) {
                return 0;
            }
            if (i == 1) {
                return 9;
            }
            if (i == 2) {
                return 8;
            }
            return i == 3 ? 1 : -1;
        } else if (i == 0) {
            return 1;
        } else {
            if (i == 1) {
                return 0;
            }
            if (i == 2) {
                return 9;
            }
            return i == 3 ? 8 : -1;
        }
    }

    private static int a(Context context) {
        Configuration configuration = context.getResources().getConfiguration();
        int rotation = ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getRotation();
        return (((rotation == 0 || rotation == 2) && configuration.orientation == 2) || ((rotation == 1 || rotation == 3) && configuration.orientation == 1)) ? 2 : 1;
    }

    private void a(int i) {
        try {
            this.f4294a.setRequestedOrientation(i);
        } catch (Throwable unused) {
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0015, code lost:
        if (r6 != 3) goto L10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0018, code lost:
        if (r6 != 1) goto L10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0043, code lost:
        if (r6 == 2) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0046, code lost:
        r0 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0052, code lost:
        if (r6 == 1) goto L33;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void a(com.applovin.impl.sdk.ad.e.b r6) {
        /*
            r5 = this;
            com.applovin.impl.sdk.ad.e$b r0 = com.applovin.impl.sdk.ad.e.b.ACTIVITY_PORTRAIT
            r1 = 3
            r2 = 2
            r3 = 1
            if (r6 != r0) goto L2d
            boolean r6 = r5.f4297d
            r0 = 9
            if (r6 == 0) goto L1e
            boolean r6 = r5.f4298e
            if (r6 == 0) goto L1e
            int r6 = r5.f4296c
            if (r6 == r3) goto L18
            if (r6 == r1) goto L18
            goto L24
        L18:
            if (r6 != r3) goto L24
        L1a:
            r5.a(r0)
            goto L55
        L1e:
            int r6 = r5.f4296c
            if (r6 == 0) goto L28
            if (r6 == r2) goto L28
        L24:
            r5.a(r3)
            goto L55
        L28:
            if (r6 != 0) goto L2b
            goto L24
        L2b:
            r3 = r0
            goto L24
        L2d:
            com.applovin.impl.sdk.ad.e$b r0 = com.applovin.impl.sdk.ad.e.b.ACTIVITY_LANDSCAPE
            if (r6 != r0) goto L55
            boolean r6 = r5.f4297d
            r0 = 8
            r4 = 0
            if (r6 == 0) goto L48
            boolean r6 = r5.f4298e
            if (r6 == 0) goto L48
            int r6 = r5.f4296c
            if (r6 == 0) goto L43
            if (r6 == r2) goto L43
            goto L4e
        L43:
            if (r6 != r2) goto L46
            goto L1a
        L46:
            r0 = r4
            goto L1a
        L48:
            int r6 = r5.f4296c
            if (r6 == r3) goto L52
            if (r6 == r1) goto L52
        L4e:
            r5.a(r4)
            goto L55
        L52:
            if (r6 != r3) goto L1a
            goto L46
        L55:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.impl.adview.activity.b.a(com.applovin.impl.sdk.ad.e$b):void");
    }

    public void a(e eVar) {
        int i;
        if (!eVar.F() || (i = this.f4295b) == -1) {
            a(eVar.p());
        } else {
            a(i);
        }
    }
}
