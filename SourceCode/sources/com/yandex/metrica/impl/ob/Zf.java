package com.yandex.metrica.impl.ob;

import com.yandex.metrica.AdRevenue;
import com.yandex.metrica.IReporter;
import com.yandex.metrica.Revenue;
import com.yandex.metrica.ValidationException;
import com.yandex.metrica.ecommerce.ECommerceEvent;
import com.yandex.metrica.plugins.IPluginReporter;
import com.yandex.metrica.profile.UserProfile;
import java.util.Map;
/* loaded from: classes5.dex */
public class Zf implements IReporter {

    /* renamed from: b  reason: collision with root package name */
    static final Kn<String> f14347b = new Hn(new Fn("Event name"));

    /* renamed from: c  reason: collision with root package name */
    static final Kn<String> f14348c = new Hn(new Fn("Error message"));

    /* renamed from: d  reason: collision with root package name */
    static final Kn<String> f14349d = new Hn(new Fn("Error identifier"));

    /* renamed from: e  reason: collision with root package name */
    static final Kn<Throwable> f14350e = new Hn(new Gn("Unhandled exception"));

    /* renamed from: f  reason: collision with root package name */
    static final Kn<UserProfile> f14351f = new Hn(new Gn("User profile"));

    /* renamed from: g  reason: collision with root package name */
    static final Kn<Revenue> f14352g = new Hn(new Gn("Revenue"));

    /* renamed from: h  reason: collision with root package name */
    static final Kn<AdRevenue> f14353h = new Hn(new Gn("AdRevenue"));
    static final Kn<ECommerceEvent> i = new Hn(new Gn("ECommerceEvent"));

    /* renamed from: a  reason: collision with root package name */
    private final Yf f14354a;

    public Zf() {
        this(new Yf());
    }

    public Yf a() {
        return this.f14354a;
    }

    @Override // com.yandex.metrica.IReporter
    public IPluginReporter getPluginExtension() {
        return this.f14354a;
    }

    @Override // com.yandex.metrica.IReporter
    public void pauseSession() {
    }

    @Override // com.yandex.metrica.IReporter
    public void reportAdRevenue(AdRevenue adRevenue) {
        ((Hn) f14353h).a(adRevenue);
    }

    @Override // com.yandex.metrica.IReporter
    public void reportECommerce(ECommerceEvent eCommerceEvent) {
        ((Hn) i).a(eCommerceEvent);
    }

    @Override // com.yandex.metrica.IReporter
    public void reportError(String str, Throwable th) throws ValidationException {
        ((Hn) f14348c).a(str);
    }

    @Override // com.yandex.metrica.IReporter
    public void reportEvent(String str) throws ValidationException {
        ((Hn) f14347b).a(str);
    }

    @Override // com.yandex.metrica.IReporter
    public void reportRevenue(Revenue revenue) throws ValidationException {
        ((Hn) f14352g).a(revenue);
    }

    @Override // com.yandex.metrica.IReporter
    public void reportUnhandledException(Throwable th) throws ValidationException {
        ((Hn) f14350e).a(th);
    }

    @Override // com.yandex.metrica.IReporter
    public void reportUserProfile(UserProfile userProfile) throws ValidationException {
        ((Hn) f14351f).a(userProfile);
    }

    @Override // com.yandex.metrica.IReporter
    public void resumeSession() {
    }

    @Override // com.yandex.metrica.IReporter
    public void setStatisticsSending(boolean z) {
    }

    @Override // com.yandex.metrica.IReporter
    public void setUserProfileID(String str) {
    }

    Zf(Yf yf) {
        this.f14354a = yf;
    }

    @Override // com.yandex.metrica.IReporter
    public void reportError(String str, String str2) {
        ((Hn) f14349d).a(str);
    }

    @Override // com.yandex.metrica.IReporter
    public void reportEvent(String str, String str2) throws ValidationException {
        ((Hn) f14347b).a(str);
    }

    @Override // com.yandex.metrica.IReporter
    public void reportError(String str, String str2, Throwable th) {
        ((Hn) f14349d).a(str);
    }

    @Override // com.yandex.metrica.IReporter
    public void reportEvent(String str, Map<String, Object> map) throws ValidationException {
        ((Hn) f14347b).a(str);
    }
}
