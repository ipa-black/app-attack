package com.iab.omid.library.amazon.adsession;

import android.view.View;
import com.iab.omid.library.amazon.b.c;
import com.iab.omid.library.amazon.b.f;
import com.iab.omid.library.amazon.d.e;
import com.iab.omid.library.amazon.publisher.AdSessionStatePublisher;
import com.iab.omid.library.amazon.publisher.b;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.UUID;
import java.util.regex.Pattern;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class a extends AdSession {

    /* renamed from: a  reason: collision with root package name */
    private static final Pattern f9927a = Pattern.compile("^[a-zA-Z0-9 ]+$");

    /* renamed from: b  reason: collision with root package name */
    private final AdSessionContext f9928b;

    /* renamed from: c  reason: collision with root package name */
    private final AdSessionConfiguration f9929c;

    /* renamed from: e  reason: collision with root package name */
    private com.iab.omid.library.amazon.e.a f9931e;

    /* renamed from: f  reason: collision with root package name */
    private AdSessionStatePublisher f9932f;
    private boolean j;
    private boolean k;
    private PossibleObstructionListener l;

    /* renamed from: d  reason: collision with root package name */
    private final List<c> f9930d = new ArrayList();

    /* renamed from: g  reason: collision with root package name */
    private boolean f9933g = false;

    /* renamed from: h  reason: collision with root package name */
    private boolean f9934h = false;
    private final String i = UUID.randomUUID().toString();

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(AdSessionConfiguration adSessionConfiguration, AdSessionContext adSessionContext) {
        this.f9929c = adSessionConfiguration;
        this.f9928b = adSessionContext;
        c(null);
        this.f9932f = (adSessionContext.getAdSessionContextType() == AdSessionContextType.HTML || adSessionContext.getAdSessionContextType() == AdSessionContextType.JAVASCRIPT) ? new com.iab.omid.library.amazon.publisher.a(adSessionContext.getWebView()) : new b(adSessionContext.getInjectedResourcesMap(), adSessionContext.getOmidJsScriptContent());
        this.f9932f.a();
        com.iab.omid.library.amazon.b.a.a().a(this);
        this.f9932f.a(adSessionConfiguration);
    }

    private c a(View view) {
        for (c cVar : this.f9930d) {
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
            if (!f9927a.matcher(str).matches()) {
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
        this.f9931e = new com.iab.omid.library.amazon.e.a(view);
    }

    private void d(View view) {
        Collection<a> b2 = com.iab.omid.library.amazon.b.a.a().b();
        if (b2 == null || b2.isEmpty()) {
            return;
        }
        for (a aVar : b2) {
            if (aVar != this && aVar.e() == view) {
                aVar.f9931e.clear();
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
        return this.f9930d;
    }

    public void a(List<com.iab.omid.library.amazon.e.a> list) {
        if (b()) {
            ArrayList arrayList = new ArrayList();
            for (com.iab.omid.library.amazon.e.a aVar : list) {
                View view = (View) aVar.get();
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

    @Override // com.iab.omid.library.amazon.adsession.AdSession
    public void addFriendlyObstruction(View view, FriendlyObstructionPurpose friendlyObstructionPurpose, String str) {
        if (this.f9934h) {
            return;
        }
        b(view);
        a(str);
        if (a(view) == null) {
            this.f9930d.add(new c(view, friendlyObstructionPurpose, str));
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
        return (View) this.f9931e.get();
    }

    @Override // com.iab.omid.library.amazon.adsession.AdSession
    public void error(ErrorType errorType, String str) {
        if (this.f9934h) {
            throw new IllegalStateException("AdSession is finished");
        }
        e.a(errorType, "Error type is null");
        e.a(str, "Message is null");
        getAdSessionStatePublisher().a(errorType, str);
    }

    public boolean f() {
        return this.f9933g && !this.f9934h;
    }

    @Override // com.iab.omid.library.amazon.adsession.AdSession
    public void finish() {
        if (this.f9934h) {
            return;
        }
        this.f9931e.clear();
        removeAllFriendlyObstructions();
        this.f9934h = true;
        getAdSessionStatePublisher().f();
        com.iab.omid.library.amazon.b.a.a().c(this);
        getAdSessionStatePublisher().b();
        this.f9932f = null;
        this.l = null;
    }

    public boolean g() {
        return this.f9933g;
    }

    @Override // com.iab.omid.library.amazon.adsession.AdSession
    public String getAdSessionId() {
        return this.i;
    }

    @Override // com.iab.omid.library.amazon.adsession.AdSession
    public AdSessionStatePublisher getAdSessionStatePublisher() {
        return this.f9932f;
    }

    public boolean h() {
        return this.f9934h;
    }

    public boolean i() {
        return this.f9929c.isNativeImpressionOwner();
    }

    public boolean j() {
        return this.f9929c.isNativeMediaEventsOwner();
    }

    @Override // com.iab.omid.library.amazon.adsession.AdSession
    public void registerAdView(View view) {
        if (this.f9934h) {
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

    @Override // com.iab.omid.library.amazon.adsession.AdSession
    public void removeAllFriendlyObstructions() {
        if (this.f9934h) {
            return;
        }
        this.f9930d.clear();
    }

    @Override // com.iab.omid.library.amazon.adsession.AdSession
    public void removeFriendlyObstruction(View view) {
        if (this.f9934h) {
            return;
        }
        b(view);
        c a2 = a(view);
        if (a2 != null) {
            this.f9930d.remove(a2);
        }
    }

    @Override // com.iab.omid.library.amazon.adsession.AdSession
    public void setPossibleObstructionListener(PossibleObstructionListener possibleObstructionListener) {
        this.l = possibleObstructionListener;
    }

    @Override // com.iab.omid.library.amazon.adsession.AdSession
    public void start() {
        if (this.f9933g) {
            return;
        }
        this.f9933g = true;
        com.iab.omid.library.amazon.b.a.a().b(this);
        this.f9932f.a(f.a().d());
        this.f9932f.a(this, this.f9928b);
    }
}
