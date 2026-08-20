package com.appodeal.ads.initializing;

import java.util.ArrayList;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes2.dex */
public final class b implements a {

    /* renamed from: a  reason: collision with root package name */
    public final ArrayList f6742a = new ArrayList();

    @Override // com.appodeal.ads.initializing.a
    public final ArrayList a() {
        return this.f6742a;
    }

    @Override // com.appodeal.ads.initializing.a
    public final void a(ApdInitializationError error) {
        Intrinsics.checkNotNullParameter(error, "error");
        this.f6742a.add(error);
    }

    @Override // com.appodeal.ads.initializing.a
    public final void clear() {
        this.f6742a.clear();
    }
}
