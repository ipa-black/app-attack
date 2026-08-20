package com.appodeal.ads.modules.common.internal.service;

import android.content.Context;
import com.appnext.base.b.f;
import com.appodeal.ads.modules.common.internal.data.ApplicationData;
import com.appodeal.ads.modules.common.internal.data.DeviceData;
import com.appodeal.ads.modules.common.internal.data.UserPersonalData;
import com.explorestack.iab.mraid.j;
import com.explorestack.iab.utils.m;
import com.ironsource.sdk.c.d;
import com.onesignal.NotificationBundleProcessor;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0006\u000b\f\r\u000e\u000f\u0010R\u0012\u0010\u0002\u001a\u00020\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005R\u0012\u0010\u0006\u001a\u00020\u0007X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0006\u0010\bR\u0012\u0010\t\u001a\u00020\u0007X¦\u0004¢\u0006\u0006\u001a\u0004\b\t\u0010\bR\u0012\u0010\n\u001a\u00020\u0007X¦\u0004¢\u0006\u0006\u001a\u0004\b\n\u0010\b\u0082\u0001\u0006\u0011\u0012\u0013\u0014\u0015\u0016¨\u0006\u0017"}, d2 = {"Lcom/appodeal/ads/modules/common/internal/service/ServiceOptions;", "", "connectorCallback", "Lcom/appodeal/ads/modules/common/internal/service/ConnectorCallback;", "getConnectorCallback", "()Lcom/appodeal/ads/modules/common/internal/service/ConnectorCallback;", "isEventTrackingEnabled", "", "()Z", "isLoggingEnabled", "isRevenueTrackingEnabled", "Adjust", "Appsflyer", "FacebookAnalytics", "Firebase", "SentryAnalytics", "StackAnalytics", "Lcom/appodeal/ads/modules/common/internal/service/ServiceOptions$Appsflyer;", "Lcom/appodeal/ads/modules/common/internal/service/ServiceOptions$Adjust;", "Lcom/appodeal/ads/modules/common/internal/service/ServiceOptions$FacebookAnalytics;", "Lcom/appodeal/ads/modules/common/internal/service/ServiceOptions$Firebase;", "Lcom/appodeal/ads/modules/common/internal/service/ServiceOptions$StackAnalytics;", "Lcom/appodeal/ads/modules/common/internal/service/ServiceOptions$SentryAnalytics;", "apd_internal"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes2.dex */
public interface ServiceOptions {

    @Metadata(bv = {}, d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010$\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001Bk\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\r\u001a\u00020\b\u0012\u0006\u0010\u0010\u001a\u00020\b\u0012\u0012\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\b0\u0011\u0012\u0006\u0010\u0019\u001a\u00020\b\u0012\u0006\u0010\u001f\u001a\u00020\u001a\u0012\u0006\u0010%\u001a\u00020 \u0012\u0006\u0010)\u001a\u00020&\u0012\u0006\u0010,\u001a\u00020&\u0012\u0006\u0010.\u001a\u00020&\u0012\u0006\u00104\u001a\u00020/¢\u0006\u0004\b5\u00106R\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0017\u0010\r\u001a\u00020\b8\u0006¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\fR\u0017\u0010\u0010\u001a\u00020\b8\u0006¢\u0006\f\n\u0004\b\u000e\u0010\n\u001a\u0004\b\u000f\u0010\fR#\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\b0\u00118\u0006¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015R\u0017\u0010\u0019\u001a\u00020\b8\u0006¢\u0006\f\n\u0004\b\u0017\u0010\n\u001a\u0004\b\u0018\u0010\fR\u0017\u0010\u001f\u001a\u00020\u001a8\u0006¢\u0006\f\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001d\u0010\u001eR\u0017\u0010%\u001a\u00020 8\u0006¢\u0006\f\n\u0004\b!\u0010\"\u001a\u0004\b#\u0010$R\u001a\u0010)\u001a\u00020&8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b'\u0010(\u001a\u0004\b)\u0010*R\u001a\u0010,\u001a\u00020&8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b+\u0010(\u001a\u0004\b,\u0010*R\u001a\u0010.\u001a\u00020&8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b-\u0010(\u001a\u0004\b.\u0010*R\u001a\u00104\u001a\u00020/8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b0\u00101\u001a\u0004\b2\u00103¨\u00067"}, d2 = {"Lcom/appodeal/ads/modules/common/internal/service/ServiceOptions$Adjust;", "Lcom/appodeal/ads/modules/common/internal/service/ServiceOptions;", "Landroid/content/Context;", NotificationBundleProcessor.PUSH_ADDITIONAL_DATA_KEY, "Landroid/content/Context;", "getContext", "()Landroid/content/Context;", "context", "", "b", "Ljava/lang/String;", "getAppToken", "()Ljava/lang/String;", "appToken", "c", "getAdId", "adId", "", d.f11571a, "Ljava/util/Map;", "getEventTokens", "()Ljava/util/Map;", "eventTokens", "e", "getEnvironment", "environment", "Lcom/appodeal/ads/modules/common/internal/service/InitializationMode;", f.TAG, "Lcom/appodeal/ads/modules/common/internal/service/InitializationMode;", "getMode", "()Lcom/appodeal/ads/modules/common/internal/service/InitializationMode;", "mode", "", "g", "J", "getInitializationTimeout", "()J", "initializationTimeout", "", "h", "Z", "isEventTrackingEnabled", "()Z", "i", "isRevenueTrackingEnabled", j.f9356g, "isLoggingEnabled", "Lcom/appodeal/ads/modules/common/internal/service/ConnectorCallback;", "k", "Lcom/appodeal/ads/modules/common/internal/service/ConnectorCallback;", "getConnectorCallback", "()Lcom/appodeal/ads/modules/common/internal/service/ConnectorCallback;", "connectorCallback", "<init>", "(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/appodeal/ads/modules/common/internal/service/InitializationMode;JZZZLcom/appodeal/ads/modules/common/internal/service/ConnectorCallback;)V", "apd_internal"}, k = 1, mv = {1, 6, 0})
    /* loaded from: classes2.dex */
    public static final class Adjust implements ServiceOptions {

