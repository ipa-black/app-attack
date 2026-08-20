package com.yandex.metrica.rtm.wrapper;

import android.content.Context;
import com.yandex.metrica.rtm.client.ExceptionProcessor;
/* loaded from: classes5.dex */
public class h implements e {

    /* renamed from: a  reason: collision with root package name */
    private final ExceptionProcessor f16321a;

    public h(i iVar, Context context) throws Throwable {
        this(new ExceptionProcessor(context, new a(iVar)));
    }

    @Override // com.yandex.metrica.rtm.wrapper.e
    public void reportException(String str, Throwable th) {
        try {
            this.f16321a.onException(str, th);
        } catch (Throwable unused) {
        }
    }

    h(ExceptionProcessor exceptionProcessor) throws Throwable {
        this.f16321a = exceptionProcessor;
    }
}
