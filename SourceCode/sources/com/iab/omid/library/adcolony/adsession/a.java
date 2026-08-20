package com.iab.omid.library.adcolony.adsession;

import android.view.View;
import com.iab.omid.library.adcolony.b.c;
import com.iab.omid.library.adcolony.b.f;
import com.iab.omid.library.adcolony.d.e;
import com.iab.omid.library.adcolony.publisher.AdSessionStatePublisher;
import com.iab.omid.library.adcolony.publisher.b;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.UUID;
import java.util.regex.Pattern;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class a extends AdSession {

    /* renamed from: a  reason: collision with root package name */
    private static final Pattern f9820a = Pattern.compile("^[a-zA-Z0-9 ]+$");

    /* renamed from: b  reason: collision with root package name */
    private final AdSessionContext f9821b;

    /* renamed from: c  reason: collision with root package name */
    private final AdSessionConfiguration f9822c;

    /* renamed from: e  reason: collision with root package name */
    private com.iab.omid.library.adcolony.e.a f9824e;

    /* renamed from: f  reason: collision with root package name */
    private AdSessionStatePublisher f9825f;
    private boolean j;
    private boolean k;
    private PossibleObstructionListener l;

    /* renamed from: d  reason: collision with root package name */
    private final List<c> f9823d = new ArrayList();

    /* renamed from: g  reason: collision with root package name */
    private boolean f9826g = false;

    /* renamed from: h  reason: collision with root package name */
    private boolean f9827h = false;
    private final String i = UUID.randomUUID().toString();

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(AdSessionConfiguration adSessionConfiguration, AdSessionContext adSessionContext) {
        this.f9822c = adSessionConfiguration;
        this.f9821b = adSessionContext;
        c(null);
        this.f9825f = (adSessionContext.getAdSessionContextType() == AdSessionContextType.HTML || adSessionContext.getAdSessionContextType() == AdSessionContextType.JAVASCRIPT) ? new com.iab.omid.library.adcolony.publisher.a(adSessionContext.getWebView()) : new b(adSessionContext.getInjectedResourcesMap(), adSessionContext.getOmidJsScriptContent());
        this.f9825f.a();
        com.iab.omid.library.adcolony.b.a.a().a(this);
        this.f9825f.a(adSessionConfiguration);
    }

    private c a(View view) {
        for (c cVar : this.f9823d) {
            if (cVar.a().get() == view) {
                return cVar;
            }
        }
        return null;
    }

    private void a(String str) {
        if (str != null) {
            if (str.length() > 50) {
                throw new IllegalArgumentException("FriendlyObstruction has detailed reason over 50 characters in length");
            }
            if (!f9820a.matcher(str).matches()) {
                throw new IllegalArgumentException("FriendlyObstruction has detailed reason that contains characters not in [a-z][A-Z][0-9] or space");
            }
        }
    }

    private static void b(View view) {
        if (view == null) {
            throw new IllegalArgumentException("FriendlyObstruction is null");
        }
    }

    private void c(View view) {
        this.f9824e = new com.iab.omid.library.adcolony.e.a(view);
    }

    private void d(View view) {
        Collection<a> b2 = com.iab.omid.library.adcolony.b.a.a().b();
        if (b2 == null || b2.isEmpty()) {
            return;
        }
        for (a aVar : b2) {
            if (aVar != this && aVar.e() == view) {
                aVar.f9824e.clear();
            }
        }
    }

    private void k() {
        if (this.j) {
            throw new IllegalStateException("Impression event can only be sent once");
        }
    }

    private void l() {
        if (this.k) {
            throw new IllegalStateException("Loaded event can only be sent once");
        }
    }

    public List<c> a() {
        return this.f9823d;
    }

    public void a(List<com.iab.omid.library.adcolony.e.a> list) {
        if (b()) {
            ArrayList arrayList = new ArrayList();
            for (com.iab.omid.library.adcolony.e.a aVar : list) {
                View view = aVar.get();
                if (view != null) {
                    arrayList.add(view);
                }
            }
            this.l.onPossibleObstructionsDetected(this.i, arrayList);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(JSONObject jSONObject) {
        l();
        getAdSessionStatePublisher().a(jSONObject);
        this.k = true;
    }

    @Override // com.iab.omid.library.adcolony.adsession.AdSession
    public void addFriendlyObstruction(View view, FriendlyObstructionPurpose friendlyObstructionPurpose, String str) {
        if (this.f9827h) {
            return;
        }
        b(view);
        a(str);
        if (a(view) == null) {
            this.f9823d.add(new c(view, friendlyObstructionPurpose, str));
        }
    }

    public boolean b() {
        return this.l != null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c() {
        k();
        getAdSessionStatePublisher().g();
        this.j = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void d() {
        l();
        getAdSessionStatePublisher().h();
        this.k = true;
    }

    public View e() {
        return this.f9824e.get();
    }

    @Override // com.iab.omid.library.adcolony.adsession.AdSession
    public void error(ErrorType errorType, String str) {
        if (this.f9827h) {
            throw new IllegalStateException("AdSession is finished");
        }
        e.a(errorType, "Error type is null");
        e.a(str, "Message is null");
        getAdSessionStatePublisher().a(errorType, str);
    }

    public boolean f() {
        return this.f9826g && !this.f9827h;
    }

    @Override // com.iab.omid.library.adcolony.adsession.AdSession
    public void finish() {
        if (this.f9827h) {
            return;
        }
        this.f9824e.clear();
        removeAllFriendlyObstructions();
        this.f9827h = true;
        getAdSessionStatePublisher().f();
        com.iab.omid.library.adcolony.b.a.a().c(this);
        getAdSessionStatePublisher().b();
        this.f9825f = null;
        this.l = null;
    }

    public boolean g() {
        return this.f9826g;
    }

    @Override // com.iab.omid.library.adcolony.adsession.AdSession
    public String getAdSessionId() {
        return this.i;
    }

    @Override // com.iab.omid.library.adcolony.adsession.AdSession
    public AdSessionStatePublisher getAdSessionStatePublisher() {
        return this.f9825f;
    }

    public boolean h() {
        return this.f9827h;
    }

    public boolean i() {
        return this.f9822c.isNativeImpressionOwner();
    }

    public boolean j() {
        return this.f9822c.isNativeMediaEventsOwner();
    }

    @Override // com.iab.omid.library.adcolony.adsession.AdSession
    public void registerAdView(View view) {
        if (this.f9827h) {
            return;
        }
        e.a(view, "AdView is null");
        if (e() == view) {
            return;
        }
        c(view);
        getAdSessionStatePublisher().i();
        d(view);
    }

    @Override // com.iab.omid.library.adcolony.adsession.AdSession
    public void removeAllFriendlyObstructions() {
        if (this.f9827h) {
            return;
        }
        this.f9823d.clear();
    }

    @Override // com.iab.omid.library.adcolony.adsession.AdSession
    public void removeFriendlyObstruction(View view) {
        if (this.f9827h) {
            return;
        }
        b(view);
        c a2 = a(view);
        if (a2 != null) {
            this.f9823d.remove(a2);
        }
    }

    @Override // com.iab.omid.library.adcolony.adsession.AdSession
    public void setPossibleObstructionListener(PossibleObstructionListener possibleObstructionListener) {
        this.l = possibleObstructionListener;
    }

    @Override // com.iab.omid.library.adcolony.adsession.AdSession
    public void start() {
        if (this.f9826g) {
            return;
        }
        this.f9826g = true;
        com.iab.omid.library.adcolony.b.a.a().b(this);
        this.f9825f.a(f.a().d());
        this.f9825f.a(this, this.f9821b);
    }
}
