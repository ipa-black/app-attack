package com.adcolony.sdk;
/* loaded from: classes.dex */
public class AdColonyAdOptions {

    /* renamed from: a  reason: collision with root package name */
    boolean f58a;

    /* renamed from: b  reason: collision with root package name */
    boolean f59b;

    /* renamed from: c  reason: collision with root package name */
    AdColonyUserMetadata f60c;

    /* renamed from: d  reason: collision with root package name */
    f1 f61d = c0.b();

    public AdColonyAdOptions enableConfirmationDialog(boolean z) {
        this.f58a = z;
        c0.b(this.f61d, "confirmation_enabled", true);
        return this;
    }

    public AdColonyAdOptions enableResultsDialog(boolean z) {
        this.f59b = z;
        c0.b(this.f61d, "results_enabled", true);
        return this;
    }

    public Object getOption(String str) {
        return c0.g(this.f61d, str);
    }

    @Deprecated
    public AdColonyUserMetadata getUserMetadata() {
        return this.f60c;
    }

    public AdColonyAdOptions setOption(String str, boolean z) {
        if (z0.e(str)) {
            c0.b(this.f61d, str, z);
        }
        return this;
    }

    @Deprecated
    public AdColonyAdOptions setUserMetadata(AdColonyUserMetadata adColonyUserMetadata) {
        this.f60c = adColonyUserMetadata;
        c0.a(this.f61d, "user_metadata", adColonyUserMetadata.f114b);
        return this;
    }

    public AdColonyAdOptions setOption(String str, double d2) {
        if (z0.e(str)) {
            c0.a(this.f61d, str, d2);
        }
        return this;
    }

    public AdColonyAdOptions setOption(String str, String str2) {
        if (str != null) {
            c0.a(this.f61d, str, str2);
        }
        return this;
    }
}
