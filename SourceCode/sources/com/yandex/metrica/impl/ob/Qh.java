package com.yandex.metrica.impl.ob;

import com.yandex.metrica.IIdentifierCallback;
import com.yandex.metrica.IParamsCallback;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public class Qh implements Yh {

    /* renamed from: b  reason: collision with root package name */
    private static final IIdentifierCallback f13764b = new a();

    /* renamed from: a  reason: collision with root package name */
    private final AtomicReference<IIdentifierCallback> f13765a;

    /* loaded from: classes5.dex */
    class a implements IIdentifierCallback {
        a() {
        }

        @Override // com.yandex.metrica.IIdentifierCallback
        public void onReceive(Map<String, String> map) {
        }

        @Override // com.yandex.metrica.IIdentifierCallback
        public void onRequestError(IIdentifierCallback.Reason reason) {
        }
    }

    public Qh(IIdentifierCallback iIdentifierCallback) {
        this.f13765a = new AtomicReference<>(iIdentifierCallback);
    }

    @Override // com.yandex.metrica.impl.ob.Yh
    public void a(IParamsCallback.Reason reason, Map<String, W0> map) {
        IIdentifierCallback.Reason reason2;
        IIdentifierCallback andSet = this.f13765a.getAndSet(f13764b);
        int ordinal = reason.ordinal();
        if (ordinal == 1) {
            reason2 = IIdentifierCallback.Reason.NETWORK;
        } else if (ordinal != 2) {
            reason2 = IIdentifierCallback.Reason.UNKNOWN;
        } else {
            reason2 = IIdentifierCallback.Reason.INVALID_RESPONSE;
        }
        andSet.onRequestError(reason2);
    }

    @Override // com.yandex.metrica.impl.ob.Yh
    public void onReceive(Map<String, W0> map) {
        IIdentifierCallback andSet = this.f13765a.getAndSet(f13764b);
        HashMap hashMap = new HashMap();
        for (Map.Entry<String, W0> entry : map.entrySet()) {
            hashMap.put(entry.getKey(), entry.getValue().f14173a);
        }
        andSet.onReceive(hashMap);
    }
}
