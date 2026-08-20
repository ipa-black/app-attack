package com.appodeal.ads.regulator;

import com.appodeal.ads.modules.common.internal.LogConstants;
import com.appodeal.consent.Consent;
import com.onesignal.NotificationBundleProcessor;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@Metadata(bv = {}, d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\t\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002R\u001a\u0010\b\u001a\u00020\u00038\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\tj\u0002\b\nj\u0002\b\u000b¨\u0006\f"}, d2 = {"Lcom/appodeal/ads/regulator/GDPRUserConsent;", "", "Lcom/appodeal/ads/regulator/UserConsent;", "Lcom/appodeal/consent/Consent$Zone;", NotificationBundleProcessor.PUSH_ADDITIONAL_DATA_KEY, "Lcom/appodeal/consent/Consent$Zone;", "getZone", "()Lcom/appodeal/consent/Consent$Zone;", "zone", LogConstants.KEY_UNKNOWN, "Personalized", "NonPersonalized", "apd_core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes2.dex */
public abstract class GDPRUserConsent implements UserConsent {
    private static final /* synthetic */ GDPRUserConsent[] $VALUES;
    public static final GDPRUserConsent NonPersonalized;
    public static final GDPRUserConsent Personalized;
    public static final GDPRUserConsent Unknown;

    /* renamed from: a  reason: collision with root package name */
    public final Consent.Zone f7371a;

    static {
        GDPRUserConsent gDPRUserConsent = new GDPRUserConsent() { // from class: com.appodeal.ads.regulator.GDPRUserConsent.Unknown

            /* renamed from: b  reason: collision with root package name */
            public final Consent.Status f7374b = Consent.Status.UNKNOWN;

            @Override // com.appodeal.ads.regulator.UserConsent
            public final Consent.Status getStatus() {
                return this.f7374b;
            }
        };
        Unknown = gDPRUserConsent;
        GDPRUserConsent gDPRUserConsent2 = new GDPRUserConsent() { // from class: com.appodeal.ads.regulator.GDPRUserConsent.Personalized

            /* renamed from: b  reason: collision with root package name */
            public final Consent.Status f7373b = Consent.Status.PERSONALIZED;

            @Override // com.appodeal.ads.regulator.UserConsent
            public final Consent.Status getStatus() {
                return this.f7373b;
            }
        };
        Personalized = gDPRUserConsent2;
        GDPRUserConsent gDPRUserConsent3 = new GDPRUserConsent() { // from class: com.appodeal.ads.regulator.GDPRUserConsent.NonPersonalized

            /* renamed from: b  reason: collision with root package name */
            public final Consent.Status f7372b = Consent.Status.NON_PERSONALIZED;

            @Override // com.appodeal.ads.regulator.UserConsent
            public final Consent.Status getStatus() {
                return this.f7372b;
            }
        };
        NonPersonalized = gDPRUserConsent3;
        $VALUES = new GDPRUserConsent[]{gDPRUserConsent, gDPRUserConsent2, gDPRUserConsent3};
    }

    public GDPRUserConsent(String str, int i) {
        this.f7371a = Consent.Zone.GDPR;
    }

    public /* synthetic */ GDPRUserConsent(String str, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, i);
    }

    public static GDPRUserConsent valueOf(String str) {
        return (GDPRUserConsent) Enum.valueOf(GDPRUserConsent.class, str);
    }

    public static GDPRUserConsent[] values() {
        return (GDPRUserConsent[]) $VALUES.clone();
    }

    @Override // com.appodeal.ads.regulator.UserConsent
    public Consent.Zone getZone() {
        return this.f7371a;
    }
}
