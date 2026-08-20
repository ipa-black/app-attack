package com.applovin.impl.b;

import android.net.Uri;
import android.webkit.MimeTypeMap;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.sdk.utils.s;
import com.applovin.impl.sdk.v;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.TimeUnit;
/* loaded from: classes.dex */
public class n {

    /* renamed from: a  reason: collision with root package name */
    private List<o> f4578a;

    /* renamed from: b  reason: collision with root package name */
    private List<String> f4579b;

    /* renamed from: c  reason: collision with root package name */
    private int f4580c;

    /* renamed from: d  reason: collision with root package name */
    private Uri f4581d;

    /* renamed from: e  reason: collision with root package name */
    private final Set<k> f4582e;

    /* renamed from: f  reason: collision with root package name */
    private g f4583f;

    /* renamed from: g  reason: collision with root package name */
    private final Map<String, Set<k>> f4584g;

    /* loaded from: classes.dex */
    public enum a {
        UNSPECIFIED,
        LOW,
        MEDIUM,
        HIGH
    }

    private n() {
        this.f4578a = Collections.emptyList();
        this.f4579b = Collections.emptyList();
        this.f4582e = new HashSet();
        this.f4584g = CollectionUtils.map();
    }

    private n(e eVar) {
        this.f4578a = Collections.emptyList();
        this.f4579b = Collections.emptyList();
        this.f4582e = new HashSet();
        this.f4584g = CollectionUtils.map();
        this.f4579b = eVar.g();
    }

    private static int a(String str, com.applovin.impl.sdk.n nVar) {
        try {
            List<String> explode = CollectionUtils.explode(str, ":");
            if (explode.size() == 3) {
                return (int) (TimeUnit.HOURS.toSeconds(StringUtils.parseInt(explode.get(0))) + TimeUnit.MINUTES.toSeconds(StringUtils.parseInt(explode.get(1))) + StringUtils.parseInt(explode.get(2)));
            }
        } catch (Throwable unused) {
            nVar.D();
            if (v.a()) {
                nVar.D().e("VastVideoCreative", "Unable to parse duration from \"" + str + "\"");
            }
        }
        return 0;
    }

    public static n a(s sVar, n nVar, e eVar, com.applovin.impl.sdk.n nVar2) {
        s b2;
        g a2;
        List<s> a3;
        s b3;
        List<o> a4;
        s b4;
        int a5;
        if (sVar != null) {
            if (eVar != null) {
                if (nVar2 != null) {
                    if (nVar == null) {
                        try {
                            nVar = new n(eVar);
                        } catch (Throwable th) {
                            nVar2.D();
                            if (v.a()) {
                                nVar2.D().b("VastVideoCreative", "Error occurred while initializing", th);
                                return null;
                            }
                            return null;
                        }
                    }
                    if (nVar.f4580c == 0 && (b4 = sVar.b("Duration")) != null && (a5 = a(b4.c(), nVar2)) > 0) {
                        nVar.f4580c = a5;
                    }
                    s b5 = sVar.b("MediaFiles");
                    if (b5 != null && (a4 = a(b5, nVar2)) != null && a4.size() > 0) {
                        List<o> list = nVar.f4578a;
                        if (list != null) {
                            a4.addAll(list);
                        }
                        nVar.f4578a = a4;
                    }
                    s b6 = sVar.b("VideoClicks");
                    if (b6 != null) {
                        if (nVar.f4581d == null && (b3 = b6.b("ClickThrough")) != null) {
                            String c2 = b3.c();
                            if (StringUtils.isValidString(c2)) {
                                nVar.f4581d = Uri.parse(c2);
                            }
                        }
                        m.a(b6.a("ClickTracking"), nVar.f4582e, eVar, nVar2);
                    }
                    s b7 = sVar.b("Icons");
                    if (b7 != null && (a2 = g.a((b2 = b7.b("Icon")), nVar2)) != null) {
                        s b8 = b2.b("IconClicks");
                        if (b8 != null && (a3 = b8.a("IconClickTracking")) != null) {
                            m.a(a3, a2.f4552a, eVar, nVar2);
                        }
                        List<s> a6 = b2.a("IconViewTracking");
                        if (a6 != null) {
                            m.a(a6, a2.f4553b, eVar, nVar2);
                        }
                        nVar.f4583f = a2;
                    }
                    m.a(sVar, nVar.f4584g, eVar, nVar2);
                    return nVar;
                }
                throw new IllegalArgumentException("No sdk specified.");
            }
            throw new IllegalArgumentException("No context specified.");
        }
        throw new IllegalArgumentException("No node specified.");
    }

