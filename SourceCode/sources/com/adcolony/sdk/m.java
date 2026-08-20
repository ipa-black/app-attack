package com.adcolony.sdk;

import com.google.android.exoplayer2.source.rtsp.SessionDescription;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class m implements j0 {

    /* loaded from: classes.dex */
    class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f418a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f419b;

        a(m mVar, String str, String str2) {
            this.f418a = str;
            this.f419b = str2;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                AdColonyCustomMessageListener adColonyCustomMessageListener = com.adcolony.sdk.a.b().m().get(this.f418a);
                if (adColonyCustomMessageListener != null) {
                    adColonyCustomMessageListener.onAdColonyCustomMessage(new AdColonyCustomMessage(this.f418a, this.f419b));
                }
            } catch (RuntimeException unused) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public m() {
        com.adcolony.sdk.a.a("CustomMessage.controller_send", this);
    }

    @Override // com.adcolony.sdk.j0
    public void a(h0 h0Var) {
        f1 a2 = h0Var.a();
        z0.b(new a(this, c0.h(a2, SessionDescription.ATTR_TYPE), c0.h(a2, "message")));
    }
}
