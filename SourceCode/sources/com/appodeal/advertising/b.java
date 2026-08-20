package com.appodeal.advertising;

import com.appodeal.advertising.AdvertisingInfo;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes2.dex */
public interface b {

    /* loaded from: classes2.dex */
    public static final class a implements b {

        /* renamed from: a  reason: collision with root package name */
        public final AdvertisingInfo.AdvertisingProfile f8034a;

        public a(AdvertisingInfo.AdvertisingProfile advertisingProfile) {
            Intrinsics.checkNotNullParameter(advertisingProfile, "advertisingProfile");
            this.f8034a = advertisingProfile;
        }

        public final AdvertisingInfo.AdvertisingProfile a() {
            return this.f8034a;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof a) && Intrinsics.areEqual(this.f8034a, ((a) obj).f8034a);
        }

        public final int hashCode() {
            return this.f8034a.hashCode();
        }

        public final String toString() {
            return "Initialized(advertisingProfile=" + this.f8034a + ')';
        }
    }

    /* renamed from: com.appodeal.advertising.b$b  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static final class C0153b implements b {

        /* renamed from: a  reason: collision with root package name */
        public static final C0153b f8035a = new C0153b();
    }

    /* loaded from: classes2.dex */
    public static final class c implements b {

        /* renamed from: a  reason: collision with root package name */
        public static final c f8036a = new c();
    }
}
