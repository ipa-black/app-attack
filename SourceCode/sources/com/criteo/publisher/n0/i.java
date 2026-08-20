package com.criteo.publisher.n0;

import android.os.Bundle;
import android.os.Handler;
import android.os.ResultReceiver;
/* compiled from: CriteoResultReceiver.java */
/* loaded from: classes2.dex */
public class i extends ResultReceiver {

    /* renamed from: a  reason: collision with root package name */
    private final com.criteo.publisher.m0.d f9226a;

    public i(Handler handler, com.criteo.publisher.m0.d dVar) {
        super(handler);
        this.f9226a = dVar;
    }

    @Override // android.os.ResultReceiver
    protected void onReceiveResult(int i, Bundle bundle) {
        if (i == 100) {
            int i2 = bundle.getInt("Action");
            if (i2 == 201) {
                this.f9226a.a(com.criteo.publisher.p.CLOSE);
            } else if (i2 != 202) {
            } else {
                this.f9226a.a(com.criteo.publisher.p.CLICK);
            }
        }
    }
}
