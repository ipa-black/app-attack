package com.appodeal.ads.regulator;

import com.appodeal.ads.h0;
import com.appodeal.consent.Consent;
import com.appodeal.consent.ConsentForm;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes2.dex */
public interface a {

    /* renamed from: com.appodeal.ads.regulator.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static final class C0138a implements a {

        /* renamed from: a  reason: collision with root package name */
        public final Consent f7375a;

        public C0138a(Consent consent) {
            Intrinsics.checkNotNullParameter(consent, "consent");
            this.f7375a = consent;
        }

        public final Consent a() {
            return this.f7375a;
        }

        public final String toString() {
            return Intrinsics.stringPlus("Consent form closed. Current consent: ", this.f7375a.toJson());
        }
    }

    /* loaded from: classes2.dex */
    public static final class b implements a {

        /* renamed from: a  reason: collision with root package name */
        public final Consent f7376a;

        /* renamed from: b  reason: collision with root package name */
        public final boolean f7377b;

        public b(Consent consent, boolean z) {
            Intrinsics.checkNotNullParameter(consent, "consent");
            this.f7376a = consent;
            this.f7377b = z;
        }

        public final Consent a() {
            return this.f7376a;
        }

        public final boolean b() {
            return this.f7377b;
        }

        public final String toString() {
            return h0.a("Consent loaded [consent: ").append(this.f7376a.toJson()).append(", shouldShowConsentView: ").append(this.f7377b).append(']').toString();
        }
    }

    /* loaded from: classes2.dex */
    public static final class c implements a {

        /* renamed from: a  reason: collision with root package name */
        public final Consent f7378a;

        public c(Consent consent) {
            Intrinsics.checkNotNullParameter(consent, "consent");
            this.f7378a = consent;
        }

        public final Consent a() {
            return this.f7378a;
        }

        public final String toString() {
            return h0.a("Consent received successfully [consent: ").append(this.f7378a.toJson()).append(']').toString();
        }
    }

    /* loaded from: classes2.dex */
    public static final class d implements a {

        /* renamed from: a  reason: collision with root package name */
        public final Throwable f7379a;

        public d(Throwable cause) {
            Intrinsics.checkNotNullParameter(cause, "cause");
            this.f7379a = cause;
        }

        public final Throwable a() {
            return this.f7379a;
        }
    }

    /* loaded from: classes2.dex */
    public static final class e implements a {

        /* renamed from: a  reason: collision with root package name */
        public final ConsentForm f7380a;

        public e(ConsentForm consentForm) {
            Intrinsics.checkNotNullParameter(consentForm, "consentForm");
            this.f7380a = consentForm;
        }

        public final ConsentForm a() {
            return this.f7380a;
        }

        public final String toString() {
            return h0.a("Form loaded [consentForm: ").append(this.f7380a).append(']').toString();
        }
    }

    /* loaded from: classes2.dex */
    public static final class f implements a {

        /* renamed from: a  reason: collision with root package name */
        public final String f7381a;

        /* renamed from: b  reason: collision with root package name */
        public final Consent f7382b;

        /* renamed from: c  reason: collision with root package name */
        public final Consent.Status f7383c;

        /* renamed from: d  reason: collision with root package name */
        public final Consent.Zone f7384d;

        public f(String appKey, Consent consent, Consent.Status status, Consent.Zone zone) {
            Intrinsics.checkNotNullParameter(appKey, "appKey");
            this.f7381a = appKey;
            this.f7382b = consent;
            this.f7383c = status;
            this.f7384d = zone;
        }

        public final String a() {
            return this.f7381a;
        }

        public final Consent b() {
            return this.f7382b;
        }

        public final Consent.Status c() {
            return this.f7383c;
        }

        public final Consent.Zone d() {
            return this.f7384d;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof f) {
                f fVar = (f) obj;
                return Intrinsics.areEqual(this.f7381a, fVar.f7381a) && Intrinsics.areEqual(this.f7382b, fVar.f7382b) && this.f7383c == fVar.f7383c && this.f7384d == fVar.f7384d;
            }
            return false;
        }

        public final int hashCode() {
            int hashCode = this.f7381a.hashCode() * 31;
            Consent consent = this.f7382b;
            int hashCode2 = (hashCode + (consent == null ? 0 : consent.hashCode())) * 31;
            Consent.Status status = this.f7383c;
            int hashCode3 = (hashCode2 + (status == null ? 0 : status.hashCode())) * 31;
            Consent.Zone zone = this.f7384d;
            return hashCode3 + (zone != null ? zone.hashCode() : 0);
        }

        public final String toString() {
            return h0.a("OnStarted(appKey=").append(this.f7381a).append(", publisherConsent=").append(this.f7382b).append(", status=").append(this.f7383c).append(", zone=").append(this.f7384d).append(')').toString();
        }
    }
}
