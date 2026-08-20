package com.appodeal.ads.regulator;

import com.appodeal.consent.Consent;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public final class i implements h {

    /* renamed from: a  reason: collision with root package name */
    public boolean f7418a;

    /* renamed from: b  reason: collision with root package name */
    public boolean f7419b;

    /* renamed from: c  reason: collision with root package name */
    public Consent f7420c;

    /* renamed from: d  reason: collision with root package name */
    public UserConsent f7421d;

    /* renamed from: e  reason: collision with root package name */
    public Boolean f7422e;

    /* renamed from: f  reason: collision with root package name */
    public Consent f7423f;

    /* renamed from: g  reason: collision with root package name */
    public boolean f7424g;

    @DebugMetadata(c = "com.appodeal.ads.regulator.RegulatorProvider", f = "RegulatorProvider.kt", i = {0}, l = {60}, m = "receiveRegulatorData", n = {"this"}, s = {"L$0"})
    /* loaded from: classes2.dex */
    public static final class a extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        public i f7425a;

        /* renamed from: b  reason: collision with root package name */
        public /* synthetic */ Object f7426b;

        /* renamed from: d  reason: collision with root package name */
        public int f7428d;

        public a(Continuation<? super a> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.f7426b = obj;
            this.f7428d |= Integer.MIN_VALUE;
            return i.this.a(null, null, this);
        }
    }

    @Override // com.appodeal.ads.regulator.h
    public final void a(JSONObject jsonObject) {
        Intrinsics.checkNotNullParameter(jsonObject, "jsonObject");
        this.f7418a = jsonObject.has("gdpr");
        this.f7419b = jsonObject.has("ccpa");
        this.f7424g = jsonObject.optBoolean("consent", true);
    }

    @Override // com.appodeal.ads.regulator.h
    public final boolean a(Boolean bool) {
        if (Intrinsics.areEqual(this.f7422e, bool)) {
            return false;
        }
        this.f7422e = bool;
        return true;
    }

    @Override // com.appodeal.ads.regulator.h
    public final boolean b() {
        Consent consent = this.f7420c;
        Boolean valueOf = consent == null ? null : Boolean.valueOf(consent.getBooleanStatus());
        if (valueOf == null) {
            Consent consent2 = this.f7423f;
            Boolean valueOf2 = consent2 != null ? Boolean.valueOf(consent2.getBooleanStatus()) : null;
            if (valueOf2 == null) {
                valueOf = this.f7422e;
                if (valueOf == null) {
                    return false;
                }
            } else {
                valueOf = valueOf2;
            }
        }
        return valueOf.booleanValue();
    }

    @Override // com.appodeal.ads.regulator.h
    public final Consent c() {
        return this.f7420c;
    }

    @Override // com.appodeal.ads.regulator.h
    public final Boolean d() {
        return this.f7422e;
    }

    @Override // com.appodeal.ads.regulator.h
    public final boolean e() {
        return this.f7424g && b();
    }

    @Override // com.appodeal.ads.regulator.h
    public final String f() {
        Consent consent = this.f7420c;
        String iABConsentString = consent == null ? null : consent.getIABConsentString();
        if (iABConsentString == null) {
            Consent consent2 = this.f7423f;
            if (consent2 == null) {
                return null;
            }
            return consent2.getIABConsentString();
        }
        return iABConsentString;
    }

    @Override // com.appodeal.ads.regulator.h
    public final boolean g() {
        Consent consent = this.f7420c;
        Boolean valueOf = consent == null ? null : Boolean.valueOf(consent.isCCPAScope());
        if (valueOf == null) {
            Consent consent2 = this.f7423f;
            Boolean valueOf2 = consent2 != null ? Boolean.valueOf(consent2.isCCPAScope()) : null;
            if (valueOf2 == null) {
                return this.f7419b;
            }
            valueOf = valueOf2;
        }
        return valueOf.booleanValue();
    }

    @Override // com.appodeal.ads.regulator.h
    public final String getUSPrivacyString() {
        Consent consent = this.f7420c;
        String uSPrivacyString = consent == null ? null : consent.getUSPrivacyString();
        if (uSPrivacyString == null) {
            Consent consent2 = this.f7423f;
            if (consent2 == null) {
                return null;
            }
            return consent2.getUSPrivacyString();
        }
        return uSPrivacyString;
    }

    @Override // com.appodeal.ads.regulator.h
    public final boolean a(Consent consent) {
        if (Intrinsics.areEqual(this.f7423f, consent)) {
            return false;
        }
        this.f7423f = consent;
        return true;
    }

    @Override // com.appodeal.ads.regulator.h
    public final boolean a(UserConsent publisherZoneConsent) {
        Intrinsics.checkNotNullParameter(publisherZoneConsent, "publisherZoneConsent");
        if (Intrinsics.areEqual(this.f7421d, publisherZoneConsent)) {
            return false;
        }
        this.f7421d = publisherZoneConsent;
        return true;
    }

    @Override // com.appodeal.ads.regulator.h
    public final boolean a(String str) {
        if (this.f7424g) {
            Consent consent = this.f7423f;
            Boolean valueOf = consent == null ? null : Boolean.valueOf(consent.hasConsentForVendor(str));
            if (valueOf == null ? e() : valueOf.booleanValue()) {
                return true;
            }
        }
        return false;
    }

    @Override // com.appodeal.ads.regulator.h
    public final boolean a() {
        Consent consent = this.f7420c;
        Boolean valueOf = consent == null ? null : Boolean.valueOf(consent.isGDPRScope());
        if (valueOf == null) {
            Consent consent2 = this.f7423f;
            Boolean valueOf2 = consent2 != null ? Boolean.valueOf(consent2.isGDPRScope()) : null;
            if (valueOf2 == null) {
                return this.f7418a;
            }
            valueOf = valueOf2;
        }
        return valueOf.booleanValue();
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0034  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0088  */
    @Override // com.appodeal.ads.regulator.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(android.content.Context r8, java.lang.String r9, kotlin.coroutines.Continuation<? super com.appodeal.consent.Consent> r10) {
        /*
            r7 = this;
            boolean r0 = r10 instanceof com.appodeal.ads.regulator.i.a
            if (r0 == 0) goto L13
            r0 = r10
            com.appodeal.ads.regulator.i$a r0 = (com.appodeal.ads.regulator.i.a) r0
            int r1 = r0.f7428d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f7428d = r1
            goto L18
        L13:
            com.appodeal.ads.regulator.i$a r0 = new com.appodeal.ads.regulator.i$a
            r0.<init>(r10)
        L18:
            r6 = r0
            java.lang.Object r10 = r6.f7426b
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r6.f7428d
            r2 = 1
            if (r1 == 0) goto L34
            if (r1 != r2) goto L2c
            com.appodeal.ads.regulator.i r8 = r6.f7425a
            kotlin.ResultKt.throwOnFailure(r10)
            goto L84
        L2c:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r9)
            throw r8
        L34:
            kotlin.ResultKt.throwOnFailure(r10)
            com.appodeal.ads.regulator.UserConsent r10 = r7.f7421d
            java.lang.Boolean r1 = r7.f7422e
            if (r10 == 0) goto L4a
            com.appodeal.consent.Consent$Status r1 = r10.getStatus()
            com.appodeal.consent.Consent$Zone r10 = r10.getZone()
            kotlin.Pair r10 = kotlin.TuplesKt.to(r1, r10)
            goto L63
        L4a:
            if (r1 == 0) goto L5e
            boolean r10 = r1.booleanValue()
            if (r10 == 0) goto L55
            com.appodeal.consent.Consent$Status r10 = com.appodeal.consent.Consent.Status.PERSONALIZED
            goto L57
        L55:
            com.appodeal.consent.Consent$Status r10 = com.appodeal.consent.Consent.Status.NON_PERSONALIZED
        L57:
            com.appodeal.consent.Consent$Zone r1 = com.appodeal.consent.Consent.Zone.UNKNOWN
            kotlin.Pair r10 = kotlin.TuplesKt.to(r10, r1)
            goto L63
        L5e:
            r10 = 0
            kotlin.Pair r10 = kotlin.TuplesKt.to(r10, r10)
        L63:
            java.lang.Object r1 = r10.component1()
            r4 = r1
            com.appodeal.consent.Consent$Status r4 = (com.appodeal.consent.Consent.Status) r4
            java.lang.Object r10 = r10.component2()
            r5 = r10
            com.appodeal.consent.Consent$Zone r5 = (com.appodeal.consent.Consent.Zone) r5
            com.appodeal.ads.regulator.d r1 = com.appodeal.ads.regulator.c.a(r8)
            com.appodeal.consent.Consent r3 = r7.f7423f
            r6.f7425a = r7
            r6.f7428d = r2
            r2 = r9
            java.lang.Object r10 = r1.a(r2, r3, r4, r5, r6)
            if (r10 != r0) goto L83
            return r0
        L83:
            r8 = r7
        L84:
            com.appodeal.consent.Consent r10 = (com.appodeal.consent.Consent) r10
            if (r10 != 0) goto L8c
            com.appodeal.consent.Consent r10 = com.appodeal.consent.ConsentManager.getConsent()
        L8c:
            r8.f7420c = r10
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appodeal.ads.regulator.i.a(android.content.Context, java.lang.String, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