        /* renamed from: a  reason: collision with root package name */
        public final Context f6907a;

        /* renamed from: b  reason: collision with root package name */
        public final String f6908b;

        /* renamed from: c  reason: collision with root package name */
        public final String f6909c;

        /* renamed from: d  reason: collision with root package name */
        public final Map<String, String> f6910d;

        /* renamed from: e  reason: collision with root package name */
        public final String f6911e;

        /* renamed from: f  reason: collision with root package name */
        public final InitializationMode f6912f;

        /* renamed from: g  reason: collision with root package name */
        public final long f6913g;

        /* renamed from: h  reason: collision with root package name */
        public final boolean f6914h;
        public final boolean i;
        public final boolean j;
        public final ConnectorCallback k;

        public Adjust(Context context, String appToken, String adId, Map<String, String> eventTokens, String environment, InitializationMode mode, long j, boolean z, boolean z2, boolean z3, ConnectorCallback connectorCallback) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(appToken, "appToken");
            Intrinsics.checkNotNullParameter(adId, "adId");
            Intrinsics.checkNotNullParameter(eventTokens, "eventTokens");
            Intrinsics.checkNotNullParameter(environment, "environment");
            Intrinsics.checkNotNullParameter(mode, "mode");
            Intrinsics.checkNotNullParameter(connectorCallback, "connectorCallback");
            this.f6907a = context;
            this.f6908b = appToken;
            this.f6909c = adId;
            this.f6910d = eventTokens;
            this.f6911e = environment;
            this.f6912f = mode;
            this.f6913g = j;
            this.f6914h = z;
            this.i = z2;
            this.j = z3;
            this.k = connectorCallback;
        }

        public final String getAdId() {
            return this.f6909c;
        }

        public final String getAppToken() {
            return this.f6908b;
        }

        @Override // com.appodeal.ads.modules.common.internal.service.ServiceOptions
        public ConnectorCallback getConnectorCallback() {
            return this.k;
        }

        public final Context getContext() {
            return this.f6907a;
        }

        public final String getEnvironment() {
            return this.f6911e;
        }

        public final Map<String, String> getEventTokens() {
            return this.f6910d;
        }

        public final long getInitializationTimeout() {
            return this.f6913g;
        }

        public final InitializationMode getMode() {
            return this.f6912f;
        }

        @Override // com.appodeal.ads.modules.common.internal.service.ServiceOptions
        public boolean isEventTrackingEnabled() {
            return this.f6914h;
        }

        @Override // com.appodeal.ads.modules.common.internal.service.ServiceOptions
        public boolean isLoggingEnabled() {
            return this.j;
        }

