package com.yandex.metrica.network.impl;

import javax.net.ssl.HttpsURLConnection;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* loaded from: classes5.dex */
final class b extends Lambda implements Function0 {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ HttpsURLConnection f16219a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(HttpsURLConnection httpsURLConnection) {
        super(0);
        this.f16219a = httpsURLConnection;
    }

    @Override // kotlin.jvm.functions.Function0
    public Object invoke() {
        return this.f16219a.getErrorStream();
    }
}
