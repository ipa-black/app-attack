package com.appodeal.ads.revenue;

import com.appnext.base.b.f;
import com.appodeal.ads.AppodealNetworks;
import com.explorestack.iab.mraid.j;
import com.google.android.gms.ads.AdError;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import com.ironsource.sdk.c.d;
import com.onesignal.NotificationBundleProcessor;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
@Metadata(bv = {}, d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\b\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\u0018\n\u0002\u0018\u0002\n\u0002\b\r\b\u0086\b\u0018\u00002\u00020\u0001B?\u0012\u0006\u0010\f\u001a\u00020\u0002\u0012\u0006\u0010\r\u001a\u00020\u0002\u0012\u0006\u0010\u000e\u001a\u00020\u0002\u0012\u0006\u0010\u000f\u001a\u00020\u0002\u0012\u0006\u0010\u0010\u001a\u00020\u0007\u0012\u0006\u0010\u0011\u001a\u00020\t\u0012\u0006\u0010\u0012\u001a\u00020\u0002¢\u0006\u0004\b;\u0010<J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0004\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0005\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0006\u001a\u00020\u0002HÆ\u0003J\t\u0010\b\u001a\u00020\u0007HÆ\u0003J\t\u0010\n\u001a\u00020\tHÆ\u0003J\t\u0010\u000b\u001a\u00020\u0002HÆ\u0003JO\u0010\u0013\u001a\u00020\u00002\b\b\u0002\u0010\f\u001a\u00020\u00022\b\b\u0002\u0010\r\u001a\u00020\u00022\b\b\u0002\u0010\u000e\u001a\u00020\u00022\b\b\u0002\u0010\u000f\u001a\u00020\u00022\b\b\u0002\u0010\u0010\u001a\u00020\u00072\b\b\u0002\u0010\u0011\u001a\u00020\t2\b\b\u0002\u0010\u0012\u001a\u00020\u0002HÆ\u0001J\t\u0010\u0014\u001a\u00020\u0002HÖ\u0001J\t\u0010\u0015\u001a\u00020\tHÖ\u0001J\u0013\u0010\u0018\u001a\u00020\u00172\b\u0010\u0016\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0017\u0010\f\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u001b\u0010\u001cR\u0017\u0010\r\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u001d\u0010\u001a\u001a\u0004\b\u001e\u0010\u001cR\u0017\u0010\u000e\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u001f\u0010\u001a\u001a\u0004\b \u0010\u001cR\u0017\u0010\u000f\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b!\u0010\u001a\u001a\u0004\b\"\u0010\u001cR\u0017\u0010\u0010\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b#\u0010$\u001a\u0004\b%\u0010&R\u0017\u0010\u0011\u001a\u00020\t8\u0006¢\u0006\f\n\u0004\b'\u0010(\u001a\u0004\b)\u0010*R\u0017\u0010\u0012\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b+\u0010\u001a\u001a\u0004\b,\u0010\u001cR\u001a\u0010/\u001a\u00020\u00028\u0006X\u0086D¢\u0006\f\n\u0004\b-\u0010\u001a\u001a\u0004\b.\u0010\u001cR\u0017\u00105\u001a\u0002008\u0006¢\u0006\f\n\u0004\b1\u00102\u001a\u0004\b3\u00104R\u0017\u00108\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b6\u0010\u001a\u001a\u0004\b7\u0010\u001cR\u0011\u0010:\u001a\u00020\u00028F¢\u0006\u0006\u001a\u0004\b9\u0010\u001c¨\u0006="}, d2 = {"Lcom/appodeal/ads/revenue/RevenueInfo;", "", "", "component1", "component2", "component3", "component4", "", "component5", "", "component6", "component7", "networkName", "demandSource", "adUnitName", IronSourceConstants.EVENTS_PLACEMENT_NAME, "revenue", "adType", "adTypeString", "copy", "toString", "hashCode", "other", "", "equals", NotificationBundleProcessor.PUSH_ADDITIONAL_DATA_KEY, "Ljava/lang/String;", "getNetworkName", "()Ljava/lang/String;", "b", "getDemandSource", "c", "getAdUnitName", d.f11571a, "getPlacement", "e", "D", "getRevenue", "()D", f.TAG, "I", "getAdType", "()I", "g", "getAdTypeString", "h", "getPlatform", "platform", "Lcom/appodeal/ads/revenue/RevenueCurrency;", "i", "Lcom/appodeal/ads/revenue/RevenueCurrency;", "getRevenueCurrency", "()Lcom/appodeal/ads/revenue/RevenueCurrency;", "revenueCurrency", j.f9356g, "getCurrency", "currency", "getRevenuePrecision", "revenuePrecision", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DILjava/lang/String;)V", "apd_public"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes2.dex */
public final class RevenueInfo {

    /* renamed from: a  reason: collision with root package name */
    public final String f7435a;

    /* renamed from: b  reason: collision with root package name */
    public final String f7436b;

    /* renamed from: c  reason: collision with root package name */
    public final String f7437c;

    /* renamed from: d  reason: collision with root package name */
    public final String f7438d;

