package com.yandex.metrica.impl.ob;

import android.content.Context;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public class S2 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ R2 f13845a;

    /* loaded from: classes5.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Context context;
            context = S2.this.f13845a.f13776a;
            C1764oh.a(context);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public S2(R2 r2) {
        this.f13845a = r2;
    }

    @Override // java.lang.Runnable
    public void run() {
        Im im;
        im = this.f13845a.f13780e;
        im.a().execute(new a());
    }
}
