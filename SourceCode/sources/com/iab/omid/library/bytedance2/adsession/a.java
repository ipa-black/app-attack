package com.iab.omid.library.bytedance2.adsession;

import android.view.View;
import com.iab.omid.library.bytedance2.internal.c;
import com.iab.omid.library.bytedance2.internal.e;
import com.iab.omid.library.bytedance2.internal.h;
import com.iab.omid.library.bytedance2.publisher.AdSessionStatePublisher;
import com.iab.omid.library.bytedance2.publisher.b;
import com.iab.omid.library.bytedance2.utils.g;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.UUID;
import java.util.regex.Pattern;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class a extends AdSession {
    private static final Pattern l = Pattern.compile("^[a-zA-Z0-9 ]+$");

    /* renamed from: a  reason: collision with root package name */
    private final AdSessionContext f10250a;

    /* renamed from: b  reason: collision with root package name */
    private final AdSessionConfiguration f10251b;

    /* renamed from: d  reason: collision with root package name */
    private com.iab.omid.library.bytedance2.weakreference.a f10253d;

    /* renamed from: e  reason: collision with root package name */
    private AdSessionStatePublisher f10254e;
    private boolean i;
    private boolean j;
    private PossibleObstructionListener k;

    /* renamed from: c  reason: collision with root package name */
    private final List<e> f10252c = new ArrayList();

    /* renamed from: f  reason: collision with root package name */
    private boolean f10255f = false;

    /* renamed from: g  reason: collision with root package name */
    private boolean f10256g = false;

    /* renamed from: h  reason: collision with root package name */
    private final String f10257h = UUID.randomUUID().toString();

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(AdSessionConfiguration adSessionConfiguration, AdSessionContext adSessionContext) {
        this.f10251b = adSessionConfiguration;
        this.f10250a = adSessionContext;
        d(null);
        this.f10254e = (adSessionContext.getAdSessionContextType() == AdSessionContextType.HTML || adSessionContext.getAdSessionContextType() == AdSessionContextType.JAVASCRIPT) ? new com.iab.omid.library.bytedance2.publisher.a(adSessionContext.getWebView()) : new b(adSessionContext.getInjectedResourcesMap(), adSessionContext.getOmidJsScriptContent());
        this.f10254e.i();
        c.c().a(this);
        this.f10254e.a(adSessionConfiguration);
    }

    private void a() {
        if (this.i) {
            throw new IllegalStateException("Impression event can only be sent once");
        }
    }

    private static void a(View view) {
        if (view == null) {
            throw new IllegalArgumentException("FriendlyObstruction is null");
        }
    }

    private void a(String str) {
        if (str != null) {
            if (str.length() > 50) {
                throw new IllegalArgumentException("FriendlyObstruction has detailed reason over 50 characters in length");
            }
            if (!l.matcher(str).matches()) {
                throw new IllegalArgumentException("FriendlyObstruction has detailed reason that contains characters not in [a-z][A-Z][0-9] or space");
            }
        }
    }

    private e b(View view) {
        for (e eVar : this.f10252c) {
            if (eVar.c().get() == view) {
                return eVar;
            }
        }
        return null;
    }

    private void b() {
        if (this.j) {
            throw new IllegalStateException("Loaded event can only be sent once");
        }
    }

    private void c(View view) {
        Collection<a> b2 = c.c().b();
        if (b2 == null || b2.isEmpty()) {
            return;
        }
        for (a aVar : b2) {
            if (aVar != this && aVar.c() == view) {
                aVar.f10253d.clear();
            }
        }
    }

    private void d(View view) {
        this.f10253d = new com.iab.omid.library.bytedance2.weakreference.a(view);
    }

    public void a(List<com.iab.omid.library.bytedance2.weakreference.a> list) {
        if (e()) {
            ArrayList arrayList = new ArrayList();
            for (com.iab.omid.library.bytedance2.weakreference.a aVar : list) {
                View view = aVar.get();
                if (view != null) {
                    arrayList.add(view);
                }
            }
            this.k.onPossibleObstructionsDetected(this.f10257h, arrayList);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(JSONObject jSONObject) {
        b();
        getAdSessionStatePublisher().a(jSONObject);
        this.j = true;
    }

    @Override // com.iab.omid.library.bytedance2.adsession.AdSession
    public void addFriendlyObstruction(View view, FriendlyObstructionPurpose friendlyObstructionPurpose, String str) {
        if (this.f10256g) {
            return;
        }
        a(view);
        a(str);
        if (b(view) == null) {
            this.f10252c.add(new e(view, friendlyObstructionPurpose, str));
        }
    }

    public View c() {
        return this.f10253d.get();
    }

    public List<e> d() {
        return this.f10252c;
    }

    public boolean e() {
        return this.k != null;
    }

    @Override // com.iab.omid.library.bytedance2.adsession.AdSession
    public void error(ErrorType errorType, String str) {
        if (this.f10256g) {
            throw new IllegalStateException("AdSession is finished");
        }
        g.a(errorType, "Error type is null");
        g.a(str, "Message is null");
        getAdSessionStatePublisher().a(errorType, str);
    }

    public boolean f() {
        return this.f10255f && !this.f10256g;
    }

    @Override // com.iab.omid.library.bytedance2.adsession.AdSession
    public void finish() {
        if (this.f10256g) {
            return;
        }
        this.f10253d.clear();
        removeAllFriendlyObstructions();
        this.f10256g = true;
        getAdSessionStatePublisher().f();
        c.c().b(this);
        getAdSessionStatePublisher().b();
        this.f10254e = null;
        this.k = null;
    }

    public boolean g() {
        return this.f10256g;
    }

    @Override // com.iab.omid.library.bytedance2.adsession.AdSession
    public String getAdSessionId() {
        return this.f10257h;
    }

    @Override // com.iab.omid.library.bytedance2.adsession.AdSession
    public AdSessionStatePublisher getAdSessionStatePublisher() {
        return this.f10254e;
    }

    public boolean h() {
        return this.f10251b.isNativeImpressionOwner();
    }

    public boolean i() {
        return this.f10251b.isNativeMediaEventsOwner();
    }

    public boolean j() {
        return this.f10255f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void k() {
        a();
        getAdSessionStatePublisher().g();
        this.i = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void l() {
        b();
        getAdSessionStatePublisher().h();
        this.j = true;
    }

    @Override // com.iab.omid.library.bytedance2.adsession.AdSession
    public void registerAdView(View view) {
        if (this.f10256g) {
            return;
        }
        g.a(view, "AdView is null");
        if (c() == view) {
            return;
        }
        d(view);
        getAdSessionStatePublisher().a();
        c(view);
    }

    @Override // com.iab.omid.library.bytedance2.adsession.AdSession
    public void removeAllFriendlyObstructions() {
        if (this.f10256g) {
            return;
        }
        this.f10252c.clear();
    }

    @Override // com.iab.omid.library.bytedance2.adsession.AdSession
    public void removeFriendlyObstruction(View view) {
        if (this.f10256g) {
            return;
        }
        a(view);
        e b2 = b(view);
        if (b2 != null) {
            this.f10252c.remove(b2);
        }
    }

    @Override // com.iab.omid.library.bytedance2.adsession.AdSession
    public void setPossibleObstructionListener(PossibleObstructionListener possibleObstructionListener) {
        this.k = possibleObstructionListener;
    }

    @Override // com.iab.omid.library.bytedance2.adsession.AdSession
    public void start() {
        if (this.f10255f) {
            return;
        }
        this.f10255f = true;
        c.c().c(this);
        this.f10254e.a(h.c().b());
        this.f10254e.a(com.iab.omid.library.bytedance2.internal.a.a().b());
        this.f10254e.a(this, this.f10250a);
    }
}