    /* renamed from: e  reason: collision with root package name */
    public final double f7439e;

    /* renamed from: f  reason: collision with root package name */
    public final int f7440f;

    /* renamed from: g  reason: collision with root package name */
    public final String f7441g;

    /* renamed from: h  reason: collision with root package name */
    public final String f7442h;
    public final RevenueCurrency i;
    public final String j;

    public RevenueInfo(String networkName, String demandSource, String adUnitName, String placement, double d2, int i, String adTypeString) {
        Intrinsics.checkNotNullParameter(networkName, "networkName");
        Intrinsics.checkNotNullParameter(demandSource, "demandSource");
        Intrinsics.checkNotNullParameter(adUnitName, "adUnitName");
        Intrinsics.checkNotNullParameter(placement, "placement");
        Intrinsics.checkNotNullParameter(adTypeString, "adTypeString");
        this.f7435a = networkName;
        this.f7436b = demandSource;
        this.f7437c = adUnitName;
        this.f7438d = placement;
        this.f7439e = d2;
        this.f7440f = i;
        this.f7441g = adTypeString;
        this.f7442h = "Appodeal";
        RevenueCurrency revenueCurrency = RevenueCurrency.USD;
        this.i = revenueCurrency;
        this.j = revenueCurrency.getStringValue();
    }

    public final String component1() {
        return this.f7435a;
    }

    public final String component2() {
        return this.f7436b;
    }

    public final String component3() {
        return this.f7437c;
    }

    public final String component4() {
        return this.f7438d;
    }

    public final double component5() {
        return this.f7439e;
    }

    public final int component6() {
        return this.f7440f;
    }

    public final String component7() {
        return this.f7441g;
    }

    public final RevenueInfo copy(String networkName, String demandSource, String adUnitName, String placement, double d2, int i, String adTypeString) {
        Intrinsics.checkNotNullParameter(networkName, "networkName");
        Intrinsics.checkNotNullParameter(demandSource, "demandSource");
        Intrinsics.checkNotNullParameter(adUnitName, "adUnitName");
        Intrinsics.checkNotNullParameter(placement, "placement");
        Intrinsics.checkNotNullParameter(adTypeString, "adTypeString");
        return new RevenueInfo(networkName, demandSource, adUnitName, placement, d2, i, adTypeString);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof RevenueInfo) {
            RevenueInfo revenueInfo = (RevenueInfo) obj;
            return Intrinsics.areEqual(this.f7435a, revenueInfo.f7435a) && Intrinsics.areEqual(this.f7436b, revenueInfo.f7436b) && Intrinsics.areEqual(this.f7437c, revenueInfo.f7437c) && Intrinsics.areEqual(this.f7438d, revenueInfo.f7438d) && Intrinsics.areEqual((Object) Double.valueOf(this.f7439e), (Object) Double.valueOf(revenueInfo.f7439e)) && this.f7440f == revenueInfo.f7440f && Intrinsics.areEqual(this.f7441g, revenueInfo.f7441g);
        }
        return false;
    }

    public final int getAdType() {
        return this.f7440f;
    }

    public final String getAdTypeString() {
        return this.f7441g;
    }

    public final String getAdUnitName() {
        return this.f7437c;
    }

    public final String getCurrency() {
        return this.j;
    }

    public final String getDemandSource() {
        return this.f7436b;
    }

    public final String getNetworkName() {
        return this.f7435a;
    }

    public final String getPlacement() {
        return this.f7438d;
    }

    public final String getPlatform() {
        return this.f7442h;
    }

    public final double getRevenue() {
        return this.f7439e;
    }

    public final RevenueCurrency getRevenueCurrency() {
        return this.i;
    }

    public final String getRevenuePrecision() {
        return Intrinsics.areEqual(this.f7435a, AppodealNetworks.BIDMACHINE) ? "exact" : (Intrinsics.areEqual(this.f7435a, "mraid") || Intrinsics.areEqual(this.f7435a, "vast") || Intrinsics.areEqual(this.f7435a, "nast") || Intrinsics.areEqual(this.f7435a, "appodeal")) ? "publisher_defined" : this.f7439e > 0.0d ? "estimated" : AdError.UNDEFINED_DOMAIN;
    }

    public int hashCode() {
        int hashCode = this.f7436b.hashCode();
        int hashCode2 = this.f7437c.hashCode();
        int hashCode3 = this.f7438d.hashCode();
        int hashCode4 = Double.hashCode(this.f7439e);
        int hashCode5 = Integer.hashCode(this.f7440f);
        return this.f7441g.hashCode() + ((hashCode5 + ((hashCode4 + ((hashCode3 + ((hashCode2 + ((hashCode + (this.f7435a.hashCode() * 31)) * 31)) * 31)) * 31)) * 31)) * 31);
    }

    public String toString() {
        return "RevenueInfo(networkName=" + this.f7435a + ", demandSource=" + this.f7436b + ", adUnitName=" + this.f7437c + ", placement=" + this.f7438d + ", revenue=" + this.f7439e + ", adType=" + this.f7440f + ", adTypeString=" + this.f7441g + ')';
    }
}
