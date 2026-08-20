package com.appodeal.ads.modules.common.internal.service;

import com.ironsource.mediationsdk.adunit.data.DataKeys;
import com.onesignal.NotificationBundleProcessor;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0004\u0002\u0003\u0004\u0005\u0082\u0001\u0004\u0006\u0007\b\t¨\u0006\n"}, d2 = {"Lcom/appodeal/ads/modules/common/internal/service/ServiceData;", "", "Adjust", "AppsFlyer", "FacebookAnalytics", "Firebase", "Lcom/appodeal/ads/modules/common/internal/service/ServiceData$AppsFlyer;", "Lcom/appodeal/ads/modules/common/internal/service/ServiceData$Adjust;", "Lcom/appodeal/ads/modules/common/internal/service/ServiceData$FacebookAnalytics;", "Lcom/appodeal/ads/modules/common/internal/service/ServiceData$Firebase;", "apd_internal"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes2.dex */
public interface ServiceData {

    @Metadata(bv = {}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010$\n\u0002\u0010\u0000\n\u0002\b\b\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0012\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\t0\b¢\u0006\u0004\b\u000f\u0010\u0010R\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R#\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\t0\b8\u0006¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\r¨\u0006\u0011"}, d2 = {"Lcom/appodeal/ads/modules/common/internal/service/ServiceData$Adjust;", "Lcom/appodeal/ads/modules/common/internal/service/ServiceData;", "", NotificationBundleProcessor.PUSH_ADDITIONAL_DATA_KEY, "Ljava/lang/String;", "getAttributionId", "()Ljava/lang/String;", "attributionId", "", "", "b", "Ljava/util/Map;", "getConversionData", "()Ljava/util/Map;", "conversionData", "<init>", "(Ljava/lang/String;Ljava/util/Map;)V", "apd_internal"}, k = 1, mv = {1, 6, 0})
    /* loaded from: classes2.dex */
    public static final class Adjust implements ServiceData {

        /* renamed from: a  reason: collision with root package name */
        public final String f6896a;

        /* renamed from: b  reason: collision with root package name */
        public final Map<String, Object> f6897b;

        public Adjust(String attributionId, Map<String, ? extends Object> conversionData) {
            Intrinsics.checkNotNullParameter(attributionId, "attributionId");
            Intrinsics.checkNotNullParameter(conversionData, "conversionData");
            this.f6896a = attributionId;
            this.f6897b = conversionData;
        }

        public final String getAttributionId() {
            return this.f6896a;
        }

        public final Map<String, Object> getConversionData() {
            return this.f6897b;
        }
    }

    @Metadata(bv = {}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010$\n\u0002\u0010\u0000\n\u0002\b\b\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0012\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\t0\b¢\u0006\u0004\b\u000f\u0010\u0010R\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R#\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\t0\b8\u0006¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\r¨\u0006\u0011"}, d2 = {"Lcom/appodeal/ads/modules/common/internal/service/ServiceData$AppsFlyer;", "Lcom/appodeal/ads/modules/common/internal/service/ServiceData;", "", NotificationBundleProcessor.PUSH_ADDITIONAL_DATA_KEY, "Ljava/lang/String;", "getAttributionId", "()Ljava/lang/String;", "attributionId", "", "", "b", "Ljava/util/Map;", "getConversionData", "()Ljava/util/Map;", "conversionData", "<init>", "(Ljava/lang/String;Ljava/util/Map;)V", "apd_internal"}, k = 1, mv = {1, 6, 0})
    /* loaded from: classes2.dex */
    public static final class AppsFlyer implements ServiceData {

        /* renamed from: a  reason: collision with root package name */
        public final String f6898a;

        /* renamed from: b  reason: collision with root package name */
        public final Map<String, Object> f6899b;

        public AppsFlyer(String attributionId, Map<String, ? extends Object> conversionData) {
            Intrinsics.checkNotNullParameter(attributionId, "attributionId");
            Intrinsics.checkNotNullParameter(conversionData, "conversionData");
            this.f6898a = attributionId;
            this.f6899b = conversionData;
        }

        public final String getAttributionId() {
            return this.f6898a;
        }

        public final Map<String, Object> getConversionData() {
            return this.f6899b;
        }
    }

    @Metadata(bv = {}, d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\n\b\u0086\b\u0018\u00002\u00020\u0001B\u0019\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002¢\u0006\u0004\b\u0015\u0010\u0016J\u000b\u0010\u0003\u001a\u0004\u0018\u00010\u0002HÆ\u0003J\t\u0010\u0004\u001a\u00020\u0002HÆ\u0003J\u001f\u0010\u0007\u001a\u00020\u00002\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00022\b\b\u0002\u0010\u0006\u001a\u00020\u0002HÆ\u0001J\t\u0010\b\u001a\u00020\u0002HÖ\u0001J\t\u0010\n\u001a\u00020\tHÖ\u0001J\u0013\u0010\u000e\u001a\u00020\r2\b\u0010\f\u001a\u0004\u0018\u00010\u000bHÖ\u0003R\u0019\u0010\u0005\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012R\u0017\u0010\u0006\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0013\u0010\u0010\u001a\u0004\b\u0014\u0010\u0012¨\u0006\u0017"}, d2 = {"Lcom/appodeal/ads/modules/common/internal/service/ServiceData$FacebookAnalytics;", "Lcom/appodeal/ads/modules/common/internal/service/ServiceData;", "", "component1", "component2", DataKeys.USER_ID, "appId", "copy", "toString", "", "hashCode", "", "other", "", "equals", NotificationBundleProcessor.PUSH_ADDITIONAL_DATA_KEY, "Ljava/lang/String;", "getUserId", "()Ljava/lang/String;", "b", "getAppId", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "apd_internal"}, k = 1, mv = {1, 6, 0})
    /* loaded from: classes2.dex */
    public static final class FacebookAnalytics implements ServiceData {

        /* renamed from: a  reason: collision with root package name */
        public final String f6900a;

        /* renamed from: b  reason: collision with root package name */
        public final String f6901b;

        public FacebookAnalytics(String str, String appId) {
            Intrinsics.checkNotNullParameter(appId, "appId");
            this.f6900a = str;
            this.f6901b = appId;
        }

        public static /* synthetic */ FacebookAnalytics copy$default(FacebookAnalytics facebookAnalytics, String str, String str2, int i, Object obj) {
            if ((i & 1) != 0) {
                str = facebookAnalytics.f6900a;
            }
            if ((i & 2) != 0) {
                str2 = facebookAnalytics.f6901b;
            }
            return facebookAnalytics.copy(str, str2);
        }

        public final String component1() {
            return this.f6900a;
        }

        public final String component2() {
            return this.f6901b;
        }

        public final FacebookAnalytics copy(String str, String appId) {
            Intrinsics.checkNotNullParameter(appId, "appId");
            return new FacebookAnalytics(str, appId);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof FacebookAnalytics) {
                FacebookAnalytics facebookAnalytics = (FacebookAnalytics) obj;
                return Intrinsics.areEqual(this.f6900a, facebookAnalytics.f6900a) && Intrinsics.areEqual(this.f6901b, facebookAnalytics.f6901b);
            }
            return false;
        }

        public final String getAppId() {
            return this.f6901b;
        }

        public final String getUserId() {
            return this.f6900a;
        }

        public int hashCode() {
            String str = this.f6900a;
            return this.f6901b.hashCode() + ((str == null ? 0 : str.hashCode()) * 31);
        }

        public String toString() {
            return "FacebookAnalytics(userId=" + ((Object) this.f6900a) + ", appId=" + this.f6901b + ')';
        }
    }

    @Metadata(bv = {}, d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\b\u0005\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u000e\b\u0086\b\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00020\u0004¢\u0006\u0004\b\u001a\u0010\u001bJ\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\u000f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u0004HÆ\u0003J#\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0006\u001a\u00020\u00022\u000e\b\u0002\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00020\u0004HÆ\u0001J\t\u0010\t\u001a\u00020\u0002HÖ\u0001J\t\u0010\u000b\u001a\u00020\nHÖ\u0001J\u0013\u0010\u000f\u001a\u00020\u000e2\b\u0010\r\u001a\u0004\u0018\u00010\fHÖ\u0003R\u0017\u0010\u0006\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013R\u001d\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017R\u0013\u0010\u0019\u001a\u0004\u0018\u00010\u00028F¢\u0006\u0006\u001a\u0004\b\u0018\u0010\u0013¨\u0006\u001c"}, d2 = {"Lcom/appodeal/ads/modules/common/internal/service/ServiceData$Firebase;", "Lcom/appodeal/ads/modules/common/internal/service/ServiceData;", "", "component1", "", "component2", "appInstanceId", "keywords", "copy", "toString", "", "hashCode", "", "other", "", "equals", NotificationBundleProcessor.PUSH_ADDITIONAL_DATA_KEY, "Ljava/lang/String;", "getAppInstanceId", "()Ljava/lang/String;", "b", "Ljava/util/List;", "getKeywords", "()Ljava/util/List;", "getKeywordsAsString", "keywordsAsString", "<init>", "(Ljava/lang/String;Ljava/util/List;)V", "apd_internal"}, k = 1, mv = {1, 6, 0})
    /* loaded from: classes2.dex */
    public static final class Firebase implements ServiceData {

        /* renamed from: a  reason: collision with root package name */
        public final String f6902a;

        /* renamed from: b  reason: collision with root package name */
        public final List<String> f6903b;

        public Firebase(String appInstanceId, List<String> keywords) {
            Intrinsics.checkNotNullParameter(appInstanceId, "appInstanceId");
            Intrinsics.checkNotNullParameter(keywords, "keywords");
            this.f6902a = appInstanceId;
            this.f6903b = keywords;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ Firebase copy$default(Firebase firebase, String str, List list, int i, Object obj) {
            if ((i & 1) != 0) {
                str = firebase.f6902a;
            }
            if ((i & 2) != 0) {
                list = firebase.f6903b;
            }
            return firebase.copy(str, list);
        }

        public final String component1() {
            return this.f6902a;
        }

        public final List<String> component2() {
            return this.f6903b;
        }

        public final Firebase copy(String appInstanceId, List<String> keywords) {
            Intrinsics.checkNotNullParameter(appInstanceId, "appInstanceId");
            Intrinsics.checkNotNullParameter(keywords, "keywords");
            return new Firebase(appInstanceId, keywords);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof Firebase) {
                Firebase firebase = (Firebase) obj;
                return Intrinsics.areEqual(this.f6902a, firebase.f6902a) && Intrinsics.areEqual(this.f6903b, firebase.f6903b);
            }
            return false;
        }

        public final String getAppInstanceId() {
            return this.f6902a;
        }

        public final List<String> getKeywords() {
            return this.f6903b;
        }

        public final String getKeywordsAsString() {
            String joinToString$default = CollectionsKt.joinToString$default(this.f6903b, ", ", null, null, 0, null, null, 62, null);
            if (!StringsKt.isBlank(joinToString$default)) {
                return joinToString$default;
            }
            return null;
        }

        public int hashCode() {
            return this.f6903b.hashCode() + (this.f6902a.hashCode() * 31);
        }

        public String toString() {
            return "Firebase(appInstanceId=" + this.f6902a + ", keywords=" + this.f6903b + ')';
        }
    }
}
