package com.adcolony.sdk;

import com.google.android.exoplayer2.source.rtsp.SessionDescription;
/* loaded from: classes.dex */
public class AdColonyCustomMessage {

    /* renamed from: a  reason: collision with root package name */
    private String f80a;

    /* renamed from: b  reason: collision with root package name */
    private String f81b;

    /* loaded from: classes.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            AdColony.b();
            f1 b2 = c0.b();
            c0.a(b2, SessionDescription.ATTR_TYPE, AdColonyCustomMessage.this.f80a);
            c0.a(b2, "message", AdColonyCustomMessage.this.f81b);
            new h0("CustomMessage.native_send", 1, b2).c();
        }
    }

    public AdColonyCustomMessage(String str, String str2) {
        if (z0.e(str) || z0.e(str2)) {
            this.f80a = str;
            this.f81b = str2;
        }
    }

    public String getMessage() {
        return this.f81b;
    }

    public String getType() {
        return this.f80a;
    }

    public void send() {
        AdColony.a(new a());
    }

    public AdColonyCustomMessage set(String str, String str2) {
        this.f80a = str;
        this.f81b = str2;
        return this;
    }
}
