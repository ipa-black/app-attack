package com.appodeal.ads.regulator;

import com.appodeal.consent.Consent;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes2.dex */
public interface b {

    /* loaded from: classes2.dex */
    public static final class a implements b {

        /* renamed from: a  reason: collision with root package name */
        public static final a f7385a = new a();
    }

    /* renamed from: com.appodeal.ads.regulator.b$b  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static final class C0139b implements b {

        /* renamed from: a  reason: collision with root package name */
        public static final C0139b f7386a = new C0139b();
    }

    /* loaded from: classes2.dex */
    public static final class c implements b {

        /* renamed from: a  reason: collision with root package name */
        public static final c f7387a = new c();
    }

    /* loaded from: classes2.dex */
    public static final class d implements b {

        /* renamed from: a  reason: collision with root package name */
        public static final d f7388a = new d();
    }

    /* loaded from: classes2.dex */
    public static final class e implements b {

        /* renamed from: a  reason: collision with root package name */
        public static final e f7389a = new e();
    }

    /* loaded from: classes2.dex */
    public interface f extends b {

        /* loaded from: classes2.dex */
        public static final class a implements f {
            public a(Throwable cause) {
                Intrinsics.checkNotNullParameter(cause, "cause");
            }
        }

        /* renamed from: com.appodeal.ads.regulator.b$f$b  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        public static final class C0140b implements f {

            /* renamed from: a  reason: collision with root package name */
            public final Consent f7390a;

            public C0140b(Consent consent) {
                Intrinsics.checkNotNullParameter(consent, "consent");
                this.f7390a = consent;
            }

            public final Consent a() {
                return this.f7390a;
            }
        }
    }
}
