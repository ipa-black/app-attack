package com.iab.omid.library.appodeal.adsession;

import android.view.View;
import com.iab.omid.library.appodeal.b.c;
import com.iab.omid.library.appodeal.b.f;
import com.iab.omid.library.appodeal.d.e;
import com.iab.omid.library.appodeal.publisher.AdSessionStatePublisher;
import com.iab.omid.library.appodeal.publisher.b;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.UUID;
import java.util.regex.Pattern;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class a extends AdSession {

    /* renamed from: a  reason: collision with root package name */
    private static final Pattern f10148a = Pattern.compile("^[a-zA-Z0-9 ]+$");

    /* renamed from: b  reason: collision with root package name */
    private final AdSessionContext f10149b;

    /* renamed from: c  reason: collision with root package name */
    private final AdSessionConfiguration f10150c;

    /* renamed from: e  reason: collision with root package name */
    private com.iab.omid.library.appodeal.e.a f10152e;

    /* renamed from: f  reason: collision with root package name */
    private AdSessionStatePublisher f10153f;
    private boolean j;
    private boolean k;

    /* renamed from: d  reason: collision with root package name */
    private final List<c> f10151d = new ArrayList();

    /* renamed from: g  reason: collision with root package name */
    private boolean f10154g = false;

    /* renamed from: h  reason: collision with root package name */
    private boolean f10155h = false;
    private final String i = UUID.randomUUID().toString();

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(AdSessionConfiguration adSessionConfiguration, AdSessionContext adSessionContext) {
        this.f10150c = adSessionConfiguration;
        this.f10149b = adSessionContext;
        c(null);
        this.f10153f = (adSessionContext.getAdSessionContextType() == AdSessionContextType.HTML || adSessionContext.getAdSessionContextType() == AdSessionContextType.JAVASCRIPT) ? new com.iab.omid.library.appodeal.publisher.a(adSessionContext.getWebView()) : new b(adSessionContext.getInjectedResourcesMap(), adSessionContext.getOmidJsScriptContent());
        this.f10153f.a();
        com.iab.omid.library.appodeal.b.a.a().a(this);
        this.f10153f.a(adSessionConfiguration);
    }

    private c a(View view) {
        for (c cVar : this.f10151d) {
            if (cVar.a().get() == view) {
                return cVar;
            }
        }
        return null;
    }

    private void a(String str) {
        if (str != null) {
            if (str.length() > 50 || !f10148a.matcher(str).matches()) {
                throw new IllegalArgumentException("FriendlyObstruction has improperly formatted detailed reason");
            }
        }
    }

    private static void b(View view) {
        if (view == null) {
            throw new IllegalArgumentException("FriendlyObstruction is null");
        }
    }

    private void c(View view) {
        this.f10152e = new com.iab.omid.library.appodeal.e.a(view);
    }

    private void d(View view) {
        Collection<a> b2 = com.iab.omid.library.appodeal.b.a.a().b();
        if (b2 == null || b2.isEmpty()) {
            return;
        }
        for (a aVar : b2) {
            if (aVar != this && aVar.d() == view) {
                aVar.f10152e.clear();
            }
        }
    }

    private void j() {
        if (this.j) {
            throw new IllegalStateException("Impression event can only be sent once");
        }
    }

    private void k() {
        if (this.k) {
            throw new IllegalStateException("Loaded event can only be sent once");
        }
    }

    public List<c> a() {
        return this.f10151d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(JSONObject jSONObject) {
        k();
        getAdSessionStatePublisher().a(jSONObject);
        this.k = true;
    }

    @Override // com.iab.omid.library.appodeal.adsession.AdSession
    public void addFriendlyObstruction(View view, FriendlyObstructionPurpose friendlyObstructionPurpose, String str) {
        if (this.f10155h) {
            return;
        }
        b(view);
        a(str);
        if (a(view) == null) {
            this.f10151d.add(new c(view, friendlyObstructionPurpose, str));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b() {
        j();
        getAdSessionStatePublisher().g();
        this.j = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c() {
        k();
        getAdSessionStatePublisher().h();
        this.k = true;
    }

    public View d() {
        return (View) this.f10152e.get();
    }

    public boolean e() {
        return this.f10154g && !this.f10155h;
    }

    @Override // com.iab.omid.library.appodeal.adsession.AdSession
    public void error(ErrorType errorType, String str) {
        if (this.f10155h) {
            throw new IllegalStateException("AdSession is finished");
        }
        e.a(errorType, "Error type is null");
        e.a(str, "Message is null");
        getAdSessionStatePublisher().a(errorType, str);
    }

    public boolean f() {
        return this.f10154g;
    }

    @Override // com.iab.omid.library.appodeal.adsession.AdSession
    public void finish() {
        if (this.f10155h) {
            return;
        }
        this.f10152e.clear();
        removeAllFriendlyObstructions();
        this.f10155h = true;
        getAdSessionStatePublisher().f();
        com.iab.omid.library.appodeal.b.a.a().c(this);
        getAdSessionStatePublisher().b();
        this.f10153f = null;
    }

    public boolean g() {
        return this.f10155h;
    }

    @Override // com.iab.omid.library.appodeal.adsession.AdSession
    public String getAdSessionId() {
        return this.i;
    }

    @Override // com.iab.omid.library.appodeal.adsession.AdSession
    public AdSessionStatePublisher getAdSessionStatePublisher() {
        return this.f10153f;
    }

    public boolean h() {
        return this.f10150c.isNativeImpressionOwner();
    }

    public boolean i() {
        return this.f10150c.isNativeMediaEventsOwner();
    }

    @Override // com.iab.omid.library.appodeal.adsession.AdSession
    public void registerAdView(View view) {
        if (this.f10155h) {
            return;
        }
        e.a(view, "AdView is null");
        if (d() == view) {
            return;
        }
        c(view);
        getAdSessionStatePublisher().i();
        d(view);
    }

    @Override // com.iab.omid.library.appodeal.adsession.AdSession
    public void removeAllFriendlyObstructions() {
        if (this.f10155h) {
            return;
        }
        this.f10151d.clear();
    }

    @Override // com.iab.omid.library.appodeal.adsession.AdSession
    public void removeFriendlyObstruction(View view) {
        if (this.f10155h) {
            return;
        }
        b(view);
        c a2 = a(view);
        if (a2 != null) {
            this.f10151d.remove(a2);
        }
    }

    @Override // com.iab.omid.library.appodeal.adsession.AdSession
    public void start() {
        if (this.f10154g) {
            return;
        }
        this.f10154g = true;
        com.iab.omid.library.appodeal.b.a.a().b(this);
        this.f10153f.a(f.a().d());
        this.f10153f.a(this, this.f10149b);
    }
}
