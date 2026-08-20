package com.appodeal.consent;

import com.appnext.base.b.f;
import com.ironsource.sdk.c.d;
import com.onesignal.NotificationBundleProcessor;
import java.util.Collection;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONArray;
import org.json.JSONObject;
@Metadata(bv = {}, d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u000b\n\u0002\u0010 \n\u0002\b\u0011\u0018\u00002\u00020\u0001:\u0001(BY\b\u0007\u0012\u0006\u0010\u000b\u001a\u00020\u0006\u0012\u0006\u0010\u0011\u001a\u00020\f\u0012\u0006\u0010\u0014\u001a\u00020\f\u0012\u0006\u0010\u0017\u001a\u00020\f\u0012\u000e\b\u0002\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u00060\u0018\u0012\u000e\b\u0002\u0010 \u001a\b\u0012\u0004\u0012\u00020\u00060\u0018\u0012\u000e\b\u0002\u0010#\u001a\b\u0012\u0004\u0012\u00020\u00060\u0018¢\u0006\u0004\b$\u0010%B\u0011\b\u0010\u0012\u0006\u0010&\u001a\u00020\u0002¢\u0006\u0004\b$\u0010'J\u000f\u0010\u0005\u001a\u00020\u0002H\u0000¢\u0006\u0004\b\u0003\u0010\u0004R\u0017\u0010\u000b\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\nR\u0017\u0010\u0011\u001a\u00020\f8\u0006¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010R\u0017\u0010\u0014\u001a\u00020\f8\u0006¢\u0006\f\n\u0004\b\u0012\u0010\u000e\u001a\u0004\b\u0013\u0010\u0010R\u0017\u0010\u0017\u001a\u00020\f8\u0006¢\u0006\f\n\u0004\b\u0015\u0010\u000e\u001a\u0004\b\u0016\u0010\u0010R\u001d\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u00060\u00188\u0006¢\u0006\f\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u001b\u0010\u001cR\u001d\u0010 \u001a\b\u0012\u0004\u0012\u00020\u00060\u00188\u0006¢\u0006\f\n\u0004\b\u001e\u0010\u001a\u001a\u0004\b\u001f\u0010\u001cR\u001d\u0010#\u001a\b\u0012\u0004\u0012\u00020\u00060\u00188\u0006¢\u0006\f\n\u0004\b!\u0010\u001a\u001a\u0004\b\"\u0010\u001c¨\u0006)"}, d2 = {"Lcom/appodeal/consent/Vendor;", "", "Lorg/json/JSONObject;", "toJson$apd_consent", "()Lorg/json/JSONObject;", "toJson", "", NotificationBundleProcessor.PUSH_ADDITIONAL_DATA_KEY, "I", "getId", "()I", "id", "", "b", "Ljava/lang/String;", "getName", "()Ljava/lang/String;", "name", "c", "getBundle", "bundle", d.f11571a, "getPolicyUrl", "policyUrl", "", "e", "Ljava/util/List;", "getPurposeIds", "()Ljava/util/List;", "purposeIds", f.TAG, "getFeatureIds", "featureIds", "g", "getLegitimateInterestPurposeIds", "legitimateInterestPurposeIds", "<init>", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V", "json", "(Lorg/json/JSONObject;)V", "Builder", "apd_consent"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes2.dex */
public final class Vendor {

    /* renamed from: a  reason: collision with root package name */
    public final int f8058a;

    /* renamed from: b  reason: collision with root package name */
    public final String f8059b;

    /* renamed from: c  reason: collision with root package name */
    public final String f8060c;

    /* renamed from: d  reason: collision with root package name */
    public final String f8061d;

    /* renamed from: e  reason: collision with root package name */
    public final List<Integer> f8062e;

    /* renamed from: f  reason: collision with root package name */
    public final List<Integer> f8063f;

    /* renamed from: g  reason: collision with root package name */
    public final List<Integer> f8064g;

    @Metadata(bv = {}, d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B]\b\u0007\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\f\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\n\u0012\u000e\b\u0002\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u0004\u0012\u000e\b\u0002\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00020\u0004\u0012\u000e\b\u0002\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00020\u0004¢\u0006\u0004\b\u0015\u0010\u0016J\u000e\u0010\u0003\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002J\u0014\u0010\u0005\u001a\u00020\u00002\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u0004J\u0014\u0010\u0006\u001a\u00020\u00002\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00020\u0004J\u0014\u0010\u0007\u001a\u00020\u00002\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00020\u0004J\u0006\u0010\t\u001a\u00020\bJj\u0010\u000e\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00022\b\b\u0002\u0010\u000b\u001a\u00020\n2\b\b\u0002\u0010\f\u001a\u00020\n2\b\b\u0002\u0010\r\u001a\u00020\n2\u000e\b\u0002\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u00042\u000e\b\u0002\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00020\u00042\u000e\b\u0002\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00020\u0004HÆ\u0001¢\u0006\u0004\b\u000e\u0010\u000fJ\t\u0010\u0010\u001a\u00020\nHÖ\u0001J\t\u0010\u0011\u001a\u00020\u0002HÖ\u0001J\u0013\u0010\u0014\u001a\u00020\u00132\b\u0010\u0012\u001a\u0004\u0018\u00010\u0001HÖ\u0003¨\u0006\u0017"}, d2 = {"Lcom/appodeal/consent/Vendor$Builder;", "", "", "id", "", "purposeIds", "featureIds", "legitimateInterestPurposeIds", "Lcom/appodeal/consent/Vendor;", "build", "", "name", "bundle", "policyUrl", "copy", "(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Lcom/appodeal/consent/Vendor$Builder;", "toString", "hashCode", "other", "", "equals", "<init>", "(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V", "apd_consent"}, k = 1, mv = {1, 6, 0})
    /* loaded from: classes2.dex */
    public static final class Builder {

        /* renamed from: a  reason: collision with root package name */
        public Integer f8065a;

        /* renamed from: b  reason: collision with root package name */
        public String f8066b;

        /* renamed from: c  reason: collision with root package name */
        public String f8067c;

        /* renamed from: d  reason: collision with root package name */
        public String f8068d;

        /* renamed from: e  reason: collision with root package name */
        public List<Integer> f8069e;

        /* renamed from: f  reason: collision with root package name */
        public List<Integer> f8070f;

        /* renamed from: g  reason: collision with root package name */
        public List<Integer> f8071g;

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public Builder(Integer num, String name, String bundle, String policyUrl) {
            this(num, name, bundle, policyUrl, null, null, null, 112, null);
            Intrinsics.checkNotNullParameter(name, "name");
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            Intrinsics.checkNotNullParameter(policyUrl, "policyUrl");
        }

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public Builder(Integer num, String name, String bundle, String policyUrl, List<Integer> purposeIds) {
            this(num, name, bundle, policyUrl, purposeIds, null, null, 96, null);
            Intrinsics.checkNotNullParameter(name, "name");
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            Intrinsics.checkNotNullParameter(policyUrl, "policyUrl");
            Intrinsics.checkNotNullParameter(purposeIds, "purposeIds");
        }

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public Builder(Integer num, String name, String bundle, String policyUrl, List<Integer> purposeIds, List<Integer> featureIds) {
            this(num, name, bundle, policyUrl, purposeIds, featureIds, null, 64, null);
            Intrinsics.checkNotNullParameter(name, "name");
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            Intrinsics.checkNotNullParameter(policyUrl, "policyUrl");
            Intrinsics.checkNotNullParameter(purposeIds, "purposeIds");
            Intrinsics.checkNotNullParameter(featureIds, "featureIds");
        }

        public Builder(Integer num, String name, String bundle, String policyUrl, List<Integer> purposeIds, List<Integer> featureIds, List<Integer> legitimateInterestPurposeIds) {
            Intrinsics.checkNotNullParameter(name, "name");
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            Intrinsics.checkNotNullParameter(policyUrl, "policyUrl");
            Intrinsics.checkNotNullParameter(purposeIds, "purposeIds");
            Intrinsics.checkNotNullParameter(featureIds, "featureIds");
            Intrinsics.checkNotNullParameter(legitimateInterestPurposeIds, "legitimateInterestPurposeIds");
            this.f8065a = num;
            this.f8066b = name;
            this.f8067c = bundle;
            this.f8068d = policyUrl;
            this.f8069e = purposeIds;
            this.f8070f = featureIds;
            this.f8071g = legitimateInterestPurposeIds;
        }

        public /* synthetic */ Builder(Integer num, String str, String str2, String str3, List list, List list2, List list3, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? null : num, str, str2, str3, (i & 16) != 0 ? CollectionsKt.emptyList() : list, (i & 32) != 0 ? CollectionsKt.emptyList() : list2, (i & 64) != 0 ? CollectionsKt.emptyList() : list3);
        }

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public Builder(String name, String bundle, String policyUrl) {
            this(null, name, bundle, policyUrl, null, null, null, 113, null);
            Intrinsics.checkNotNullParameter(name, "name");
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            Intrinsics.checkNotNullParameter(policyUrl, "policyUrl");
        }

        public static /* synthetic */ Builder copy$default(Builder builder, Integer num, String str, String str2, String str3, List list, List list2, List list3, int i, Object obj) {
            if ((i & 1) != 0) {
                num = builder.f8065a;
            }
            if ((i & 2) != 0) {
                str = builder.f8066b;
            }
            String str4 = str;
            if ((i & 4) != 0) {
                str2 = builder.f8067c;
            }
            String str5 = str2;
            if ((i & 8) != 0) {
                str3 = builder.f8068d;
            }
            String str6 = str3;
            List<Integer> list4 = list;
            if ((i & 16) != 0) {
                list4 = builder.f8069e;
            }
            List list5 = list4;
            List<Integer> list6 = list2;
            if ((i & 32) != 0) {
                list6 = builder.f8070f;
            }
            List list7 = list6;
            List<Integer> list8 = list3;
            if ((i & 64) != 0) {
                list8 = builder.f8071g;
            }
            return builder.copy(num, str4, str5, str6, list5, list7, list8);
        }

        public final Vendor build() {
            Integer num = this.f8065a;
            return new Vendor(num == null ? -this.f8067c.hashCode() : num.intValue(), this.f8066b, this.f8067c, this.f8068d, this.f8069e, this.f8070f, this.f8071g);
        }

        public final Builder copy(Integer num, String name, String bundle, String policyUrl, List<Integer> purposeIds, List<Integer> featureIds, List<Integer> legitimateInterestPurposeIds) {
            Intrinsics.checkNotNullParameter(name, "name");
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            Intrinsics.checkNotNullParameter(policyUrl, "policyUrl");
            Intrinsics.checkNotNullParameter(purposeIds, "purposeIds");
            Intrinsics.checkNotNullParameter(featureIds, "featureIds");
            Intrinsics.checkNotNullParameter(legitimateInterestPurposeIds, "legitimateInterestPurposeIds");
            return new Builder(num, name, bundle, policyUrl, purposeIds, featureIds, legitimateInterestPurposeIds);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof Builder) {
                Builder builder = (Builder) obj;
                return Intrinsics.areEqual(this.f8065a, builder.f8065a) && Intrinsics.areEqual(this.f8066b, builder.f8066b) && Intrinsics.areEqual(this.f8067c, builder.f8067c) && Intrinsics.areEqual(this.f8068d, builder.f8068d) && Intrinsics.areEqual(this.f8069e, builder.f8069e) && Intrinsics.areEqual(this.f8070f, builder.f8070f) && Intrinsics.areEqual(this.f8071g, builder.f8071g);
            }
            return false;
        }

        public final Builder featureIds(List<Integer> featureIds) {
            Intrinsics.checkNotNullParameter(featureIds, "featureIds");
            this.f8070f = featureIds;
            return this;
        }

        public int hashCode() {
            Integer num = this.f8065a;
            int hashCode = num == null ? 0 : num.hashCode();
            int hashCode2 = this.f8066b.hashCode();
            int hashCode3 = this.f8067c.hashCode();
            int hashCode4 = this.f8068d.hashCode();
            int hashCode5 = this.f8069e.hashCode();
            return this.f8071g.hashCode() + ((this.f8070f.hashCode() + ((hashCode5 + ((hashCode4 + ((hashCode3 + ((hashCode2 + (hashCode * 31)) * 31)) * 31)) * 31)) * 31)) * 31);
        }

        public final Builder id(int i) {
            this.f8065a = Integer.valueOf(i);
            return this;
        }

        public final Builder legitimateInterestPurposeIds(List<Integer> legitimateInterestPurposeIds) {
            Intrinsics.checkNotNullParameter(legitimateInterestPurposeIds, "legitimateInterestPurposeIds");
            this.f8071g = legitimateInterestPurposeIds;
            return this;
        }

        public final Builder purposeIds(List<Integer> purposeIds) {
            Intrinsics.checkNotNullParameter(purposeIds, "purposeIds");
            this.f8069e = purposeIds;
            return this;
        }

        public String toString() {
            return "Builder(id=" + this.f8065a + ", name=" + this.f8066b + ", bundle=" + this.f8067c + ", policyUrl=" + this.f8068d + ", purposeIds=" + this.f8069e + ", featureIds=" + this.f8070f + ", legitimateInterestPurposeIds=" + this.f8071g + ')';
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Vendor(int i, String name, String bundle, String policyUrl) {
        this(i, name, bundle, policyUrl, null, null, null, 112, null);
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(bundle, "bundle");
        Intrinsics.checkNotNullParameter(policyUrl, "policyUrl");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Vendor(int i, String name, String bundle, String policyUrl, List<Integer> purposeIds) {
        this(i, name, bundle, policyUrl, purposeIds, null, null, 96, null);
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(bundle, "bundle");
        Intrinsics.checkNotNullParameter(policyUrl, "policyUrl");
        Intrinsics.checkNotNullParameter(purposeIds, "purposeIds");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Vendor(int i, String name, String bundle, String policyUrl, List<Integer> purposeIds, List<Integer> featureIds) {
        this(i, name, bundle, policyUrl, purposeIds, featureIds, null, 64, null);
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(bundle, "bundle");
        Intrinsics.checkNotNullParameter(policyUrl, "policyUrl");
        Intrinsics.checkNotNullParameter(purposeIds, "purposeIds");
        Intrinsics.checkNotNullParameter(featureIds, "featureIds");
    }

    public Vendor(int i, String name, String bundle, String policyUrl, List<Integer> purposeIds, List<Integer> featureIds, List<Integer> legitimateInterestPurposeIds) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(bundle, "bundle");
        Intrinsics.checkNotNullParameter(policyUrl, "policyUrl");
        Intrinsics.checkNotNullParameter(purposeIds, "purposeIds");
        Intrinsics.checkNotNullParameter(featureIds, "featureIds");
        Intrinsics.checkNotNullParameter(legitimateInterestPurposeIds, "legitimateInterestPurposeIds");
        this.f8058a = i;
        this.f8059b = name;
        this.f8060c = bundle;
        this.f8061d = policyUrl;
        this.f8062e = purposeIds;
        this.f8063f = featureIds;
        this.f8064g = legitimateInterestPurposeIds;
    }

    public /* synthetic */ Vendor(int i, String str, String str2, String str3, List list, List list2, List list3, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, str, str2, str3, (i2 & 16) != 0 ? CollectionsKt.emptyList() : list, (i2 & 32) != 0 ? CollectionsKt.emptyList() : list2, (i2 & 64) != 0 ? CollectionsKt.emptyList() : list3);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public Vendor(org.json.JSONObject r10) {
        /*
            r9 = this;
            java.lang.String r0 = "json"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r10, r0)
            java.lang.String r0 = "apdId"
            int r2 = r10.optInt(r0)
            java.lang.String r0 = "name"
            java.lang.String r3 = r10.optString(r0)
            java.lang.String r0 = "json.optString(\"name\")"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r3, r0)
            java.lang.String r0 = "status"
            java.lang.String r4 = r10.optString(r0)
            java.lang.String r0 = "json.optString(\"status\")"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r4, r0)
            java.lang.String r0 = "policyUrl"
            java.lang.String r5 = r10.optString(r0)
            java.lang.String r0 = "json.optString(\"policyUrl\")"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r5, r0)
            java.lang.String r0 = "purposeIds"
            org.json.JSONArray r0 = r10.optJSONArray(r0)
            java.util.List r6 = com.appodeal.ads.modules.common.internal.ext.JsonExtKt.asList(r0)
            java.lang.String r0 = "featureIds"
            org.json.JSONArray r0 = r10.optJSONArray(r0)
            java.util.List r7 = com.appodeal.ads.modules.common.internal.ext.JsonExtKt.asList(r0)
            java.lang.String r0 = "legIntPurposeIds"
            org.json.JSONArray r10 = r10.optJSONArray(r0)
            java.util.List r8 = com.appodeal.ads.modules.common.internal.ext.JsonExtKt.asList(r10)
            r1 = r9
            r1.<init>(r2, r3, r4, r5, r6, r7, r8)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appodeal.consent.Vendor.<init>(org.json.JSONObject):void");
    }

    public final String getBundle() {
        return this.f8060c;
    }

    public final List<Integer> getFeatureIds() {
        return this.f8063f;
    }

    public final int getId() {
        return this.f8058a;
    }

    public final List<Integer> getLegitimateInterestPurposeIds() {
        return this.f8064g;
    }

    public final String getName() {
        return this.f8059b;
    }

    public final String getPolicyUrl() {
        return this.f8061d;
    }

    public final List<Integer> getPurposeIds() {
        return this.f8062e;
    }

    public final JSONObject toJson$apd_consent() {
        JSONObject jSONObject = new JSONObject();
        Integer valueOf = Integer.valueOf(getId());
        if (valueOf.intValue() == 0) {
            valueOf = null;
        }
        jSONObject.put("apdId", valueOf);
        String name = getName();
        if (name.length() <= 0) {
            name = null;
        }
        jSONObject.put("name", name);
        String bundle = getBundle();
        if (bundle.length() <= 0) {
            bundle = null;
        }
        jSONObject.put("status", bundle);
        String policyUrl = getPolicyUrl();
        if (policyUrl.length() <= 0) {
            policyUrl = null;
        }
        jSONObject.put("policyUrl", policyUrl);
        JSONArray jSONArray = new JSONArray((Collection) getPurposeIds());
        if (jSONArray.length() == 0) {
            jSONArray = null;
        }
        jSONObject.put("purposeIds", jSONArray);
        JSONArray jSONArray2 = new JSONArray((Collection) getFeatureIds());
        if (jSONArray2.length() == 0) {
            jSONArray2 = null;
        }
        jSONObject.put("featureIds", jSONArray2);
        JSONArray jSONArray3 = new JSONArray((Collection) getLegitimateInterestPurposeIds());
        jSONObject.put("legIntPurposeIds", jSONArray3.length() != 0 ? jSONArray3 : null);
        return jSONObject;
    }
}
