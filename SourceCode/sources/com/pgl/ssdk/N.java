package com.pgl.ssdk;

import android.os.HandlerThread;
import com.pgl.ssdk.Q;
/* compiled from: HandlerWapper.java */
/* loaded from: classes3.dex */
public class N extends Q implements O {

    /* renamed from: b  reason: collision with root package name */
    private final HandlerThread f12186b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public N(HandlerThread handlerThread, Q.a aVar) {
        super(handlerThread.getLooper(), aVar);
        this.f12186b = handlerThread;
    }

    public void a(String str) {
        HandlerThread handlerThread = this.f12186b;
        if (handlerThread != null) {
            handlerThread.setName(str);
        }
    }
}
