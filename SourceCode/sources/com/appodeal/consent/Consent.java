package com.appodeal.consent;

import com.adcolony.sdk.AdColonyAppOptions;
import com.onesignal.NotificationBundleProcessor;
import com.unity3d.ads.metadata.MediationMetaData;
import com.unity3d.services.core.di.ServiceProvider;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONArray;
import org.json.JSONObject;
@Metadata(bv = {}, d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b&\b\u0086\b\u0018\u0000 92\u00020\u0001:\u0005\u001f:;<=Bi\b\u0000\u0012\b\b\u0002\u0010\r\u001a\u00020\b\u0012\b\b\u0002\u0010\u000e\u001a\u00020\n\u0012\b\b\u0002\u0010\u0010\u001a\u00020\u000f\u0012\b\b\u0002\u0010\u0011\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0013\u001a\u00020\u0012\u0012\b\b\u0002\u0010\u0014\u001a\u00020\u0012\u0012\b\b\u0002\u0010\u0015\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0016\u001a\u00020\u0006\u0012\u000e\b\u0002\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00180\u0017¢\u0006\u0004\b5\u00106B\u0011\b\u0010\u0012\u0006\u00107\u001a\u00020\u0006¢\u0006\u0004\b5\u00108J\u0010\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002J\u0006\u0010\u0007\u001a\u00020\u0006J\t\u0010\t\u001a\u00020\bHÆ\u0003J\t\u0010\u000b\u001a\u00020\nHÆ\u0003J\t\u0010\f\u001a\u00020\u0006HÆ\u0003Ji\u0010\u001a\u001a\u00020\u00002\b\b\u0002\u0010\r\u001a\u00020\b2\b\b\u0002\u0010\u000e\u001a\u00020\n2\b\b\u0002\u0010\u0010\u001a\u00020\u000f2\b\b\u0002\u0010\u0011\u001a\u00020\u00022\b\b\u0002\u0010\u0013\u001a\u00020\u00122\b\b\u0002\u0010\u0014\u001a\u00020\u00122\b\b\u0002\u0010\u0015\u001a\u00020\u00062\b\b\u0002\u0010\u0016\u001a\u00020\u00062\u000e\b\u0002\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00180\u0017HÆ\u0001J\t\u0010\u001b\u001a\u00020\u0002HÖ\u0001J\t\u0010\u001c\u001a\u00020\u000fHÖ\u0001J\u0013\u0010\u001e\u001a\u00020\u00042\b\u0010\u001d\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0017\u0010\r\u001a\u00020\b8\u0006¢\u0006\f\n\u0004\b\u001f\u0010 \u001a\u0004\b!\u0010\"R\u0017\u0010\u000e\u001a\u00020\n8\u0006¢\u0006\f\n\u0004\b#\u0010$\u001a\u0004\b%\u0010&R\u0017\u0010\u0015\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b'\u0010(\u001a\u0004\b)\u0010*R\u0011\u0010+\u001a\u00020\u00048F¢\u0006\u0006\u001a\u0004\b+\u0010,R\u0011\u0010-\u001a\u00020\u00048F¢\u0006\u0006\u001a\u0004\b-\u0010,R\u0011\u0010/\u001a\u00020\u00048F¢\u0006\u0006\u001a\u0004\b.\u0010,R\u0011\u00102\u001a\u00020\u00028F¢\u0006\u0006\u001a\u0004\b0\u00101R\u0011\u00104\u001a\u00020\u00028F¢\u0006\u0006\u001a\u0004\b3\u00101¨\u0006>"}, d2 = {"Lcom/appodeal/consent/Consent;", "", "", "bundle", "", "hasConsentForVendor", "Lorg/json/JSONObject;", "toJson", "Lcom/appodeal/consent/Consent$Status;", "component1", "Lcom/appodeal/consent/Consent$Zone;", "component2", "component7", "status", "zone", "", MediationMetaData.KEY_VERSION, "payload", "", "createdAt", "updatedAt", "iab", ServiceProvider.NAMED_SDK, "", "Lcom/appodeal/consent/Vendor;", "acceptedVendors", "copy", "toString", "hashCode", "other", "equals", NotificationBundleProcessor.PUSH_ADDITIONAL_DATA_KEY, "Lcom/appodeal/consent/Consent$Status;", "getStatus", "()Lcom/appodeal/consent/Consent$Status;", "b", "Lcom/appodeal/consent/Consent$Zone;", "getZone", "()Lcom/appodeal/consent/Consent$Zone;", "g", "Lorg/json/JSONObject;", "getIab", "()Lorg/json/JSONObject;", "isGDPRScope", "()Z", "isCCPAScope", "getBooleanStatus", "booleanStatus", "getIABConsentString", "()Ljava/lang/String;", "IABConsentString", "getUSPrivacyString", "USPrivacyString", "<init>", "(Lcom/appodeal/consent/Consent$Status;Lcom/appodeal/consent/Consent$Zone;ILjava/lang/String;JJLorg/json/JSONObject;Lorg/json/JSONObject;Ljava/util/List;)V", "json", "(Lorg/json/JSONObject;)V", "Companion", "HasConsent", "ShouldShow", "Status", "Zone", "apd_consent"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes2.dex */
public final class Consent {
    public static final a Companion = new a();

    /* renamed from: a  reason: collision with root package name */
    public final Status f8037a;

    /* renamed from: b  reason: collision with root package name */
    public final Zone f8038b;

    /* renamed from: c  reason: collision with root package name */
    public final int f8039c;

    /* renamed from: d  reason: collision with root package name */
    public final String f8040d;

    /* renamed from: e  reason: collision with root package name */
    public final long f8041e;

    /* renamed from: f  reason: collision with root package name */
    public final long f8042f;

    /* renamed from: g  reason: collision with root package name */
    public final JSONObject f8043g;

    /* renamed from: h  reason: collision with root package name */
    public final JSONObject f8044h;
    public final List<Vendor> i;

    @Metadata(bv = {}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lcom/appodeal/consent/Consent$HasConsent;", "", "UNKNOWN", "TRUE", "FALSE", "apd_consent"}, k = 1, mv = {1, 6, 0})
    /* loaded from: classes2.dex */
    public enum HasConsent {
        UNKNOWN,
        TRUE,
        FALSE
    }

    @Metadata(bv = {}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lcom/appodeal/consent/Consent$ShouldShow;", "", "UNKNOWN", "TRUE", "FALSE", "apd_consent"}, k = 1, mv = {1, 6, 0})
    /* loaded from: classes2.dex */
    public enum ShouldShow {
        UNKNOWN,
        TRUE,
        FALSE
    }

    @Metadata(bv = {}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/appodeal/consent/Consent$Status;", "", "UNKNOWN", "NON_PERSONALIZED", "PARTLY_PERSONALIZED", "PERSONALIZED", "apd_consent"}, k = 1, mv = {1, 6, 0})
    /* loaded from: classes2.dex */
    public enum Status {
        UNKNOWN,
        NON_PERSONALIZED,
        PARTLY_PERSONALIZED,
        PERSONALIZED
    }

    @Metadata(bv = {}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/appodeal/consent/Consent$Zone;", "", "UNKNOWN", "NONE", AdColonyAppOptions.GDPR, AdColonyAppOptions.CCPA, "apd_consent"}, k = 1, mv = {1, 6, 0})
    /* loaded from: classes2.dex */
    public enum Zone {
        UNKNOWN,
        NONE,
        GDPR,
        CCPA
    }

    /* loaded from: classes2.dex */
    public static final class a {
    }

    public Consent() {
        this(null, null, 0, null, 0L, 0L, null, null, null, 511, null);
    }

    public Consent(Status status, Zone zone, int i, String payload, long j, long j2, JSONObject iab, JSONObject sdk, List<Vendor> acceptedVendors) {
        Intrinsics.checkNotNullParameter(status, "status");
        Intrinsics.checkNotNullParameter(zone, "zone");
        Intrinsics.checkNotNullParameter(payload, "payload");
        Intrinsics.checkNotNullParameter(iab, "iab");
        Intrinsics.checkNotNullParameter(sdk, "sdk");
        Intrinsics.checkNotNullParameter(acceptedVendors, "acceptedVendors");
        this.f8037a = status;
        this.f8038b = zone;
        this.f8039c = i;
        this.f8040d = payload;
        this.f8041e = j;
        this.f8042f = j2;
        this.f8043g = iab;
        this.f8044h = sdk;
        this.i = acceptedVendors;
    }

    public /* synthetic */ Consent(Status status, Zone zone, int i, String str, long j, long j2, JSONObject jSONObject, JSONObject jSONObject2, List list, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? Status.UNKNOWN : status, (i2 & 2) != 0 ? Zone.UNKNOWN : zone, (i2 & 4) != 0 ? 0 : i, (i2 & 8) != 0 ? new String() : str, (i2 & 16) != 0 ? 0L : j, (i2 & 32) == 0 ? j2 : 0L, (i2 & 64) != 0 ? new JSONObject() : jSONObject, (i2 & 128) != 0 ? new JSONObject() : jSONObject2, (i2 & 256) != 0 ? CollectionsKt.emptyList() : list);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public Consent(org.json.JSONObject r20) {
        /*
            r19 = this;
            r0 = r20
            java.lang.String r1 = "json"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r0, r1)
            com.appodeal.consent.Consent$Status[] r1 = com.appodeal.consent.Consent.Status.values()
            int r2 = r1.length
            r3 = 0
            r4 = r3
        Le:
            r5 = 0
            if (r4 >= r2) goto L26
            r6 = r1[r4]
            int r4 = r4 + 1
            java.lang.String r7 = r6.name()
            java.lang.String r8 = "status"
            java.lang.String r8 = r0.optString(r8)
            boolean r7 = kotlin.jvm.internal.Intrinsics.areEqual(r7, r8)
            if (r7 == 0) goto Le
            goto L27
        L26:
            r6 = r5
        L27:
            if (r6 != 0) goto L2b
            com.appodeal.consent.Consent$Status r6 = com.appodeal.consent.Consent.Status.UNKNOWN
        L2b:
            r8 = r6
            com.appodeal.consent.Consent$Zone[] r1 = com.appodeal.consent.Consent.Zone.values()
            int r2 = r1.length
        L31:
            if (r3 >= r2) goto L48
            r4 = r1[r3]
            int r3 = r3 + 1
            java.lang.String r6 = r4.name()
            java.lang.String r7 = "zone"
            java.lang.String r7 = r0.optString(r7)
            boolean r6 = kotlin.jvm.internal.Intrinsics.areEqual(r6, r7)
            if (r6 == 0) goto L31
            r5 = r4
        L48:
            if (r5 != 0) goto L4e
            com.appodeal.consent.Consent$Zone r1 = com.appodeal.consent.Consent.Zone.UNKNOWN
            r9 = r1
            goto L4f
        L4e:
            r9 = r5
        L4f:
            java.lang.String r1 = "payload"
            java.lang.String r11 = r0.optString(r1)
            java.lang.String r1 = "createdAt"
            long r12 = r0.optLong(r1)
            java.lang.String r1 = "updatedAt"
            long r14 = r0.optLong(r1)
            java.lang.String r1 = "vendorListVersion"
            int r10 = r0.optInt(r1)
            java.lang.String r1 = "iab"
            org.json.JSONObject r1 = r0.optJSONObject(r1)
            if (r1 != 0) goto L74
            org.json.JSONObject r1 = new org.json.JSONObject
            r1.<init>()
        L74:
            r16 = r1
            java.lang.String r1 = "sdk"
            org.json.JSONObject r1 = r0.optJSONObject(r1)
            if (r1 != 0) goto L83
            org.json.JSONObject r1 = new org.json.JSONObject
            r1.<init>()
        L83:
            r17 = r1
            java.lang.String r1 = "acceptedVendors"
            org.json.JSONArray r0 = r0.optJSONArray(r1)
            java.util.List r0 = com.appodeal.ads.modules.common.internal.ext.JsonExtKt.asList(r0)
            java.util.ArrayList r1 = new java.util.ArrayList
            r2 = 10
            int r2 = kotlin.collections.CollectionsKt.collectionSizeOrDefault(r0, r2)
            r1.<init>(r2)
            java.util.Iterator r0 = r0.iterator()
        L9e:
            boolean r2 = r0.hasNext()
            if (r2 == 0) goto Lb3
            java.lang.Object r2 = r0.next()
            org.json.JSONObject r2 = (org.json.JSONObject) r2
            com.appodeal.consent.Vendor r3 = new com.appodeal.consent.Vendor
            r3.<init>(r2)
            r1.add(r3)
            goto L9e
        Lb3:
            java.lang.String r0 = "optString(\"payload\")"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r11, r0)
            r7 = r19
            r18 = r1
            r7.<init>(r8, r9, r10, r11, r12, r14, r16, r17, r18)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appodeal.consent.Consent.<init>(org.json.JSONObject):void");
    }

    public final Status component1() {
        return this.f8037a;
    }

    public final Zone component2() {
        return this.f8038b;
    }

    public final JSONObject component7() {
        return this.f8043g;
    }

    public final Consent copy(Status status, Zone zone, int i, String payload, long j, long j2, JSONObject iab, JSONObject sdk, List<Vendor> acceptedVendors) {
        Intrinsics.checkNotNullParameter(status, "status");
        Intrinsics.checkNotNullParameter(zone, "zone");
        Intrinsics.checkNotNullParameter(payload, "payload");
        Intrinsics.checkNotNullParameter(iab, "iab");
        Intrinsics.checkNotNullParameter(sdk, "sdk");
        Intrinsics.checkNotNullParameter(acceptedVendors, "acceptedVendors");
        return new Consent(status, zone, i, payload, j, j2, iab, sdk, acceptedVendors);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Consent) {
            Consent consent = (Consent) obj;
            return this.f8037a == consent.f8037a && this.f8038b == consent.f8038b && this.f8039c == consent.f8039c && Intrinsics.areEqual(this.f8040d, consent.f8040d) && this.f8041e == consent.f8041e && this.f8042f == consent.f8042f && Intrinsics.areEqual(this.f8043g, consent.f8043g) && Intrinsics.areEqual(this.f8044h, consent.f8044h) && Intrinsics.areEqual(this.i, consent.i);
        }
        return false;
    }

    public final boolean getBooleanStatus() {
        Status status = this.f8037a;
        return status == Status.PERSONALIZED || status == Status.PARTLY_PERSONALIZED;
    }

    public final String getIABConsentString() {
        String optString = this.f8043g.optString("IABConsent_ConsentString");
        Intrinsics.checkNotNullExpressionValue(optString, "iab.optString(\"IABConsent_ConsentString\")");
        return optString;
    }

    public final JSONObject getIab() {
        return this.f8043g;
    }

    public final Status getStatus() {
        return this.f8037a;
    }

    public final String getUSPrivacyString() {
        String optString = this.f8043g.optString("IABUSPrivacy_String");
        Intrinsics.checkNotNullExpressionValue(optString, "iab.optString(\"IABUSPrivacy_String\")");
        return optString;
    }

    public final Zone getZone() {
        return this.f8038b;
    }

    public final boolean hasConsentForVendor(String str) {
        Object obj;
        if (str == null) {
            return false;
        }
        Iterator<T> it = this.i.iterator();
        while (true) {
            if (!it.hasNext()) {
                obj = null;
                break;
            }
            obj = it.next();
            if (Intrinsics.areEqual(((Vendor) obj).getBundle(), str)) {
                break;
            }
        }
        return ((Vendor) obj) != null;
    }

    public int hashCode() {
        int hashCode = this.f8038b.hashCode();
        int hashCode2 = Integer.hashCode(this.f8039c);
        int hashCode3 = this.f8040d.hashCode();
        int hashCode4 = Long.hashCode(this.f8041e);
        int hashCode5 = Long.hashCode(this.f8042f);
        int hashCode6 = this.f8043g.hashCode();
        int hashCode7 = this.f8044h.hashCode();
        return this.i.hashCode() + ((hashCode7 + ((hashCode6 + ((hashCode5 + ((hashCode4 + ((hashCode3 + ((hashCode2 + ((hashCode + (this.f8037a.hashCode() * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31);
    }

    public final boolean isCCPAScope() {
        return this.f8038b == Zone.CCPA;
    }

    public final boolean isGDPRScope() {
        return this.f8038b == Zone.GDPR;
    }

    public final JSONObject toJson() {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("zone", getZone());
        jSONObject.put("status", getStatus());
        Integer valueOf = Integer.valueOf(this.f8039c);
        if (valueOf.intValue() == 0) {
            valueOf = null;
        }
        jSONObject.put("vendorListVersion", valueOf);
        String str = this.f8040d;
        if (str.length() <= 0) {
            str = null;
        }
        jSONObject.put("payload", str);
        Long valueOf2 = Long.valueOf(this.f8041e);
        if (valueOf2.longValue() == 0) {
            valueOf2 = null;
        }
        jSONObject.put("createdAt", valueOf2);
        Long valueOf3 = Long.valueOf(this.f8042f);
        if (valueOf3.longValue() == 0) {
            valueOf3 = null;
        }
        jSONObject.put("updatedAt", valueOf3);
        JSONObject iab = getIab();
        if (iab.length() == 0) {
            iab = null;
        }
        jSONObject.put("iab", iab);
        JSONObject jSONObject2 = this.f8044h;
        if (jSONObject2.length() == 0) {
            jSONObject2 = null;
        }
        jSONObject.put(ServiceProvider.NAMED_SDK, jSONObject2);
        List<Vendor> list = this.i;
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
        for (Vendor vendor : list) {
            arrayList.add(vendor.toJson$apd_consent());
        }
        JSONArray jSONArray = new JSONArray((Collection) arrayList);
        jSONObject.put("acceptedVendors", jSONArray.length() != 0 ? jSONArray : null);
        return jSONObject;
    }

    public String toString() {
        return "Consent(status=" + this.f8037a + ", zone=" + this.f8038b + ", version=" + this.f8039c + ", payload=" + this.f8040d + ", createdAt=" + this.f8041e + ", updatedAt=" + this.f8042f + ", iab=" + this.f8043g + ", sdk=" + this.f8044h + ", acceptedVendors=" + this.i + ')';
    }
}
