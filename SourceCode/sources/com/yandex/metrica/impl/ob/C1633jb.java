package com.yandex.metrica.impl.ob;

import com.ironsource.mediationsdk.utils.IronSourceConstants;
import java.util.Map;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;
/* renamed from: com.yandex.metrica.impl.ob.jb  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C1633jb {

    /* renamed from: a  reason: collision with root package name */
    private final M0 f14996a;

    /* renamed from: com.yandex.metrica.impl.ob.jb$a */
    /* loaded from: classes5.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final boolean f14997a;

        /* renamed from: b  reason: collision with root package name */
        private final int f14998b;

        /* renamed from: c  reason: collision with root package name */
        private final int f14999c;

        /* renamed from: d  reason: collision with root package name */
        private final String f15000d;

        public a() {
            this(false, 0, 0, null, 15);
        }

        public a(boolean z, int i, int i2, String str) {
            this.f14997a = z;
            this.f14998b = i;
            this.f14999c = i2;
            this.f15000d = str;
        }

        public final String a() {
            return this.f15000d;
        }

        public final int b() {
            return this.f14998b;
        }

        public final int c() {
            return this.f14999c;
        }

        public final boolean d() {
            return this.f14997a;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (obj instanceof a) {
                    a aVar = (a) obj;
                    return this.f14997a == aVar.f14997a && this.f14998b == aVar.f14998b && this.f14999c == aVar.f14999c && Intrinsics.areEqual(this.f15000d, aVar.f15000d);
                }
                return false;
            }
            return true;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v1, types: [int] */
        /* JADX WARN: Type inference failed for: r0v8 */
        /* JADX WARN: Type inference failed for: r0v9 */
        public int hashCode() {
            boolean z = this.f14997a;
            ?? r0 = z;
            if (z) {
                r0 = 1;
            }
            int i = ((((r0 * 31) + this.f14998b) * 31) + this.f14999c) * 31;
            String str = this.f15000d;
            return i + (str != null ? str.hashCode() : 0);
        }

        public String toString() {
            return "RequestReport(success=" + this.f14997a + ", httpStatus=" + this.f14998b + ", size=" + this.f14999c + ", failureReason=" + this.f15000d + ")";
        }

        public /* synthetic */ a(boolean z, int i, int i2, String str, int i3) {
            this((i3 & 1) != 0 ? false : z, (i3 & 2) != 0 ? 0 : i, (i3 & 4) != 0 ? 0 : i2, null);
        }
    }

    public C1633jb(Uh uh, M0 m0) {
        this.f14996a = uh.e() ? m0 : null;
    }

    public final void a(a aVar) {
        M0 m0 = this.f14996a;
        if (m0 != null) {
            Pair[] pairArr = new Pair[3];
            pairArr[0] = TuplesKt.to("status", aVar.d() ? "OK" : "FAILED");
            pairArr[1] = TuplesKt.to("http_status", Integer.valueOf(aVar.b()));
            pairArr[2] = TuplesKt.to("size", Integer.valueOf(aVar.c()));
            Map mutableMapOf = MapsKt.mutableMapOf(pairArr);
            String a2 = aVar.a();
            if (a2 != null) {
                mutableMapOf.put(IronSourceConstants.EVENTS_ERROR_REASON, a2);
            }
            m0.reportEvent("egress_status", MapsKt.toMap(mutableMapOf));
        }
    }
}
