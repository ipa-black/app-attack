package com.appodeal.ads;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
/* loaded from: classes.dex */
public final class o0 extends Lambda implements Function0<CoroutineScope> {

    /* renamed from: a  reason: collision with root package name */
    public static final o0 f7262a = new o0();

    public o0() {
        super(0);
    }

    @Override // kotlin.jvm.functions.Function0
    public final CoroutineScope invoke() {
        return CoroutineScopeKt.CoroutineScope(Dispatchers.getMain());
    }
}
