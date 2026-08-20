package com.appodeal.ads.modules.common.internal.data;

import com.google.android.exoplayer2.source.rtsp.SessionDescription;
import com.onesignal.NotificationBundleProcessor;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
@Metadata(bv = {}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0013\b\u0086\b\u0018\u00002\u00020\u0001B#\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\t\u001a\u00020\u0005¢\u0006\u0004\b\u001d\u0010\u001eJ\u000b\u0010\u0003\u001a\u0004\u0018\u00010\u0002HÆ\u0003J\u000b\u0010\u0004\u001a\u0004\u0018\u00010\u0002HÆ\u0003J\t\u0010\u0006\u001a\u00020\u0005HÆ\u0003J+\u0010\n\u001a\u00020\u00002\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00022\b\b\u0002\u0010\t\u001a\u00020\u0005HÆ\u0001J\t\u0010\u000b\u001a\u00020\u0002HÖ\u0001J\t\u0010\r\u001a\u00020\fHÖ\u0001J\u0013\u0010\u000f\u001a\u00020\u00052\b\u0010\u000e\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0019\u0010\u0007\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013R$\u0010\b\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0014\u0010\u0011\u001a\u0004\b\u0015\u0010\u0013\"\u0004\b\u0016\u0010\u0017R\"\u0010\t\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\t\u0010\u001a\"\u0004\b\u001b\u0010\u001c¨\u0006\u001f"}, d2 = {"Lcom/appodeal/ads/modules/common/internal/data/ConnectionData;", "", "", "component1", "component2", "", "component3", SessionDescription.ATTR_TYPE, "subType", "isFast", "copy", "toString", "", "hashCode", "other", "equals", NotificationBundleProcessor.PUSH_ADDITIONAL_DATA_KEY, "Ljava/lang/String;", "getType", "()Ljava/lang/String;", "b", "getSubType", "setSubType", "(Ljava/lang/String;)V", "c", "Z", "()Z", "setFast", "(Z)V", "<init>", "(Ljava/lang/String;Ljava/lang/String;Z)V", "apd_internal"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes2.dex */
public final class ConnectionData {

    /* renamed from: a  reason: collision with root package name */
    public final String f6878a;

    /* renamed from: b  reason: collision with root package name */
    public String f6879b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f6880c;

    public ConnectionData(String str, String str2, boolean z) {
        this.f6878a = str;
        this.f6879b = str2;
        this.f6880c = z;
    }

    public static /* synthetic */ ConnectionData copy$default(ConnectionData connectionData, String str, String str2, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            str = connectionData.f6878a;
        }
        if ((i & 2) != 0) {
            str2 = connectionData.f6879b;
        }
        if ((i & 4) != 0) {
            z = connectionData.f6880c;
        }
        return connectionData.copy(str, str2, z);
    }

    public final String component1() {
        return this.f6878a;
    }

    public final String component2() {
        return this.f6879b;
    }

    public final boolean component3() {
        return this.f6880c;
    }

    public final ConnectionData copy(String str, String str2, boolean z) {
        return new ConnectionData(str, str2, z);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ConnectionData) {
            ConnectionData connectionData = (ConnectionData) obj;
            return Intrinsics.areEqual(this.f6878a, connectionData.f6878a) && Intrinsics.areEqual(this.f6879b, connectionData.f6879b) && this.f6880c == connectionData.f6880c;
        }
        return false;
    }

    public final String getSubType() {
        return this.f6879b;
    }

    public final String getType() {
        return this.f6878a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        String str = this.f6878a;
        int hashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.f6879b;
        int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        boolean z = this.f6880c;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        return hashCode2 + i;
    }

    public final boolean isFast() {
        return this.f6880c;
    }

    public final void setFast(boolean z) {
        this.f6880c = z;
    }

    public final void setSubType(String str) {
        this.f6879b = str;
    }

    public String toString() {
        return "ConnectionData(type=" + ((Object) this.f6878a) + ", subType=" + ((Object) this.f6879b) + ", isFast=" + this.f6880c + ')';
    }
}
