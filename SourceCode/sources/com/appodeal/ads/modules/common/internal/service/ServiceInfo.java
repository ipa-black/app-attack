package com.appodeal.ads.modules.common.internal.service;

import com.onesignal.NotificationBundleProcessor;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
@Metadata(bv = {}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\f\b\u0086\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\b\u001a\u00020\u0002¢\u0006\u0004\b\u0018\u0010\u0019J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0004\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0005\u001a\u00020\u0002HÆ\u0003J'\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0006\u001a\u00020\u00022\b\b\u0002\u0010\u0007\u001a\u00020\u00022\b\b\u0002\u0010\b\u001a\u00020\u0002HÆ\u0001J\t\u0010\n\u001a\u00020\u0002HÖ\u0001J\t\u0010\f\u001a\u00020\u000bHÖ\u0001J\u0013\u0010\u000f\u001a\u00020\u000e2\b\u0010\r\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0017\u0010\u0006\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013R\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0014\u0010\u0011\u001a\u0004\b\u0015\u0010\u0013R\u0017\u0010\b\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0016\u0010\u0011\u001a\u0004\b\u0017\u0010\u0013¨\u0006\u001a"}, d2 = {"Lcom/appodeal/ads/modules/common/internal/service/ServiceInfo;", "", "", "component1", "component2", "component3", "name", "sdkVersion", "buildVersion", "copy", "toString", "", "hashCode", "other", "", "equals", NotificationBundleProcessor.PUSH_ADDITIONAL_DATA_KEY, "Ljava/lang/String;", "getName", "()Ljava/lang/String;", "b", "getSdkVersion", "c", "getBuildVersion", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "apd_internal"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes2.dex */
public final class ServiceInfo {

    /* renamed from: a  reason: collision with root package name */
    public final String f6904a;

    /* renamed from: b  reason: collision with root package name */
    public final String f6905b;

    /* renamed from: c  reason: collision with root package name */
    public final String f6906c;

    public ServiceInfo(String name, String sdkVersion, String buildVersion) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(sdkVersion, "sdkVersion");
        Intrinsics.checkNotNullParameter(buildVersion, "buildVersion");
        this.f6904a = name;
        this.f6905b = sdkVersion;
        this.f6906c = buildVersion;
    }

    public static /* synthetic */ ServiceInfo copy$default(ServiceInfo serviceInfo, String str, String str2, String str3, int i, Object obj) {
        if ((i & 1) != 0) {
            str = serviceInfo.f6904a;
        }
        if ((i & 2) != 0) {
            str2 = serviceInfo.f6905b;
        }
        if ((i & 4) != 0) {
            str3 = serviceInfo.f6906c;
        }
        return serviceInfo.copy(str, str2, str3);
    }

    public final String component1() {
        return this.f6904a;
    }

    public final String component2() {
        return this.f6905b;
    }

    public final String component3() {
        return this.f6906c;
    }

    public final ServiceInfo copy(String name, String sdkVersion, String buildVersion) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(sdkVersion, "sdkVersion");
        Intrinsics.checkNotNullParameter(buildVersion, "buildVersion");
        return new ServiceInfo(name, sdkVersion, buildVersion);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ServiceInfo) {
            ServiceInfo serviceInfo = (ServiceInfo) obj;
            return Intrinsics.areEqual(this.f6904a, serviceInfo.f6904a) && Intrinsics.areEqual(this.f6905b, serviceInfo.f6905b) && Intrinsics.areEqual(this.f6906c, serviceInfo.f6906c);
        }
        return false;
    }

    public final String getBuildVersion() {
        return this.f6906c;
    }

    public final String getName() {
        return this.f6904a;
    }

    public final String getSdkVersion() {
        return this.f6905b;
    }

    public int hashCode() {
        int hashCode = this.f6905b.hashCode();
        return this.f6906c.hashCode() + ((hashCode + (this.f6904a.hashCode() * 31)) * 31);
    }

    public String toString() {
        return "ServiceInfo(name=" + this.f6904a + ", sdkVersion=" + this.f6905b + ", buildVersion=" + this.f6906c + ')';
    }
}
