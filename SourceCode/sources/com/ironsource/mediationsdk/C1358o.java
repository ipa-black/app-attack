package com.ironsource.mediationsdk;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0010\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003¢\u0006\u0002\u0010\u0006J\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0003HÆ\u0003J'\u0010\u0012\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0016\u001a\u00020\u0017HÖ\u0001J\t\u0010\u0018\u001a\u00020\u0003HÖ\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001a\u0010\u0005\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\b\"\u0004\b\f\u0010\nR\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\b\"\u0004\b\u000e\u0010\n¨\u0006\u0019"}, d2 = {"Lcom/ironsource/mediationsdk/CachedResponse;", "", "cachedAppKey", "", "cachedUserId", "cachedSettings", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getCachedAppKey", "()Ljava/lang/String;", "setCachedAppKey", "(Ljava/lang/String;)V", "getCachedSettings", "setCachedSettings", "getCachedUserId", "setCachedUserId", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "", "toString", "mediationsdk_release"}, k = 1, mv = {1, 4, 2})
/* renamed from: com.ironsource.mediationsdk.o  reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C1358o {

    /* renamed from: a  reason: collision with root package name */
    String f11313a;

    /* renamed from: b  reason: collision with root package name */
    String f11314b;

    /* renamed from: c  reason: collision with root package name */
    String f11315c;

    public C1358o(String cachedAppKey, String cachedUserId, String cachedSettings) {
        Intrinsics.checkNotNullParameter(cachedAppKey, "cachedAppKey");
        Intrinsics.checkNotNullParameter(cachedUserId, "cachedUserId");
        Intrinsics.checkNotNullParameter(cachedSettings, "cachedSettings");
        this.f11313a = cachedAppKey;
        this.f11314b = cachedUserId;
        this.f11315c = cachedSettings;
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof C1358o) {
                C1358o c1358o = (C1358o) obj;
                return Intrinsics.areEqual(this.f11313a, c1358o.f11313a) && Intrinsics.areEqual(this.f11314b, c1358o.f11314b) && Intrinsics.areEqual(this.f11315c, c1358o.f11315c);
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        String str = this.f11313a;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.f11314b;
        int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.f11315c;
        return hashCode2 + (str3 != null ? str3.hashCode() : 0);
    }

    public final String toString() {
        return "CachedResponse(cachedAppKey=" + this.f11313a + ", cachedUserId=" + this.f11314b + ", cachedSettings=" + this.f11315c + ")";
    }
}
