package com.applovin.impl.b;

import android.net.Uri;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.sdk.utils.s;
import com.applovin.impl.sdk.v;
import io.bidmachine.utils.IabUtils;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
/* loaded from: classes.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    private int f4531a;

    /* renamed from: b  reason: collision with root package name */
    private int f4532b;

    /* renamed from: c  reason: collision with root package name */
    private Uri f4533c;

    /* renamed from: d  reason: collision with root package name */
    private i f4534d;

    /* renamed from: e  reason: collision with root package name */
    private final Set<k> f4535e = new HashSet();

    /* renamed from: f  reason: collision with root package name */
    private final Map<String, Set<k>> f4536f = CollectionUtils.map();

    private d() {
    }

    public static d a(s sVar, d dVar, e eVar, com.applovin.impl.sdk.n nVar) {
        s b2;
        if (sVar != null) {
            if (nVar != null) {
                if (dVar == null) {
                    try {
                        dVar = new d();
                    } catch (Throwable th) {
                        nVar.D();
                        if (v.a()) {
                            nVar.D().b("VastCompanionAd", "Error occurred while initializing", th);
                            return null;
                        }
                        return null;
                    }
                }
                if (dVar.f4531a == 0 && dVar.f4532b == 0) {
                    int parseInt = StringUtils.parseInt(sVar.b().get(IabUtils.KEY_WIDTH));
                    int parseInt2 = StringUtils.parseInt(sVar.b().get(IabUtils.KEY_HEIGHT));
                    if (parseInt > 0 && parseInt2 > 0) {
                        dVar.f4531a = parseInt;
                        dVar.f4532b = parseInt2;
                    }
                }
                dVar.f4534d = i.a(sVar, dVar.f4534d, nVar);
                if (dVar.f4533c == null && (b2 = sVar.b("CompanionClickThrough")) != null) {
                    String c2 = b2.c();
                    if (StringUtils.isValidString(c2)) {
                        dVar.f4533c = Uri.parse(c2);
                    }
                }
                m.a(sVar.a("CompanionClickTracking"), dVar.f4535e, eVar, nVar);
                m.a(sVar, dVar.f4536f, eVar, nVar);
                return dVar;
            }
            throw new IllegalArgumentException("No sdk specified.");
        }
        throw new IllegalArgumentException("No node specified.");
    }

    public Uri a() {
        return this.f4533c;
    }

    public i b() {
        return this.f4534d;
    }

    public Set<k> c() {
        return this.f4535e;
    }

    public Map<String, Set<k>> d() {
        return this.f4536f;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof d) {
            d dVar = (d) obj;
            if (this.f4531a == dVar.f4531a && this.f4532b == dVar.f4532b) {
                Uri uri = this.f4533c;
                if (uri == null ? dVar.f4533c == null : uri.equals(dVar.f4533c)) {
                    i iVar = this.f4534d;
                    if (iVar == null ? dVar.f4534d == null : iVar.equals(dVar.f4534d)) {
                        Set<k> set = this.f4535e;
                        if (set == null ? dVar.f4535e == null : set.equals(dVar.f4535e)) {
                            Map<String, Set<k>> map = this.f4536f;
                            Map<String, Set<k>> map2 = dVar.f4536f;
                            return map != null ? map.equals(map2) : map2 == null;
                        }
                        return false;
                    }
                    return false;
                }
                return false;
            }
            return false;
        }
        return false;
    }

    public int hashCode() {
        int i = ((this.f4531a * 31) + this.f4532b) * 31;
        Uri uri = this.f4533c;
        int hashCode = (i + (uri != null ? uri.hashCode() : 0)) * 31;
        i iVar = this.f4534d;
        int hashCode2 = (hashCode + (iVar != null ? iVar.hashCode() : 0)) * 31;
        Set<k> set = this.f4535e;
        int hashCode3 = (hashCode2 + (set != null ? set.hashCode() : 0)) * 31;
        Map<String, Set<k>> map = this.f4536f;
        return hashCode3 + (map != null ? map.hashCode() : 0);
    }

    public String toString() {
        return "VastCompanionAd{width=" + this.f4531a + ", height=" + this.f4532b + ", destinationUri=" + this.f4533c + ", nonVideoResource=" + this.f4534d + ", clickTrackers=" + this.f4535e + ", eventTrackers=" + this.f4536f + '}';
    }
}
