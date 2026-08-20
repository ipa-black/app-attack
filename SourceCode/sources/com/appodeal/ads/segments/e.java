package com.appodeal.ads.segments;

import java.util.Random;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* loaded from: classes2.dex */
public final class e extends Lambda implements Function0<Integer> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ f f7500a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e(f fVar) {
        super(0);
        this.f7500a = fVar;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Integer invoke() {
        int intValue;
        Integer valueOf = Integer.valueOf(this.f7500a.f7501a.b());
        if (valueOf.intValue() == -1) {
            valueOf = null;
        }
        if (valueOf == null) {
            Integer valueOf2 = Integer.valueOf(new Random().nextInt(100) + 1);
            f fVar = this.f7500a;
            fVar.f7501a.a(valueOf2.intValue());
            intValue = valueOf2.intValue();
        } else {
            intValue = valueOf.intValue();
        }
        return Integer.valueOf(intValue);
    }
}
