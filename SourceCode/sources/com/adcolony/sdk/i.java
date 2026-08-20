package com.adcolony.sdk;

import android.content.Context;
import android.database.ContentObserver;
import android.media.AudioManager;
import android.os.Handler;
import android.provider.Settings;
/* loaded from: classes.dex */
class i extends ContentObserver {

    /* renamed from: a  reason: collision with root package name */
    private AudioManager f344a;

    /* renamed from: b  reason: collision with root package name */
    private AdColonyInterstitial f345b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public i(Handler handler, AdColonyInterstitial adColonyInterstitial) {
        super(handler);
        Context a2 = a.a();
        if (a2 != null) {
            this.f344a = (AudioManager) a2.getSystemService("audio");
            this.f345b = adColonyInterstitial;
            a2.getApplicationContext().getContentResolver().registerContentObserver(Settings.System.CONTENT_URI, true, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a() {
        Context a2 = a.a();
        if (a2 != null) {
            a2.getApplicationContext().getContentResolver().unregisterContentObserver(this);
        }
        this.f345b = null;
        this.f344a = null;
    }

    @Override // android.database.ContentObserver
    public boolean deliverSelfNotifications() {
        return false;
    }

    @Override // android.database.ContentObserver
    public void onChange(boolean z) {
        AdColonyInterstitial adColonyInterstitial;
        if (this.f344a == null || (adColonyInterstitial = this.f345b) == null || adColonyInterstitial.d() == null) {
            return;
        }
        f1 b2 = c0.b();
        c0.a(b2, "audio_percentage", (this.f344a.getStreamVolume(3) / 15.0f) * 100.0f);
        c0.a(b2, "ad_session_id", this.f345b.d().a());
        c0.b(b2, "id", this.f345b.d().c());
        new h0("AdContainer.on_audio_change", this.f345b.d().k(), b2).c();
    }
}