    private static List<o> a(s sVar, com.applovin.impl.sdk.n nVar) {
        List<s> a2 = sVar.a("MediaFile");
        ArrayList arrayList = new ArrayList(a2.size());
        List<String> explode = CollectionUtils.explode((String) nVar.a(com.applovin.impl.sdk.c.b.et));
        List<String> explode2 = CollectionUtils.explode((String) nVar.a(com.applovin.impl.sdk.c.b.es));
        for (s sVar2 : a2) {
            o a3 = o.a(sVar2, nVar);
            if (a3 != null) {
                try {
                    String c2 = a3.c();
                    if (!StringUtils.isValidString(c2) || explode.contains(c2)) {
                        if (((Boolean) nVar.a(com.applovin.impl.sdk.c.b.eu)).booleanValue()) {
                            String fileExtensionFromUrl = MimeTypeMap.getFileExtensionFromUrl(a3.b().toString());
                            if (StringUtils.isValidString(fileExtensionFromUrl) && !explode2.contains(fileExtensionFromUrl)) {
                            }
                        }
                        nVar.D();
                        if (v.a()) {
                            nVar.D().d("VastVideoCreative", "Video file not supported: " + a3);
                        }
                    }
                    arrayList.add(a3);
                } catch (Throwable th) {
                    nVar.D();
                    if (v.a()) {
                        nVar.D().b("VastVideoCreative", "Failed to validate video file: " + a3, th);
                    }
                }
            }
        }
        return arrayList;
    }

    public o a(a aVar) {
        List<o> list = this.f4578a;
        if (list == null || list.size() == 0) {
            return null;
        }
        List arrayList = new ArrayList(3);
        for (String str : this.f4579b) {
            for (o oVar : this.f4578a) {
                String c2 = oVar.c();
                if (StringUtils.isValidString(c2) && str.equalsIgnoreCase(c2)) {
                    arrayList.add(oVar);
                }
            }
            if (!arrayList.isEmpty()) {
                break;
            }
        }
        if (arrayList.isEmpty()) {
            arrayList = this.f4578a;
        }
        if (com.applovin.impl.sdk.utils.h.c()) {
            Collections.sort(arrayList, new Comparator<o>() { // from class: com.applovin.impl.b.n.1
                @Override // java.util.Comparator
                /* renamed from: a */
                public int compare(o oVar2, o oVar3) {
                    return Integer.compare(oVar2.d(), oVar3.d());
                }
            });
        }
        return (o) arrayList.get(aVar == a.LOW ? 0 : aVar == a.MEDIUM ? arrayList.size() / 2 : arrayList.size() - 1);
    }

    public List<o> a() {
        return this.f4578a;
    }

    public int b() {
        return this.f4580c;
    }

    public Uri c() {
        return this.f4581d;
    }

    public Set<k> d() {
        return this.f4582e;
    }

    public Map<String, Set<k>> e() {
        return this.f4584g;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof n) {
            n nVar = (n) obj;
            if (this.f4580c != nVar.f4580c) {
                return false;
            }
            List<o> list = this.f4578a;
            if (list == null ? nVar.f4578a == null : list.equals(nVar.f4578a)) {
                Uri uri = this.f4581d;
                if (uri == null ? nVar.f4581d == null : uri.equals(nVar.f4581d)) {
                    Set<k> set = this.f4582e;
                    if (set == null ? nVar.f4582e == null : set.equals(nVar.f4582e)) {
                        Map<String, Set<k>> map = this.f4584g;
                        Map<String, Set<k>> map2 = nVar.f4584g;
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

    public g f() {
        return this.f4583f;
    }

    public int hashCode() {
        List<o> list = this.f4578a;
        int hashCode = (((list != null ? list.hashCode() : 0) * 31) + this.f4580c) * 31;
        Uri uri = this.f4581d;
        int hashCode2 = (hashCode + (uri != null ? uri.hashCode() : 0)) * 31;
        Set<k> set = this.f4582e;
        int hashCode3 = (hashCode2 + (set != null ? set.hashCode() : 0)) * 31;
        Map<String, Set<k>> map = this.f4584g;
        return hashCode3 + (map != null ? map.hashCode() : 0);
    }

    public String toString() {
        return "VastVideoCreative{videoFiles=" + this.f4578a + ", durationSeconds=" + this.f4580c + ", destinationUri=" + this.f4581d + ", clickTrackers=" + this.f4582e + ", eventTrackers=" + this.f4584g + ", industryIcon=" + this.f4583f + '}';
    }
}
