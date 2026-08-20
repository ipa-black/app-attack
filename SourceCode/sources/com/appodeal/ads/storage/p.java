package com.appodeal.ads.storage;

import android.content.SharedPreferences;
import com.appodeal.ads.modules.common.internal.context.ContextProvider;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* loaded from: classes2.dex */
public final class p extends Lambda implements Function0<SharedPreferences> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ ContextProvider f7665a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ String f7666b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public p(com.appodeal.ads.context.b bVar, String str) {
        super(0);
        this.f7665a = bVar;
        this.f7666b = str;
    }

    @Override // kotlin.jvm.functions.Function0
    public final SharedPreferences invoke() {
        return this.f7665a.getApplicationContext().getSharedPreferences(this.f7666b, 0);
    }
}
