package com.yandex.metrica.impl.ob;

import android.util.Pair;
import com.yandex.metrica.impl.ob.C1840rl;
/* loaded from: classes5.dex */
class Ak {

    /* renamed from: a  reason: collision with root package name */
    private final C1617ik f12643a;

    /* renamed from: b  reason: collision with root package name */
    private final C1935vk f12644b;

    /* renamed from: c  reason: collision with root package name */
    private final int f12645c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public Ak(AbstractC2007yk<?> abstractC2007yk, int i) {
        this(abstractC2007yk, i, new C1617ik(abstractC2007yk.b()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1840rl.b a(String str) {
        if (str != null) {
            Pair<Boolean, C1840rl.b> a2 = this.f12644b.a(this.f12645c, str);
            if (a2 != null) {
                return (C1840rl.b) a2.second;
            }
            C1840rl.b a3 = this.f12643a.a(str);
            this.f12644b.a(this.f12645c, str, a3 != null, a3);
            return a3;
        }
        return null;
    }

    Ak(AbstractC2007yk<?> abstractC2007yk, int i, C1617ik c1617ik) {
        this.f12645c = i;
        this.f12643a = c1617ik;
        this.f12644b = abstractC2007yk.a();
    }
}