        @Override // com.appodeal.ads.modules.common.internal.service.ServiceOptions
        public boolean isRevenueTrackingEnabled() {
            return this.i;
        }
    }

    @Metadata(bv = {}, d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B]\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\r\u001a\u00020\b\u0012\u0006\u0010\u0010\u001a\u00020\b\u0012\u0006\u0010\u0016\u001a\u00020\u0011\u0012\f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\b0\u0017\u0012\u0006\u0010\"\u001a\u00020\u001d\u0012\u0006\u0010&\u001a\u00020#\u0012\u0006\u0010)\u001a\u00020#\u0012\u0006\u0010+\u001a\u00020#\u0012\u0006\u00101\u001a\u00020,¢\u0006\u0004\b2\u00103R\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0017\u0010\r\u001a\u00020\b8\u0006¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\fR\u0017\u0010\u0010\u001a\u00020\b8\u0006¢\u0006\f\n\u0004\b\u000e\u0010\n\u001a\u0004\b\u000f\u0010\fR\u0017\u0010\u0016\u001a\u00020\u00118\u0006¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015R\u001d\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\b0\u00178\u0006¢\u0006\f\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001bR\u0017\u0010\"\u001a\u00020\u001d8\u0006¢\u0006\f\n\u0004\b\u001e\u0010\u001f\u001a\u0004\b \u0010!R\u001a\u0010&\u001a\u00020#8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b$\u0010%\u001a\u0004\b&\u0010'R\u001a\u0010)\u001a\u00020#8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b(\u0010%\u001a\u0004\b)\u0010'R\u001a\u0010+\u001a\u00020#8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b*\u0010%\u001a\u0004\b+\u0010'R\u001a\u00101\u001a\u00020,8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b-\u0010.\u001a\u0004\b/\u00100¨\u00064"}, d2 = {"Lcom/appodeal/ads/modules/common/internal/service/ServiceOptions$Appsflyer;", "Lcom/appodeal/ads/modules/common/internal/service/ServiceOptions;", "Landroid/content/Context;", NotificationBundleProcessor.PUSH_ADDITIONAL_DATA_KEY, "Landroid/content/Context;", "getContext", "()Landroid/content/Context;", "context", "", "b", "Ljava/lang/String;", "getAppId", "()Ljava/lang/String;", "appId", "c", "getDevKey", "devKey", "Lcom/appodeal/ads/modules/common/internal/service/InitializationMode;", d.f11571a, "Lcom/appodeal/ads/modules/common/internal/service/InitializationMode;", "getMode", "()Lcom/appodeal/ads/modules/common/internal/service/InitializationMode;", "mode", "", "e", "Ljava/util/List;", "getConversionKeys", "()Ljava/util/List;", "conversionKeys", "", f.TAG, "J", "getInitializationTimeout", "()J", "initializationTimeout", "", "g", "Z", "isEventTrackingEnabled", "()Z", "h", "isRevenueTrackingEnabled", "i", "isLoggingEnabled", "Lcom/appodeal/ads/modules/common/internal/service/ConnectorCallback;", j.f9356g, "Lcom/appodeal/ads/modules/common/internal/service/ConnectorCallback;", "getConnectorCallback", "()Lcom/appodeal/ads/modules/common/internal/service/ConnectorCallback;", "connectorCallback", "<init>", "(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/appodeal/ads/modules/common/internal/service/InitializationMode;Ljava/util/List;JZZZLcom/appodeal/ads/modules/common/internal/service/ConnectorCallback;)V", "apd_internal"}, k = 1, mv = {1, 6, 0})
    /* loaded from: classes2.dex */
    public static final class Appsflyer implements ServiceOptions {

        /* renamed from: a  reason: collision with root package name */
        public final Context f6915a;

        /* renamed from: b  reason: collision with root package name */
        public final String f6916b;

        /* renamed from: c  reason: collision with root package name */
        public final String f6917c;

        /* renamed from: d  reason: collision with root package name */
        public final InitializationMode f6918d;

        /* renamed from: e  reason: collision with root package name */
        public final List<String> f6919e;

        /* renamed from: f  reason: collision with root package name */
        public final long f6920f;

        /* renamed from: g  reason: collision with root package name */
        public final boolean f6921g;

        /* renamed from: h  reason: collision with root package name */
        public final boolean f6922h;
        public final boolean i;
        public final ConnectorCallback j;

        public Appsflyer(Context context, String appId, String devKey, InitializationMode mode, List<String> conversionKeys, long j, boolean z, boolean z2, boolean z3, ConnectorCallback connectorCallback) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(appId, "appId");
            Intrinsics.checkNotNullParameter(devKey, "devKey");
            Intrinsics.checkNotNullParameter(mode, "mode");
            Intrinsics.checkNotNullParameter(conversionKeys, "conversionKeys");
            Intrinsics.checkNotNullParameter(connectorCallback, "connectorCallback");
            this.f6915a = context;
            this.f6916b = appId;
            this.f6917c = devKey;
            this.f6918d = mode;
            this.f6919e = conversionKeys;
            this.f6920f = j;
            this.f6921g = z;
            this.f6922h = z2;
            this.i = z3;
            this.j = connectorCallback;
        }

        public final String getAppId() {
            return this.f6916b;
        }

        @Override // com.appodeal.ads.modules.common.internal.service.ServiceOptions
        public ConnectorCallback getConnectorCallback() {
            return this.j;
        }

        public final Context getContext() {
            return this.f6915a;
        }

        public final List<String> getConversionKeys() {
            return this.f6919e;
        }

        public final String getDevKey() {
            return this.f6917c;
        }

        public final long getInitializationTimeout() {
            return this.f6920f;
        }

        public final InitializationMode getMode() {
            return this.f6918d;
        }

        @Override // com.appodeal.ads.modules.common.internal.service.ServiceOptions
        public boolean isEventTrackingEnabled() {
            return this.f6921g;
        }

        @Override // com.appodeal.ads.modules.common.internal.service.ServiceOptions
        public boolean isLoggingEnabled() {
            return this.i;
        }

        @Override // com.appodeal.ads.modules.common.internal.service.ServiceOptions
        public boolean isRevenueTrackingEnabled() {
            return this.f6922h;
        }
    }

    @Metadata(bv = {}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B7\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\u000b\u001a\u00020\b\u0012\u0006\u0010\u000e\u001a\u00020\b\u0012\u0006\u0010\u0010\u001a\u00020\b\u0012\u0006\u0010\u0012\u001a\u00020\b\u0012\u0006\u0010\u0018\u001a\u00020\u0013¢\u0006\u0004\b\u0019\u0010\u001aR\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0017\u0010\u000b\u001a\u00020\b8\u0006¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\fR\u001a\u0010\u000e\u001a\u00020\b8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\r\u0010\n\u001a\u0004\b\u000e\u0010\fR\u001a\u0010\u0010\u001a\u00020\b8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u000f\u0010\n\u001a\u0004\b\u0010\u0010\fR\u001a\u0010\u0012\u001a\u00020\b8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0011\u0010\n\u001a\u0004\b\u0012\u0010\fR\u001a\u0010\u0018\u001a\u00020\u00138\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017¨\u0006\u001b"}, d2 = {"Lcom/appodeal/ads/modules/common/internal/service/ServiceOptions$FacebookAnalytics;", "Lcom/appodeal/ads/modules/common/internal/service/ServiceOptions;", "Landroid/content/Context;", NotificationBundleProcessor.PUSH_ADDITIONAL_DATA_KEY, "Landroid/content/Context;", "getContext", "()Landroid/content/Context;", "context", "", "b", "Z", "isDebugEnabled", "()Z", "c", "isEventTrackingEnabled", d.f11571a, "isRevenueTrackingEnabled", "e", "isLoggingEnabled", "Lcom/appodeal/ads/modules/common/internal/service/ConnectorCallback;", f.TAG, "Lcom/appodeal/ads/modules/common/internal/service/ConnectorCallback;", "getConnectorCallback", "()Lcom/appodeal/ads/modules/common/internal/service/ConnectorCallback;", "connectorCallback", "<init>", "(Landroid/content/Context;ZZZZLcom/appodeal/ads/modules/common/internal/service/ConnectorCallback;)V", "apd_internal"}, k = 1, mv = {1, 6, 0})
    /* loaded from: classes2.dex */
    public static final class FacebookAnalytics implements ServiceOptions {

        /* renamed from: a  reason: collision with root package name */
        public final Context f6923a;

        /* renamed from: b  reason: collision with root package name */
        public final boolean f6924b;

        /* renamed from: c  reason: collision with root package name */
        public final boolean f6925c;

        /* renamed from: d  reason: collision with root package name */
        public final boolean f6926d;

        /* renamed from: e  reason: collision with root package name */
        public final boolean f6927e;

        /* renamed from: f  reason: collision with root package name */
        public final ConnectorCallback f6928f;

        public FacebookAnalytics(Context context, boolean z, boolean z2, boolean z3, boolean z4, ConnectorCallback connectorCallback) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(connectorCallback, "connectorCallback");
            this.f6923a = context;
            this.f6924b = z;
            this.f6925c = z2;
            this.f6926d = z3;
            this.f6927e = z4;
            this.f6928f = connectorCallback;
        }

        @Override // com.appodeal.ads.modules.common.internal.service.ServiceOptions
        public ConnectorCallback getConnectorCallback() {
            return this.f6928f;
        }

        public final Context getContext() {
            return this.f6923a;
        }

        public final boolean isDebugEnabled() {
            return this.f6924b;
        }

        @Override // com.appodeal.ads.modules.common.internal.service.ServiceOptions
        public boolean isEventTrackingEnabled() {
            return this.f6925c;
        }

        @Override // com.appodeal.ads.modules.common.internal.service.ServiceOptions
        public boolean isLoggingEnabled() {
            return this.f6927e;
        }

        @Override // com.appodeal.ads.modules.common.internal.service.ServiceOptions
        public boolean isRevenueTrackingEnabled() {
            return this.f6926d;
        }
    }

    @Metadata(bv = {}, d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u0000 62\u00020\u0001:\u00016B_\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\b\u0010\r\u001a\u0004\u0018\u00010\b\u0012\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000e\u0012\u0006\u0010\u0019\u001a\u00020\u000f\u0012\u0006\u0010\u001f\u001a\u00020\u001a\u0012\u0006\u0010$\u001a\u00020\b\u0012\u0006\u0010(\u001a\u00020%\u0012\u0006\u0010+\u001a\u00020%\u0012\u0006\u0010-\u001a\u00020%\u0012\u0006\u00103\u001a\u00020.¢\u0006\u0004\b4\u00105R\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0019\u0010\r\u001a\u0004\u0018\u00010\b8\u0006¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\fR\u001d\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000e8\u0006¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013R\u0017\u0010\u0019\u001a\u00020\u000f8\u0006¢\u0006\f\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018R\u0017\u0010\u001f\u001a\u00020\u001a8\u0006¢\u0006\f\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001d\u0010\u001eR\u0017\u0010$\u001a\u00020\b8\u0006¢\u0006\f\n\u0004\b \u0010!\u001a\u0004\b\"\u0010#R\u001a\u0010(\u001a\u00020%8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b&\u0010'\u001a\u0004\b(\u0010)R\u001a\u0010+\u001a\u00020%8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b*\u0010'\u001a\u0004\b+\u0010)R\u001a\u0010-\u001a\u00020%8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b,\u0010'\u001a\u0004\b-\u0010)R\u001a\u00103\u001a\u00020.8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b/\u00100\u001a\u0004\b1\u00102¨\u00067"}, d2 = {"Lcom/appodeal/ads/modules/common/internal/service/ServiceOptions$Firebase;", "Lcom/appodeal/ads/modules/common/internal/service/ServiceOptions;", "Landroid/content/Context;", NotificationBundleProcessor.PUSH_ADDITIONAL_DATA_KEY, "Landroid/content/Context;", "getContext", "()Landroid/content/Context;", "context", "", "b", "Ljava/lang/Long;", "getExpirationDuration", "()Ljava/lang/Long;", "expirationDuration", "", "", "c", "Ljava/util/List;", "getConfigKeys", "()Ljava/util/List;", "configKeys", d.f11571a, "Ljava/lang/String;", "getAdRevenueKey", "()Ljava/lang/String;", "adRevenueKey", "Lcom/appodeal/ads/modules/common/internal/service/InitializationMode;", "e", "Lcom/appodeal/ads/modules/common/internal/service/InitializationMode;", "getMode", "()Lcom/appodeal/ads/modules/common/internal/service/InitializationMode;", "mode", f.TAG, "J", "getInitializationTimeout", "()J", "initializationTimeout", "", "g", "Z", "isEventTrackingEnabled", "()Z", "h", "isRevenueTrackingEnabled", "i", "isLoggingEnabled", "Lcom/appodeal/ads/modules/common/internal/service/ConnectorCallback;", j.f9356g, "Lcom/appodeal/ads/modules/common/internal/service/ConnectorCallback;", "getConnectorCallback", "()Lcom/appodeal/ads/modules/common/internal/service/ConnectorCallback;", "connectorCallback", "<init>", "(Landroid/content/Context;Ljava/lang/Long;Ljava/util/List;Ljava/lang/String;Lcom/appodeal/ads/modules/common/internal/service/InitializationMode;JZZZLcom/appodeal/ads/modules/common/internal/service/ConnectorCallback;)V", "Companion", "apd_internal"}, k = 1, mv = {1, 6, 0})
    /* loaded from: classes2.dex */
    public static final class Firebase implements ServiceOptions {
        public static final Companion Companion = new Companion(null);
        public static final String DefaultAdRevenueKey = "custom_ad_impression";

        /* renamed from: a  reason: collision with root package name */
        public final Context f6929a;

        /* renamed from: b  reason: collision with root package name */
        public final Long f6930b;

        /* renamed from: c  reason: collision with root package name */
        public final List<String> f6931c;

        /* renamed from: d  reason: collision with root package name */
        public final String f6932d;

        /* renamed from: e  reason: collision with root package name */
        public final InitializationMode f6933e;

        /* renamed from: f  reason: collision with root package name */
        public final long f6934f;

        /* renamed from: g  reason: collision with root package name */
        public final boolean f6935g;

        /* renamed from: h  reason: collision with root package name */
        public final boolean f6936h;
        public final boolean i;
        public final ConnectorCallback j;

        @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/appodeal/ads/modules/common/internal/service/ServiceOptions$Firebase$Companion;", "", "", "DefaultAdRevenueKey", "Ljava/lang/String;", "apd_internal"}, k = 1, mv = {1, 6, 0})
        /* loaded from: classes2.dex */
        public static final class Companion {
            public Companion() {
            }

            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }
        }

        public Firebase(Context context, Long l, List<String> configKeys, String adRevenueKey, InitializationMode mode, long j, boolean z, boolean z2, boolean z3, ConnectorCallback connectorCallback) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(configKeys, "configKeys");
            Intrinsics.checkNotNullParameter(adRevenueKey, "adRevenueKey");
            Intrinsics.checkNotNullParameter(mode, "mode");
            Intrinsics.checkNotNullParameter(connectorCallback, "connectorCallback");
            this.f6929a = context;
            this.f6930b = l;
            this.f6931c = configKeys;
            this.f6932d = adRevenueKey;
            this.f6933e = mode;
            this.f6934f = j;
            this.f6935g = z;
            this.f6936h = z2;
            this.i = z3;
            this.j = connectorCallback;
        }

        public final String getAdRevenueKey() {
            return this.f6932d;
        }

        public final List<String> getConfigKeys() {
            return this.f6931c;
        }

        @Override // com.appodeal.ads.modules.common.internal.service.ServiceOptions
        public ConnectorCallback getConnectorCallback() {
            return this.j;
        }

        public final Context getContext() {
            return this.f6929a;
        }

        public final Long getExpirationDuration() {
            return this.f6930b;
        }

        public final long getInitializationTimeout() {
            return this.f6934f;
        }

        public final InitializationMode getMode() {
            return this.f6933e;
        }

        @Override // com.appodeal.ads.modules.common.internal.service.ServiceOptions
        public boolean isEventTrackingEnabled() {
            return this.f6935g;
        }

        @Override // com.appodeal.ads.modules.common.internal.service.ServiceOptions
        public boolean isLoggingEnabled() {
            return this.i;
        }

        @Override // com.appodeal.ads.modules.common.internal.service.ServiceOptions
        public boolean isRevenueTrackingEnabled() {
            return this.f6936h;
        }
    }

    @Metadata(bv = {}, d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B}\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\r\u001a\u00020\b\u0012\u0006\u0010\u0010\u001a\u00020\b\u0012\u0006\u0010\u0016\u001a\u00020\u0011\u0012\u0006\u0010\u0018\u001a\u00020\u0011\u0012\u0006\u0010\u001b\u001a\u00020\b\u0012\u0006\u0010\u001d\u001a\u00020\u0011\u0012\u0006\u0010#\u001a\u00020\u001e\u0012\u0006\u0010)\u001a\u00020$\u0012\u0006\u0010/\u001a\u00020*\u0012\b\b\u0002\u00101\u001a\u00020\u0011\u0012\b\b\u0002\u00103\u001a\u00020\u0011\u0012\b\b\u0002\u00105\u001a\u00020\u0011\u0012\u0006\u0010;\u001a\u000206¢\u0006\u0004\b<\u0010=R\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0017\u0010\r\u001a\u00020\b8\u0006¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\fR\u0017\u0010\u0010\u001a\u00020\b8\u0006¢\u0006\f\n\u0004\b\u000e\u0010\n\u001a\u0004\b\u000f\u0010\fR\u0017\u0010\u0016\u001a\u00020\u00118\u0006¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015R\u0017\u0010\u0018\u001a\u00020\u00118\u0006¢\u0006\f\n\u0004\b\u0017\u0010\u0013\u001a\u0004\b\u0018\u0010\u0015R\u0017\u0010\u001b\u001a\u00020\b8\u0006¢\u0006\f\n\u0004\b\u0019\u0010\n\u001a\u0004\b\u001a\u0010\fR\u0017\u0010\u001d\u001a\u00020\u00118\u0006¢\u0006\f\n\u0004\b\u001c\u0010\u0013\u001a\u0004\b\u001d\u0010\u0015R\u0017\u0010#\u001a\u00020\u001e8\u0006¢\u0006\f\n\u0004\b\u001f\u0010 \u001a\u0004\b!\u0010\"R\u0017\u0010)\u001a\u00020$8\u0006¢\u0006\f\n\u0004\b%\u0010&\u001a\u0004\b'\u0010(R\u0017\u0010/\u001a\u00020*8\u0006¢\u0006\f\n\u0004\b+\u0010,\u001a\u0004\b-\u0010.R\u001a\u00101\u001a\u00020\u00118\u0016X\u0096\u0004¢\u0006\f\n\u0004\b0\u0010\u0013\u001a\u0004\b1\u0010\u0015R\u001a\u00103\u001a\u00020\u00118\u0016X\u0096\u0004¢\u0006\f\n\u0004\b2\u0010\u0013\u001a\u0004\b3\u0010\u0015R\u001a\u00105\u001a\u00020\u00118\u0016X\u0096\u0004¢\u0006\f\n\u0004\b4\u0010\u0013\u001a\u0004\b5\u0010\u0015R\u001a\u0010;\u001a\u0002068\u0016X\u0096\u0004¢\u0006\f\n\u0004\b7\u00108\u001a\u0004\b9\u0010:¨\u0006>"}, d2 = {"Lcom/appodeal/ads/modules/common/internal/service/ServiceOptions$SentryAnalytics;", "Lcom/appodeal/ads/modules/common/internal/service/ServiceOptions;", "Landroid/content/Context;", NotificationBundleProcessor.PUSH_ADDITIONAL_DATA_KEY, "Landroid/content/Context;", "getContext", "()Landroid/content/Context;", "context", "", "b", "Ljava/lang/String;", "getSentryDsn", "()Ljava/lang/String;", "sentryDsn", "c", "getSentryEnvironment", "sentryEnvironment", "", d.f11571a, "Z", "getSentryCollectThreads", "()Z", "sentryCollectThreads", "e", "isSentryTrackingEnabled", f.TAG, "getMdsReportUrl", "mdsReportUrl", "g", "isMdsEventTrackingEnabled", "Lcom/appodeal/ads/modules/common/internal/data/DeviceData;", "h", "Lcom/appodeal/ads/modules/common/internal/data/DeviceData;", "getDeviceData", "()Lcom/appodeal/ads/modules/common/internal/data/DeviceData;", "deviceData", "Lcom/appodeal/ads/modules/common/internal/data/ApplicationData;", "i", "Lcom/appodeal/ads/modules/common/internal/data/ApplicationData;", "getApplicationData", "()Lcom/appodeal/ads/modules/common/internal/data/ApplicationData;", "applicationData", "Lcom/appodeal/ads/modules/common/internal/data/UserPersonalData;", j.f9356g, "Lcom/appodeal/ads/modules/common/internal/data/UserPersonalData;", "getUserPersonalData", "()Lcom/appodeal/ads/modules/common/internal/data/UserPersonalData;", "userPersonalData", "k", "isLoggingEnabled", "l", "isEventTrackingEnabled", m.o, "isRevenueTrackingEnabled", "Lcom/appodeal/ads/modules/common/internal/service/ConnectorCallback;", NotificationBundleProcessor.PUSH_MINIFIED_BUTTON_TEXT, "Lcom/appodeal/ads/modules/common/internal/service/ConnectorCallback;", "getConnectorCallback", "()Lcom/appodeal/ads/modules/common/internal/service/ConnectorCallback;", "connectorCallback", "<init>", "(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZLcom/appodeal/ads/modules/common/internal/data/DeviceData;Lcom/appodeal/ads/modules/common/internal/data/ApplicationData;Lcom/appodeal/ads/modules/common/internal/data/UserPersonalData;ZZZLcom/appodeal/ads/modules/common/internal/service/ConnectorCallback;)V", "apd_internal"}, k = 1, mv = {1, 6, 0})
    /* loaded from: classes2.dex */
    public static final class SentryAnalytics implements ServiceOptions {

        /* renamed from: a  reason: collision with root package name */
        public final Context f6937a;

        /* renamed from: b  reason: collision with root package name */
        public final String f6938b;

        /* renamed from: c  reason: collision with root package name */
        public final String f6939c;

        /* renamed from: d  reason: collision with root package name */
        public final boolean f6940d;

        /* renamed from: e  reason: collision with root package name */
        public final boolean f6941e;

        /* renamed from: f  reason: collision with root package name */
        public final String f6942f;

        /* renamed from: g  reason: collision with root package name */
        public final boolean f6943g;

        /* renamed from: h  reason: collision with root package name */
        public final DeviceData f6944h;
        public final ApplicationData i;
        public final UserPersonalData j;
        public final boolean k;
        public final boolean l;
        public final boolean m;
        public final ConnectorCallback n;

        public SentryAnalytics(Context context, String sentryDsn, String sentryEnvironment, boolean z, boolean z2, String mdsReportUrl, boolean z3, DeviceData deviceData, ApplicationData applicationData, UserPersonalData userPersonalData, boolean z4, boolean z5, boolean z6, ConnectorCallback connectorCallback) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(sentryDsn, "sentryDsn");
            Intrinsics.checkNotNullParameter(sentryEnvironment, "sentryEnvironment");
            Intrinsics.checkNotNullParameter(mdsReportUrl, "mdsReportUrl");
            Intrinsics.checkNotNullParameter(deviceData, "deviceData");
            Intrinsics.checkNotNullParameter(applicationData, "applicationData");
            Intrinsics.checkNotNullParameter(userPersonalData, "userPersonalData");
            Intrinsics.checkNotNullParameter(connectorCallback, "connectorCallback");
            this.f6937a = context;
            this.f6938b = sentryDsn;
            this.f6939c = sentryEnvironment;
            this.f6940d = z;
            this.f6941e = z2;
            this.f6942f = mdsReportUrl;
            this.f6943g = z3;
            this.f6944h = deviceData;
            this.i = applicationData;
            this.j = userPersonalData;
            this.k = z4;
            this.l = z5;
            this.m = z6;
            this.n = connectorCallback;
        }

        public /* synthetic */ SentryAnalytics(Context context, String str, String str2, boolean z, boolean z2, String str3, boolean z3, DeviceData deviceData, ApplicationData applicationData, UserPersonalData userPersonalData, boolean z4, boolean z5, boolean z6, ConnectorCallback connectorCallback, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(context, str, str2, z, z2, str3, z3, deviceData, applicationData, userPersonalData, (i & 1024) != 0 ? false : z4, (i & 2048) != 0 ? false : z5, (i & 4096) != 0 ? false : z6, connectorCallback);
        }

        public final ApplicationData getApplicationData() {
            return this.i;
        }

        @Override // com.appodeal.ads.modules.common.internal.service.ServiceOptions
        public ConnectorCallback getConnectorCallback() {
            return this.n;
        }

        public final Context getContext() {
            return this.f6937a;
        }

        public final DeviceData getDeviceData() {
            return this.f6944h;
        }

        public final String getMdsReportUrl() {
            return this.f6942f;
        }

        public final boolean getSentryCollectThreads() {
            return this.f6940d;
        }

        public final String getSentryDsn() {
            return this.f6938b;
        }

        public final String getSentryEnvironment() {
            return this.f6939c;
        }

        public final UserPersonalData getUserPersonalData() {
            return this.j;
        }

        @Override // com.appodeal.ads.modules.common.internal.service.ServiceOptions
        public boolean isEventTrackingEnabled() {
            return this.l;
        }

        @Override // com.appodeal.ads.modules.common.internal.service.ServiceOptions
        public boolean isLoggingEnabled() {
            return this.k;
        }

        public final boolean isMdsEventTrackingEnabled() {
            return this.f6943g;
        }

        @Override // com.appodeal.ads.modules.common.internal.service.ServiceOptions
        public boolean isRevenueTrackingEnabled() {
            return this.m;
        }

        public final boolean isSentryTrackingEnabled() {
            return this.f6941e;
        }
    }

    @Metadata(bv = {}, d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u000e\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B}\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\r\u001a\u00020\b\u0012\u0006\u0010\u0013\u001a\u00020\u000e\u0012\u0006\u0010\u0016\u001a\u00020\b\u0012\u0006\u0010\u0019\u001a\u00020\u000e\u0012\u0006\u0010\u001c\u001a\u00020\b\u0012\u0006\u0010 \u001a\u00020\u001d\u0012\u0006\u0010'\u001a\u00020\"\u0012\u0006\u0010-\u001a\u00020(\u0012\u0006\u00103\u001a\u00020.\u0012\b\b\u0002\u00105\u001a\u00020\u001d\u0012\b\b\u0002\u00107\u001a\u00020\u001d\u0012\b\b\u0002\u00109\u001a\u00020\u001d\u0012\u0006\u0010?\u001a\u00020:¢\u0006\u0004\b@\u0010AR\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0017\u0010\r\u001a\u00020\b8\u0006¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\fR\u0017\u0010\u0013\u001a\u00020\u000e8\u0006¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012R\u0017\u0010\u0016\u001a\u00020\b8\u0006¢\u0006\f\n\u0004\b\u0014\u0010\n\u001a\u0004\b\u0015\u0010\fR\u0017\u0010\u0019\u001a\u00020\u000e8\u0006¢\u0006\f\n\u0004\b\u0017\u0010\u0010\u001a\u0004\b\u0018\u0010\u0012R\u0017\u0010\u001c\u001a\u00020\b8\u0006¢\u0006\f\n\u0004\b\u001a\u0010\n\u001a\u0004\b\u001b\u0010\fR\u0017\u0010 \u001a\u00020\u001d8\u0006¢\u0006\f\n\u0004\b\u001e\u0010\u001f\u001a\u0004\b \u0010!R\u0017\u0010'\u001a\u00020\"8\u0006¢\u0006\f\n\u0004\b#\u0010$\u001a\u0004\b%\u0010&R\u0017\u0010-\u001a\u00020(8\u0006¢\u0006\f\n\u0004\b)\u0010*\u001a\u0004\b+\u0010,R\u0017\u00103\u001a\u00020.8\u0006¢\u0006\f\n\u0004\b/\u00100\u001a\u0004\b1\u00102R\u001a\u00105\u001a\u00020\u001d8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b4\u0010\u001f\u001a\u0004\b5\u0010!R\u001a\u00107\u001a\u00020\u001d8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b6\u0010\u001f\u001a\u0004\b7\u0010!R\u001a\u00109\u001a\u00020\u001d8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b8\u0010\u001f\u001a\u0004\b9\u0010!R\u001a\u0010?\u001a\u00020:8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b;\u0010<\u001a\u0004\b=\u0010>¨\u0006B"}, d2 = {"Lcom/appodeal/ads/modules/common/internal/service/ServiceOptions$StackAnalytics;", "Lcom/appodeal/ads/modules/common/internal/service/ServiceOptions;", "Landroid/content/Context;", NotificationBundleProcessor.PUSH_ADDITIONAL_DATA_KEY, "Landroid/content/Context;", "getContext", "()Landroid/content/Context;", "context", "", "b", "Ljava/lang/String;", "getReportUrl", "()Ljava/lang/String;", "reportUrl", "", "c", "J", "getReportSize", "()J", "reportSize", d.f11571a, "getReportLogLevel", "reportLogLevel", "e", "getReportIntervalMsec", "reportIntervalMsec", f.TAG, "getCrashLogLevel", "crashLogLevel", "", "g", "Z", "isNativeTrackingEnabled", "()Z", "Lcom/appodeal/ads/modules/common/internal/data/DeviceData;", "h", "Lcom/appodeal/ads/modules/common/internal/data/DeviceData;", "getDeviceData", "()Lcom/appodeal/ads/modules/common/internal/data/DeviceData;", "deviceData", "Lcom/appodeal/ads/modules/common/internal/data/ApplicationData;", "i", "Lcom/appodeal/ads/modules/common/internal/data/ApplicationData;", "getApplicationData", "()Lcom/appodeal/ads/modules/common/internal/data/ApplicationData;", "applicationData", "Lcom/appodeal/ads/modules/common/internal/data/UserPersonalData;", j.f9356g, "Lcom/appodeal/ads/modules/common/internal/data/UserPersonalData;", "getUserPersonalData", "()Lcom/appodeal/ads/modules/common/internal/data/UserPersonalData;", "userPersonalData", "k", "isLoggingEnabled", "l", "isEventTrackingEnabled", m.o, "isRevenueTrackingEnabled", "Lcom/appodeal/ads/modules/common/internal/service/ConnectorCallback;", NotificationBundleProcessor.PUSH_MINIFIED_BUTTON_TEXT, "Lcom/appodeal/ads/modules/common/internal/service/ConnectorCallback;", "getConnectorCallback", "()Lcom/appodeal/ads/modules/common/internal/service/ConnectorCallback;", "connectorCallback", "<init>", "(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;ZLcom/appodeal/ads/modules/common/internal/data/DeviceData;Lcom/appodeal/ads/modules/common/internal/data/ApplicationData;Lcom/appodeal/ads/modules/common/internal/data/UserPersonalData;ZZZLcom/appodeal/ads/modules/common/internal/service/ConnectorCallback;)V", "apd_internal"}, k = 1, mv = {1, 6, 0})
    /* loaded from: classes2.dex */
    public static final class StackAnalytics implements ServiceOptions {

        /* renamed from: a  reason: collision with root package name */
        public final Context f6945a;

        /* renamed from: b  reason: collision with root package name */
        public final String f6946b;

        /* renamed from: c  reason: collision with root package name */
        public final long f6947c;

        /* renamed from: d  reason: collision with root package name */
        public final String f6948d;

        /* renamed from: e  reason: collision with root package name */
        public final long f6949e;

        /* renamed from: f  reason: collision with root package name */
        public final String f6950f;

        /* renamed from: g  reason: collision with root package name */
        public final boolean f6951g;

        /* renamed from: h  reason: collision with root package name */
        public final DeviceData f6952h;
        public final ApplicationData i;
        public final UserPersonalData j;
        public final boolean k;
        public final boolean l;
        public final boolean m;
        public final ConnectorCallback n;

        public StackAnalytics(Context context, String reportUrl, long j, String reportLogLevel, long j2, String crashLogLevel, boolean z, DeviceData deviceData, ApplicationData applicationData, UserPersonalData userPersonalData, boolean z2, boolean z3, boolean z4, ConnectorCallback connectorCallback) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(reportUrl, "reportUrl");
            Intrinsics.checkNotNullParameter(reportLogLevel, "reportLogLevel");
            Intrinsics.checkNotNullParameter(crashLogLevel, "crashLogLevel");
            Intrinsics.checkNotNullParameter(deviceData, "deviceData");
            Intrinsics.checkNotNullParameter(applicationData, "applicationData");
            Intrinsics.checkNotNullParameter(userPersonalData, "userPersonalData");
            Intrinsics.checkNotNullParameter(connectorCallback, "connectorCallback");
            this.f6945a = context;
            this.f6946b = reportUrl;
            this.f6947c = j;
            this.f6948d = reportLogLevel;
            this.f6949e = j2;
            this.f6950f = crashLogLevel;
            this.f6951g = z;
            this.f6952h = deviceData;
            this.i = applicationData;
            this.j = userPersonalData;
            this.k = z2;
            this.l = z3;
            this.m = z4;
            this.n = connectorCallback;
        }

        public /* synthetic */ StackAnalytics(Context context, String str, long j, String str2, long j2, String str3, boolean z, DeviceData deviceData, ApplicationData applicationData, UserPersonalData userPersonalData, boolean z2, boolean z3, boolean z4, ConnectorCallback connectorCallback, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(context, str, j, str2, j2, str3, z, deviceData, applicationData, userPersonalData, (i & 1024) != 0 ? false : z2, (i & 2048) != 0 ? false : z3, (i & 4096) != 0 ? false : z4, connectorCallback);
        }

        public final ApplicationData getApplicationData() {
            return this.i;
        }

        @Override // com.appodeal.ads.modules.common.internal.service.ServiceOptions
        public ConnectorCallback getConnectorCallback() {
            return this.n;
        }

        public final Context getContext() {
            return this.f6945a;
        }

        public final String getCrashLogLevel() {
            return this.f6950f;
        }

        public final DeviceData getDeviceData() {
            return this.f6952h;
        }

        public final long getReportIntervalMsec() {
            return this.f6949e;
        }

        public final String getReportLogLevel() {
            return this.f6948d;
        }

        public final long getReportSize() {
            return this.f6947c;
        }

        public final String getReportUrl() {
            return this.f6946b;
        }

        public final UserPersonalData getUserPersonalData() {
            return this.j;
        }

        @Override // com.appodeal.ads.modules.common.internal.service.ServiceOptions
        public boolean isEventTrackingEnabled() {
            return this.l;
        }

        @Override // com.appodeal.ads.modules.common.internal.service.ServiceOptions
        public boolean isLoggingEnabled() {
            return this.k;
        }

        public final boolean isNativeTrackingEnabled() {
            return this.f6951g;
        }

        @Override // com.appodeal.ads.modules.common.internal.service.ServiceOptions
        public boolean isRevenueTrackingEnabled() {
            return this.m;
        }
    }

    ConnectorCallback getConnectorCallback();

    boolean isEventTrackingEnabled();

    boolean isLoggingEnabled();

    boolean isRevenueTrackingEnabled();
}
