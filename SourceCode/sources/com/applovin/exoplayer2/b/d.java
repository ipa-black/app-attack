package com.applovin.exoplayer2.b;

import android.media.AudioAttributes;
import android.os.Bundle;
import com.applovin.exoplayer2.g;
import com.applovin.exoplayer2.l.ai;
import com.ironsource.mediationsdk.logger.IronSourceError;
/* loaded from: classes.dex */
public final class d implements com.applovin.exoplayer2.g {

    /* renamed from: a  reason: collision with root package name */
    public static final d f1467a = new a().a();

    /* renamed from: f  reason: collision with root package name */
    public static final g.a<d> f1468f = new g.a() { // from class: com.applovin.exoplayer2.b.d$$ExternalSyntheticLambda0
        @Override // com.applovin.exoplayer2.g.a
        public final com.applovin.exoplayer2.g fromBundle(Bundle bundle) {
            d a2;
            a2 = d.a(bundle);
            return a2;
        }
    };

    /* renamed from: b  reason: collision with root package name */
    public final int f1469b;

    /* renamed from: c  reason: collision with root package name */
    public final int f1470c;

    /* renamed from: d  reason: collision with root package name */
    public final int f1471d;

    /* renamed from: e  reason: collision with root package name */
    public final int f1472e;

    /* renamed from: g  reason: collision with root package name */
    private AudioAttributes f1473g;

    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private int f1474a = 0;

        /* renamed from: b  reason: collision with root package name */
        private int f1475b = 0;

        /* renamed from: c  reason: collision with root package name */
        private int f1476c = 1;

        /* renamed from: d  reason: collision with root package name */
        private int f1477d = 1;

        public a a(int i) {
            this.f1474a = i;
            return this;
        }

        public d a() {
            return new d(this.f1474a, this.f1475b, this.f1476c, this.f1477d);
        }

        public a b(int i) {
            this.f1475b = i;
            return this;
        }

        public a c(int i) {
            this.f1476c = i;
            return this;
        }

        public a d(int i) {
            this.f1477d = i;
            return this;
        }
    }

    private d(int i, int i2, int i3, int i4) {
        this.f1469b = i;
        this.f1470c = i2;
        this.f1471d = i3;
        this.f1472e = i4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ d a(Bundle bundle) {
        a aVar = new a();
        if (bundle.containsKey(a(0))) {
            aVar.a(bundle.getInt(a(0)));
        }
        if (bundle.containsKey(a(1))) {
            aVar.b(bundle.getInt(a(1)));
        }
        if (bundle.containsKey(a(2))) {
            aVar.c(bundle.getInt(a(2)));
        }
        if (bundle.containsKey(a(3))) {
            aVar.d(bundle.getInt(a(3)));
        }
        return aVar.a();
    }

    private static String a(int i) {
        return Integer.toString(i, 36);
    }

    public AudioAttributes a() {
        if (this.f1473g == null) {
            AudioAttributes.Builder usage = new AudioAttributes.Builder().setContentType(this.f1469b).setFlags(this.f1470c).setUsage(this.f1471d);
            if (ai.f3781a >= 29) {
                usage.setAllowedCapturePolicy(this.f1472e);
            }
            this.f1473g = usage.build();
        }
        return this.f1473g;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        d dVar = (d) obj;
        return this.f1469b == dVar.f1469b && this.f1470c == dVar.f1470c && this.f1471d == dVar.f1471d && this.f1472e == dVar.f1472e;
    }

    public int hashCode() {
        return ((((((IronSourceError.ERROR_NON_EXISTENT_INSTANCE + this.f1469b) * 31) + this.f1470c) * 31) + this.f1471d) * 31) + this.f1472e;
    }
}
