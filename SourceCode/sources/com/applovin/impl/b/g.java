package com.applovin.impl.b;

import android.net.Uri;
import android.webkit.URLUtil;
import com.applovin.impl.sdk.utils.s;
import com.applovin.impl.sdk.v;
import io.bidmachine.utils.IabUtils;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes.dex */
public class g {

    /* renamed from: a  reason: collision with root package name */
    public final Set<k> f4552a = new HashSet();

    /* renamed from: b  reason: collision with root package name */
    public final Set<k> f4553b = new HashSet();

    /* renamed from: c  reason: collision with root package name */
    private Uri f4554c;

    /* renamed from: d  reason: collision with root package name */
    private Uri f4555d;

    /* renamed from: e  reason: collision with root package name */
    private int f4556e;

    /* renamed from: f  reason: collision with root package name */
    private int f4557f;

    public static g a(s sVar, com.applovin.impl.sdk.n nVar) {
        if (sVar != null) {
            if (nVar != null) {
                s b2 = sVar.b("StaticResource");
                if (b2 == null || !URLUtil.isValidUrl(b2.c())) {
                    nVar.D();
                    if (v.a()) {
                        nVar.D().e("VastIndustryIcon", "Unable to create industry icon.  No valid image URL found.");
                        return null;
                    }
                    return null;
                }
                g gVar = new g();
                gVar.f4554c = Uri.parse(b2.c());
                s c2 = sVar.c("IconClickThrough");
                if (c2 != null && URLUtil.isValidUrl(c2.c())) {
                    gVar.f4555d = Uri.parse(c2.c());
                }
                String str = sVar.b().get(IabUtils.KEY_WIDTH);
                int i = 0;
                int parseInt = (str == null || Integer.parseInt(str) <= 0) ? 0 : Integer.parseInt(str);
                String str2 = sVar.b().get(IabUtils.KEY_HEIGHT);
                if (str2 != null && Integer.parseInt(str2) > 0) {
                    i = Integer.parseInt(str2);
                }
                int intValue = ((Integer) nVar.a(com.applovin.impl.sdk.c.b.ey)).intValue();
                if (parseInt <= 0 || i <= 0) {
                    gVar.f4557f = intValue;
                } else {
                    double d2 = parseInt / i;
                    int min = Math.min(Math.max(parseInt, i), intValue);
                    if (parseInt >= i) {
                        gVar.f4556e = min;
                        gVar.f4557f = (int) (min / d2);
                        return gVar;
                    }
                    gVar.f4557f = min;
                    intValue = (int) (min * d2);
                }
                gVar.f4556e = intValue;
                return gVar;
            }
            throw new IllegalArgumentException("No sdk specified.");
        }
        throw new IllegalArgumentException("No node specified.");
    }

    public Uri a() {
        return this.f4554c;
    }

    public Uri b() {
        return this.f4555d;
    }

    public int c() {
        return this.f4556e;
    }

    public int d() {
        return this.f4557f;
    }

    public Set<k> e() {
        return this.f4552a;
    }

    public Set<k> f() {
        return this.f4553b;
    }

    public String toString() {
        return "VastIndustryIcon{imageUri='" + a() + "', clickUri='" + b() + "', width=" + c() + ", height=" + d() + "}";
    }
}
