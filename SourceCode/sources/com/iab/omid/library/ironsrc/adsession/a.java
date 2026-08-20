package com.iab.omid.library.ironsrc.adsession;

import android.view.View;
import com.iab.omid.library.ironsrc.b.c;
import com.iab.omid.library.ironsrc.b.f;
import com.iab.omid.library.ironsrc.d.e;
import com.iab.omid.library.ironsrc.publisher.AdSessionStatePublisher;
import com.iab.omid.library.ironsrc.publisher.b;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.UUID;
import java.util.regex.Pattern;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class a extends AdSession {

    /* renamed from: a  reason: collision with root package name */
    private static final Pattern f10370a = Pattern.compile("^[a-zA-Z0-9 ]+$");

    /* renamed from: b  reason: collision with root package name */
    private final AdSessionContext f10371b;

    /* renamed from: c  reason: collision with root package name */
    private final AdSessionConfiguration f10372c;

    /* renamed from: e  reason: collision with root package name */
    private com.iab.omid.library.ironsrc.e.a f10374e;

    /* renamed from: f  reason: collision with root package name */
    private AdSessionStatePublisher f10375f;
    private boolean j;
    private boolean k;

    /* renamed from: d  reason: collision with root package name */
    private final List<c> f10373d = new ArrayList();

    /* renamed from: g  reason: collision with root package name */
    private boolean f10376g = false;

    /* renamed from: h  reason: collision with root package name */
    private boolean f10377h = false;
    private String i = UUID.randomUUID().toString();

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(AdSessionConfiguration adSessionConfiguration, AdSessionContext adSessionContext) {
        this.f10372c = adSessionConfiguration;
        this.f10371b = adSessionContext;
        c(null);
        this.f10375f = (adSessionContext.getAdSessionContextType() == AdSessionContextType.HTML || adSessionContext.getAdSessionContextType() == AdSessionContextType.JAVASCRIPT) ? new com.iab.omid.library.ironsrc.publisher.a(adSessionContext.getWebView()) : new b(adSessionContext.getInjectedResourcesMap(), adSessionContext.getOmidJsScriptContent());
        this.f10375f.a();
        com.iab.omid.library.ironsrc.b.a.a().a(this);
        this.f10375f.a(adSessionConfiguration);
    }

    private c a(View view) {
        for (c cVar : this.f10373d) {
            if (cVar.a().get() == view) {
                return cVar;
            }
        }
        return null;
    }

    private void a(String str) {
        if (str != null) {
            if (str.length() > 50 || !f10370a.matcher(str).matches()) {
                throw new IllegalArgumentException("FriendlyObstruction has improperly formatted detailed reason");
            }
        }
    }

    private void b(View view) {
        if (view == null) {
            throw new IllegalArgumentException("FriendlyObstruction is null");
        }
    }

    private void c(View view) {
        this.f10374e = new com.iab.omid.library.ironsrc.e.a(view);
    }

    private void d(View view) {
        Collection<a> b2 = com.iab.omid.library.ironsrc.b.a.a().b();
        if (b2 == null || b2.size() <= 0) {
            return;
        }
        for (a aVar : b2) {
            if (aVar != this && aVar.d() == view) {
                aVar.f10374e.clear();
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
        return this.f10373d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(JSONObject jSONObject) {
        k();
        getAdSessionStatePublisher().a(jSONObject);
        this.k = true;
    }

    @Override // com.iab.omid.library.ironsrc.adsession.AdSession
    public void addFriendlyObstruction(View view, FriendlyObstructionPurpose friendlyObstructionPurpose, String str) {
        if (this.f10377h) {
            return;
        }
        b(view);
        a(str);
        if (a(view) == null) {
            this.f10373d.add(new c(view, friendlyObstructionPurpose, str));
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
        return (View) this.f10374e.get();
    }

    public boolean e() {
        return this.f10376g && !this.f10377h;
    }

    @Override // com.iab.omid.library.ironsrc.adsession.AdSession
    public void error(ErrorType errorType, String str) {
        if (this.f10377h) {
            throw new IllegalStateException("AdSession is finished");
        }
        e.a(errorType, "Error type is null");
        e.a(str, "Message is null");
        getAdSessionStatePublisher().a(errorType, str);
    }

    public boolean f() {
        return this.f10376g;
    }

    @Override // com.iab.omid.library.ironsrc.adsession.AdSession
    public void finish() {
        if (this.f10377h) {
            return;
        }
        this.f10374e.clear();
        removeAllFriendlyObstructions();
        this.f10377h = true;
        getAdSessionStatePublisher().f();
        com.iab.omid.library.ironsrc.b.a.a().c(this);
        getAdSessionStatePublisher().b();
        this.f10375f = null;
    }

    public boolean g() {
        return this.f10377h;
    }

    @Override // com.iab.omid.library.ironsrc.adsession.AdSession
    public String getAdSessionId() {
        return this.i;
    }

    @Override // com.iab.omid.library.ironsrc.adsession.AdSession
    public AdSessionStatePublisher getAdSessionStatePublisher() {
        return this.f10375f;
    }

    public boolean h() {
        return this.f10372c.isNativeImpressionOwner();
    }

    public boolean i() {
        return this.f10372c.isNativeMediaEventsOwner();
    }

    @Override // com.iab.omid.library.ironsrc.adsession.AdSession
    public void registerAdView(View view) {
        if (this.f10377h) {
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

    @Override // com.iab.omid.library.ironsrc.adsession.AdSession
    public void removeAllFriendlyObstructions() {
        if (this.f10377h) {
            return;
        }
        this.f10373d.clear();
    }

    @Override // com.iab.omid.library.ironsrc.adsession.AdSession
    public void removeFriendlyObstruction(View view) {
        if (this.f10377h) {
            return;
        }
        b(view);
        c a2 = a(view);
        if (a2 != null) {
            this.f10373d.remove(a2);
        }
    }

    @Override // com.iab.omid.library.ironsrc.adsession.AdSession
    public void start() {
        if (this.f10376g) {
            return;
        }
        this.f10376g = true;
        com.iab.omid.library.ironsrc.b.a.a().b(this);
        this.f10375f.a(f.a().d());
        this.f10375f.a(this, this.f10371b);
    }
}
