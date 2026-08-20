package com.yandex.metrica.impl.ob;

import android.app.Activity;
import com.yandex.metrica.uiaccessor.a;
/* loaded from: classes5.dex */
class Ek {

    /* loaded from: classes5.dex */
    class a implements a.InterfaceC0360a {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ InterfaceC1719mm f12900a;

        a(Ek ek, InterfaceC1719mm interfaceC1719mm) {
            this.f12900a = interfaceC1719mm;
        }

        @Override // com.yandex.metrica.uiaccessor.a.InterfaceC0360a
        public void fragmentAttached(Activity activity) {
            this.f12900a.b(activity);
        }
    }

    /* loaded from: classes5.dex */
    class b implements com.yandex.metrica.uiaccessor.b {
        b(Ek ek) {
        }

        @Override // com.yandex.metrica.uiaccessor.b
        public void subscribe(Activity activity) throws Throwable {
        }

        @Override // com.yandex.metrica.uiaccessor.b
        public void unsubscribe(Activity activity) throws Throwable {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public com.yandex.metrica.uiaccessor.b a(InterfaceC1719mm<Activity> interfaceC1719mm) {
        com.yandex.metrica.uiaccessor.a aVar;
        try {
            aVar = new com.yandex.metrica.uiaccessor.a(new a(this, interfaceC1719mm));
        } catch (Throwable unused) {
            aVar = null;
        }
        return aVar == null ? new b(this) : aVar;
    }
}
