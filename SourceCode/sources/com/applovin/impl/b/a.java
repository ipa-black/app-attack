package com.applovin.impl.b;

import android.net.Uri;
import com.applovin.impl.b.n;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.sdk.utils.Utils;
import com.applovin.impl.sdk.v;
import io.bidmachine.utils.IabUtils;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class a extends com.applovin.impl.sdk.ad.e {

    /* renamed from: a  reason: collision with root package name */
    private final String f4499a;

    /* renamed from: b  reason: collision with root package name */
    private final String f4500b;

    /* renamed from: c  reason: collision with root package name */
    private final j f4501c;

    /* renamed from: d  reason: collision with root package name */
    private final long f4502d;

    /* renamed from: e  reason: collision with root package name */
    private final n f4503e;

    /* renamed from: f  reason: collision with root package name */
    private final d f4504f;

    /* renamed from: g  reason: collision with root package name */
    private final String f4505g;

    /* renamed from: h  reason: collision with root package name */
    private final com.applovin.impl.b.c f4506h;
    private final com.applovin.impl.sdk.a.g i;
    private final Set<k> j;
    private final Set<k> k;

    /* renamed from: com.applovin.impl.b.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class C0063a {

        /* renamed from: a  reason: collision with root package name */
        private JSONObject f4507a;

        /* renamed from: b  reason: collision with root package name */
        private JSONObject f4508b;

        /* renamed from: c  reason: collision with root package name */
        private com.applovin.impl.sdk.ad.b f4509c;

        /* renamed from: d  reason: collision with root package name */
        private com.applovin.impl.sdk.n f4510d;

        /* renamed from: e  reason: collision with root package name */
        private long f4511e;

        /* renamed from: f  reason: collision with root package name */
        private String f4512f;

        /* renamed from: g  reason: collision with root package name */
        private String f4513g;

        /* renamed from: h  reason: collision with root package name */
        private j f4514h;
        private n i;
        private d j;
        private com.applovin.impl.b.c k;
        private Set<k> l;
        private Set<k> m;

        public C0063a a(long j) {
            this.f4511e = j;
            return this;
        }

        public C0063a a(com.applovin.impl.b.c cVar) {
            this.k = cVar;
            return this;
        }

        public C0063a a(d dVar) {
            this.j = dVar;
            return this;
        }

        public C0063a a(j jVar) {
            this.f4514h = jVar;
            return this;
        }

        public C0063a a(n nVar) {
            this.i = nVar;
            return this;
        }

        public C0063a a(com.applovin.impl.sdk.ad.b bVar) {
            this.f4509c = bVar;
            return this;
        }

        public C0063a a(com.applovin.impl.sdk.n nVar) {
            if (nVar != null) {
                this.f4510d = nVar;
                return this;
            }
            throw new IllegalArgumentException("No sdk specified.");
        }

        public C0063a a(String str) {
            this.f4512f = str;
            return this;
        }

        public C0063a a(Set<k> set) {
            this.l = set;
            return this;
        }

        public C0063a a(JSONObject jSONObject) {
            if (jSONObject != null) {
                this.f4507a = jSONObject;
                return this;
            }
            throw new IllegalArgumentException("No ad object specified.");
        }

        public a a() {
            return new a(this);
        }

        public C0063a b(String str) {
            this.f4513g = str;
            return this;
        }

        public C0063a b(Set<k> set) {
            this.m = set;
            return this;
        }

        public C0063a b(JSONObject jSONObject) {
            if (jSONObject != null) {
                this.f4508b = jSONObject;
                return this;
            }
            throw new IllegalArgumentException("No full ad response specified.");
        }
    }

    /* loaded from: classes.dex */
    public enum b {
        COMPANION_AD,
        VIDEO
    }

    /* loaded from: classes.dex */
    public enum c {
        IMPRESSION,
        VIDEO_CLICK,
        COMPANION_CLICK,
        VIDEO,
        COMPANION,
        INDUSTRY_ICON_IMPRESSION,
        INDUSTRY_ICON_CLICK,
        ERROR
    }

    private a(C0063a c0063a) {
        super(c0063a.f4507a, c0063a.f4508b, c0063a.f4509c, c0063a.f4510d);
        this.f4499a = c0063a.f4512f;
        this.f4501c = c0063a.f4514h;
        this.f4500b = c0063a.f4513g;
        this.f4503e = c0063a.i;
        this.f4504f = c0063a.j;
        this.f4506h = c0063a.k;
        this.j = c0063a.l;
        this.k = c0063a.m;
        this.i = new com.applovin.impl.sdk.a.g(this);
        Uri h2 = h();
        this.f4505g = h2 != null ? h2.toString() : "";
        this.f4502d = c0063a.f4511e;
    }

    private Set<k> a(b bVar, String[] strArr) {
        d dVar;
        n nVar;
        if (strArr == null || strArr.length <= 0) {
            return Collections.emptySet();
        }
        Map<String, Set<k>> d2 = (bVar != b.VIDEO || (nVar = this.f4503e) == null) ? (bVar != b.COMPANION_AD || (dVar = this.f4504f) == null) ? null : dVar.d() : nVar.e();
        HashSet hashSet = new HashSet();
        if (d2 != null && !d2.isEmpty()) {
            for (String str : strArr) {
                if (d2.containsKey(str)) {
                    hashSet.addAll(d2.get(str));
                }
            }
        }
        return Collections.unmodifiableSet(hashSet);
    }

    private String aX() {
        String stringFromAdObject = getStringFromAdObject("vimp_url", null);
        if (stringFromAdObject != null) {
            return stringFromAdObject.replace(Utils.MACRO_CLCODE, getClCode());
        }
        return null;
    }

    private n.a aY() {
        n.a[] values = n.a.values();
        int intValue = ((Integer) this.sdk.a(com.applovin.impl.sdk.c.b.ev)).intValue();
        return (intValue < 0 || intValue >= values.length) ? n.a.UNSPECIFIED : values[intValue];
    }

    private Set<k> aZ() {
        n nVar = this.f4503e;
        return nVar != null ? nVar.d() : Collections.emptySet();
    }

    private Set<k> ba() {
        d dVar = this.f4504f;
        return dVar != null ? dVar.c() : Collections.emptySet();
    }

    @Override // com.applovin.impl.sdk.ad.e
    public boolean E() {
        return getBooleanFromAdObject("video_clickable", false) && j() != null;
    }

    public Set<k> a(c cVar, String str) {
        return a(cVar, new String[]{str});
    }

    public Set<k> a(c cVar, String[] strArr) {
        this.sdk.D();
        if (v.a()) {
            this.sdk.D().b("VastAd", "Retrieving trackers of type '" + cVar + "' and events '" + strArr + "'...");
        }
        if (cVar == c.IMPRESSION) {
            return this.j;
        }
        if (cVar == c.VIDEO_CLICK) {
            return aZ();
        }
        if (cVar == c.COMPANION_CLICK) {
            return ba();
        }
        if (cVar == c.VIDEO) {
            return a(b.VIDEO, strArr);
        }
        if (cVar == c.COMPANION) {
            return a(b.COMPANION_AD, strArr);
        }
        if (cVar == c.INDUSTRY_ICON_CLICK) {
            return aP().e();
        }
        if (cVar == c.INDUSTRY_ICON_IMPRESSION) {
            return aP().f();
        }
        if (cVar == c.ERROR) {
            return this.k;
        }
        this.sdk.D();
        if (v.a()) {
            this.sdk.D().e("VastAd", "Failed to retrieve trackers of invalid type '" + cVar + "' and events '" + strArr + "'");
        }
        return Collections.emptySet();
    }

    @Override // com.applovin.impl.sdk.ad.e
    public void a() {
    }

    public void a(String str) {
        synchronized (this.adObjectLock) {
            JsonUtils.putString(this.adObject, "html_template", str);
        }
    }

    public n aM() {
        return this.f4503e;
    }

    public o aN() {
        n nVar = this.f4503e;
        if (nVar != null) {
            return nVar.a(aY());
        }
        return null;
    }

    public d aO() {
        return this.f4504f;
    }

    public g aP() {
        n nVar = this.f4503e;
        if (nVar != null) {
            return nVar.f();
        }
        return null;
    }

    public boolean aQ() {
        return aP() != null;
    }

    public boolean aR() {
        return getBooleanFromAdObject("vast_fire_click_trackers_on_html_clicks", false);
    }

    public String aS() {
        return getStringFromAdObject("html_template", "");
    }

    public Uri aT() {
        String stringFromAdObject = getStringFromAdObject("html_template_url", null);
        if (StringUtils.isValidString(stringFromAdObject)) {
            return Uri.parse(stringFromAdObject);
        }
        return null;
    }

    public boolean aU() {
        return getBooleanFromAdObject("cache_companion_ad", true);
    }

    public boolean aV() {
        return getBooleanFromAdObject("cache_video", true);
    }

    public com.applovin.impl.b.c aW() {
        return this.f4506h;
    }

    @Override // com.applovin.impl.sdk.ad.e
    public List<com.applovin.impl.sdk.d.a> at() {
        List<com.applovin.impl.sdk.d.a> postbacks;
        synchronized (this.adObjectLock) {
            postbacks = Utils.getPostbacks("vimp_urls", this.adObject, getClCode(), null, aX(), au(), z(), this.sdk);
        }
        return postbacks;
    }

    public void b() {
        synchronized (this.adObjectLock) {
            this.adObject.remove("vast_is_streaming");
        }
    }

    public boolean c() {
        return getBooleanFromAdObject("iopms", false);
    }

    @Override // com.applovin.impl.sdk.ad.e
    public String d() {
        return this.f4505g;
    }

    public boolean e() {
        return getBooleanFromAdObject("iopmsfsr", true);
    }

    @Override // com.applovin.impl.sdk.ad.AppLovinAdImpl
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof a) && super.equals(obj)) {
            a aVar = (a) obj;
            String str = this.f4499a;
            if (str == null ? aVar.f4499a == null : str.equals(aVar.f4499a)) {
                String str2 = this.f4500b;
                if (str2 == null ? aVar.f4500b == null : str2.equals(aVar.f4500b)) {
                    j jVar = this.f4501c;
                    if (jVar == null ? aVar.f4501c == null : jVar.equals(aVar.f4501c)) {
                        n nVar = this.f4503e;
                        if (nVar == null ? aVar.f4503e == null : nVar.equals(aVar.f4503e)) {
                            d dVar = this.f4504f;
                            if (dVar == null ? aVar.f4504f == null : dVar.equals(aVar.f4504f)) {
                                com.applovin.impl.b.c cVar = this.f4506h;
                                if (cVar == null ? aVar.f4506h == null : cVar.equals(aVar.f4506h)) {
                                    Set<k> set = this.j;
                                    if (set == null ? aVar.j == null : set.equals(aVar.j)) {
                                        Set<k> set2 = this.k;
                                        Set<k> set3 = aVar.k;
                                        return set2 != null ? set2.equals(set3) : set3 == null;
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
                return false;
            }
            return false;
        }
        return false;
    }

    @Override // com.applovin.impl.sdk.ad.e
    public boolean f() {
        return getBooleanFromAdObject("vast_is_streaming", false);
    }

    @Override // com.applovin.impl.sdk.ad.e
    /* renamed from: g */
    public com.applovin.impl.sdk.a.g o() {
        return this.i;
    }

    @Override // com.applovin.impl.sdk.AppLovinAdBase
    public long getCreatedAtMillis() {
        return this.f4502d;
    }

    @Override // com.applovin.impl.sdk.ad.AppLovinAdImpl
    public JSONObject getOriginalFullResponse() {
        return this.fullResponse;
    }

    @Override // com.applovin.impl.sdk.ad.e
    public Uri h() {
        o aN = aN();
        if (aN != null) {
            return aN.b();
        }
        return null;
    }

    @Override // com.applovin.impl.sdk.ad.AppLovinAdImpl
    public boolean hasVideoUrl() {
        List<o> a2;
        n nVar = this.f4503e;
        return (nVar == null || (a2 = nVar.a()) == null || a2.size() <= 0) ? false : true;
    }

    @Override // com.applovin.impl.sdk.ad.AppLovinAdImpl
    public int hashCode() {
        int hashCode = super.hashCode() * 31;
        String str = this.f4499a;
        int hashCode2 = (hashCode + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.f4500b;
        int hashCode3 = (hashCode2 + (str2 != null ? str2.hashCode() : 0)) * 31;
        j jVar = this.f4501c;
        int hashCode4 = (hashCode3 + (jVar != null ? jVar.hashCode() : 0)) * 31;
        n nVar = this.f4503e;
        int hashCode5 = (hashCode4 + (nVar != null ? nVar.hashCode() : 0)) * 31;
        d dVar = this.f4504f;
        int hashCode6 = (hashCode5 + (dVar != null ? dVar.hashCode() : 0)) * 31;
        com.applovin.impl.b.c cVar = this.f4506h;
        int hashCode7 = (hashCode6 + (cVar != null ? cVar.hashCode() : 0)) * 31;
        Set<k> set = this.j;
        int hashCode8 = (hashCode7 + (set != null ? set.hashCode() : 0)) * 31;
        Set<k> set2 = this.k;
        return hashCode8 + (set2 != null ? set2.hashCode() : 0);
    }

    public long i() {
        return getLongFromAdObject("real_close_delay", 0L);
    }

    @Override // com.applovin.impl.sdk.ad.e, com.applovin.impl.sdk.a.a
    public boolean isOpenMeasurementEnabled() {
        return getBooleanFromAdObject(IabUtils.KEY_OM_SDK_ENABLED, true) && this.f4506h != null;
    }

    @Override // com.applovin.impl.sdk.ad.e
    public Uri j() {
        n nVar = this.f4503e;
        if (nVar != null) {
            return nVar.c();
        }
        return null;
    }

    @Override // com.applovin.impl.sdk.ad.e
    public Uri k() {
        return j();
    }

    public b l() {
        return "companion_ad".equalsIgnoreCase(getStringFromAdObject("vast_first_caching_operation", "companion_ad")) ? b.COMPANION_AD : b.VIDEO;
    }

    public boolean m() {
        return getBooleanFromAdObject("vast_immediate_ad_load", true);
    }

    public j n() {
        return this.f4501c;
    }

    @Override // com.applovin.impl.sdk.ad.AppLovinAdImpl
    public String toString() {
        return "VastAd{title='" + this.f4499a + "', adDescription='" + this.f4500b + "', systemInfo=" + this.f4501c + ", videoCreative=" + this.f4503e + ", companionAd=" + this.f4504f + ", adVerifications=" + this.f4506h + ", impressionTrackers=" + this.j + ", errorTrackers=" + this.k + '}';
    }
}
