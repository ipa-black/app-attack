package com.appodeal.ads.regulator;

import com.appodeal.ads.modules.common.internal.LogConstants;
import com.appodeal.consent.Consent;
import com.onesignal.NotificationBundleProcessor;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@Metadata(bv = {}, d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\t\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002R\u001a\u0010\b\u001a\u00020\u00038\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\tj\u0002\b\nj\u0002\b\u000b¨\u0006\f"}, d2 = {"Lcom/appodeal/ads/regulator/CCPAUserConsent;", "", "Lcom/appodeal/ads/regulator/UserConsent;", "Lcom/appodeal/consent/Consent$Zone;", NotificationBundleProcessor.PUSH_ADDITIONAL_DATA_KEY, "Lcom/appodeal/consent/Consent$Zone;", "getZone", "()Lcom/appodeal/consent/Consent$Zone;", "zone", LogConstants.KEY_UNKNOWN, "OptIn", "OptOut", "apd_core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes2.dex */
public abstract class CCPAUserConsent implements UserConsent {
    private static final /* synthetic */ CCPAUserConsent[] $VALUES;
    public static final CCPAUserConsent OptIn;
    public static final CCPAUserConsent OptOut;
    public static final CCPAUserConsent Unknown;

    /* renamed from: a  reason: collision with root package name */
    public final Consent.Zone f7367a;

    static {
        CCPAUserConsent cCPAUserConsent = new CCPAUserConsent() { // from class: com.appodeal.ads.regulator.CCPAUserConsent.Unknown

            /* renamed from: b  reason: collision with root package name */
            public final Consent.Status f7370b = Consent.Status.UNKNOWN;

            @Override // com.appodeal.ads.regulator.UserConsent
            public final Consent.Status getStatus() {
                return this.f7370b;
            }
        };
        Unknown = cCPAUserConsent;
        CCPAUserConsent cCPAUserConsent2 = new CCPAUserConsent() { // from class: com.appodeal.ads.regulator.CCPAUserConsent.OptIn

            /* renamed from: b  reason: collision with root package name */
            public final Consent.Status f7368b = Consent.Status.PERSONALIZED;

            @Override // com.appodeal.ads.regulator.UserConsent
            public final Consent.Status getStatus() {
                return this.f7368b;
            }
        };
        OptIn = cCPAUserConsent2;
        CCPAUserConsent cCPAUserConsent3 = new CCPAUserConsent() { // from class: com.appodeal.ads.regulator.CCPAUserConsent.OptOut

            /* renamed from: b  reason: collision with root package name */
            public final Consent.Status f7369b = Consent.Status.NON_PERSONALIZED;

            @Override // com.appodeal.ads.regulator.UserConsent
            public final Consent.Status getStatus() {
                return this.f7369b;
            }
        };
        OptOut = cCPAUserConsent3;
        $VALUES = new CCPAUserConsent[]{cCPAUserConsent, cCPAUserConsent2, cCPAUserConsent3};
    }

    public CCPAUserConsent(String str, int i) {
        this.f7367a = Consent.Zone.CCPA;
    }

    public /* synthetic */ CCPAUserConsent(String str, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, i);
    }

    public static CCPAUserConsent valueOf(String str) {
        return (CCPAUserConsent) Enum.valueOf(CCPAUserConsent.class, str);
    }

    public static CCPAUserConsent[] values() {
        return (CCPAUserConsent[]) $VALUES.clone();
    }

    @Override // com.appodeal.ads.regulator.UserConsent
    public Consent.Zone getZone() {
        return this.f7367a;
    }
}
