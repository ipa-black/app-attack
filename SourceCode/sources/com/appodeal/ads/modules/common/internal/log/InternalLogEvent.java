package com.appodeal.ads.modules.common.internal.log;

import com.appnext.base.b.f;
import com.ironsource.sdk.c.d;
import com.onesignal.NotificationBundleProcessor;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
@Metadata(bv = {}, d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u000b\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0017\b\u0086\b\u0018\u00002\u00020\u0001BC\b\u0007\u0012\u0006\u0010\u000b\u001a\u00020\u0002\u0012\u0006\u0010\f\u001a\u00020\u0002\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u000e\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b,\u0010-J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0004\u001a\u00020\u0002HÆ\u0003J\u000b\u0010\u0005\u001a\u0004\u0018\u00010\u0002HÆ\u0003J\t\u0010\u0006\u001a\u00020\u0002HÆ\u0003J\u000b\u0010\u0007\u001a\u0004\u0018\u00010\u0002HÆ\u0003J\u0012\u0010\t\u001a\u0004\u0018\u00010\bHÆ\u0003¢\u0006\u0004\b\t\u0010\nJR\u0010\u0011\u001a\u00020\u00002\b\b\u0002\u0010\u000b\u001a\u00020\u00022\b\b\u0002\u0010\f\u001a\u00020\u00022\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00022\b\b\u0002\u0010\u000e\u001a\u00020\u00022\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\bHÆ\u0001¢\u0006\u0004\b\u0011\u0010\u0012J\t\u0010\u0013\u001a\u00020\u0002HÖ\u0001J\t\u0010\u0015\u001a\u00020\u0014HÖ\u0001J\u0013\u0010\u0018\u001a\u00020\u00172\b\u0010\u0016\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0017\u0010\u000b\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u001b\u0010\u001cR\u0017\u0010\f\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u001d\u0010\u001a\u001a\u0004\b\u001e\u0010\u001cR\u0019\u0010\r\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\u001f\u0010\u001a\u001a\u0004\b \u0010\u001cR\u0017\u0010\u000e\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b!\u0010\u001a\u001a\u0004\b\"\u0010\u001cR$\u0010\u000f\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b#\u0010\u001a\u001a\u0004\b$\u0010\u001c\"\u0004\b%\u0010&R$\u0010\u0010\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b'\u0010(\u001a\u0004\b)\u0010\n\"\u0004\b*\u0010+¨\u0006."}, d2 = {"Lcom/appodeal/ads/modules/common/internal/log/InternalLogEvent;", "", "", "component1", "component2", "component3", "component4", "component5", "", "component6", "()Ljava/lang/Long;", "key", "event", "message", "logLevel", "sessionUuid", "sessionUptimeMono", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lcom/appodeal/ads/modules/common/internal/log/InternalLogEvent;", "toString", "", "hashCode", "other", "", "equals", NotificationBundleProcessor.PUSH_ADDITIONAL_DATA_KEY, "Ljava/lang/String;", "getKey", "()Ljava/lang/String;", "b", "getEvent", "c", "getMessage", d.f11571a, "getLogLevel", "e", "getSessionUuid", "setSessionUuid", "(Ljava/lang/String;)V", f.TAG, "Ljava/lang/Long;", "getSessionUptimeMono", "setSessionUptimeMono", "(Ljava/lang/Long;)V", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V", "apd_internal"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes2.dex */
public final class InternalLogEvent {

    /* renamed from: a  reason: collision with root package name */
    public final String f6884a;

    /* renamed from: b  reason: collision with root package name */
    public final String f6885b;

    /* renamed from: c  reason: collision with root package name */
    public final String f6886c;

    /* renamed from: d  reason: collision with root package name */
    public final String f6887d;

    /* renamed from: e  reason: collision with root package name */
    public String f6888e;

    /* renamed from: f  reason: collision with root package name */
    public Long f6889f;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public InternalLogEvent(String key, String event, String str, String logLevel) {
        this(key, event, str, logLevel, null, null, 48, null);
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(event, "event");
        Intrinsics.checkNotNullParameter(logLevel, "logLevel");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public InternalLogEvent(String key, String event, String str, String logLevel, String str2) {
        this(key, event, str, logLevel, str2, null, 32, null);
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(event, "event");
        Intrinsics.checkNotNullParameter(logLevel, "logLevel");
    }

    public InternalLogEvent(String key, String event, String str, String logLevel, String str2, Long l) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(event, "event");
        Intrinsics.checkNotNullParameter(logLevel, "logLevel");
        this.f6884a = key;
        this.f6885b = event;
        this.f6886c = str;
        this.f6887d = logLevel;
        this.f6888e = str2;
        this.f6889f = l;
    }

    public /* synthetic */ InternalLogEvent(String str, String str2, String str3, String str4, String str5, Long l, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, str3, str4, (i & 16) != 0 ? null : str5, (i & 32) != 0 ? null : l);
    }

    public static /* synthetic */ InternalLogEvent copy$default(InternalLogEvent internalLogEvent, String str, String str2, String str3, String str4, String str5, Long l, int i, Object obj) {
        if ((i & 1) != 0) {
            str = internalLogEvent.f6884a;
        }
        if ((i & 2) != 0) {
            str2 = internalLogEvent.f6885b;
        }
        String str6 = str2;
        if ((i & 4) != 0) {
            str3 = internalLogEvent.f6886c;
        }
        String str7 = str3;
        if ((i & 8) != 0) {
            str4 = internalLogEvent.f6887d;
        }
        String str8 = str4;
        if ((i & 16) != 0) {
            str5 = internalLogEvent.f6888e;
        }
        String str9 = str5;
        if ((i & 32) != 0) {
            l = internalLogEvent.f6889f;
        }
        return internalLogEvent.copy(str, str6, str7, str8, str9, l);
    }

    public final String component1() {
        return this.f6884a;
    }

    public final String component2() {
        return this.f6885b;
    }

    public final String component3() {
        return this.f6886c;
    }

    public final String component4() {
        return this.f6887d;
    }

    public final String component5() {
        return this.f6888e;
    }

    public final Long component6() {
        return this.f6889f;
    }

    public final InternalLogEvent copy(String key, String event, String str, String logLevel, String str2, Long l) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(event, "event");
        Intrinsics.checkNotNullParameter(logLevel, "logLevel");
        return new InternalLogEvent(key, event, str, logLevel, str2, l);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof InternalLogEvent) {
            InternalLogEvent internalLogEvent = (InternalLogEvent) obj;
            return Intrinsics.areEqual(this.f6884a, internalLogEvent.f6884a) && Intrinsics.areEqual(this.f6885b, internalLogEvent.f6885b) && Intrinsics.areEqual(this.f6886c, internalLogEvent.f6886c) && Intrinsics.areEqual(this.f6887d, internalLogEvent.f6887d) && Intrinsics.areEqual(this.f6888e, internalLogEvent.f6888e) && Intrinsics.areEqual(this.f6889f, internalLogEvent.f6889f);
        }
        return false;
    }

    public final String getEvent() {
        return this.f6885b;
    }

    public final String getKey() {
        return this.f6884a;
    }

    public final String getLogLevel() {
        return this.f6887d;
    }

    public final String getMessage() {
        return this.f6886c;
    }

    public final Long getSessionUptimeMono() {
        return this.f6889f;
    }

    public final String getSessionUuid() {
        return this.f6888e;
    }

    public int hashCode() {
        int hashCode = (this.f6885b.hashCode() + (this.f6884a.hashCode() * 31)) * 31;
        String str = this.f6886c;
        int hashCode2 = (this.f6887d.hashCode() + ((hashCode + (str == null ? 0 : str.hashCode())) * 31)) * 31;
        String str2 = this.f6888e;
        int hashCode3 = (hashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        Long l = this.f6889f;
        return hashCode3 + (l != null ? l.hashCode() : 0);
    }

    public final void setSessionUptimeMono(Long l) {
        this.f6889f = l;
    }

    public final void setSessionUuid(String str) {
        this.f6888e = str;
    }

    public String toString() {
        return "InternalLogEvent(key=" + this.f6884a + ", event=" + this.f6885b + ", message=" + ((Object) this.f6886c) + ", logLevel=" + this.f6887d + ", sessionUuid=" + ((Object) this.f6888e) + ", sessionUptimeMono=" + this.f6889f + ')';
    }
}
