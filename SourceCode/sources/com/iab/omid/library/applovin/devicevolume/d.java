package com.iab.omid.library.applovin.devicevolume;

import android.content.Context;
import android.database.ContentObserver;
import android.media.AudioManager;
import android.os.Handler;
import android.provider.Settings;
/* loaded from: classes2.dex */
public final class d extends ContentObserver {

    /* renamed from: a  reason: collision with root package name */
    private final Context f10049a;

    /* renamed from: b  reason: collision with root package name */
    private final AudioManager f10050b;

    /* renamed from: c  reason: collision with root package name */
    private final a f10051c;

    /* renamed from: d  reason: collision with root package name */
    private final c f10052d;

    /* renamed from: e  reason: collision with root package name */
    private float f10053e;

    public d(Handler handler, Context context, a aVar, c cVar) {
        super(handler);
        this.f10049a = context;
        this.f10050b = (AudioManager) context.getSystemService("audio");
        this.f10051c = aVar;
        this.f10052d = cVar;
    }

    private float a() {
        return this.f10051c.a(this.f10050b.getStreamVolume(3), this.f10050b.getStreamMaxVolume(3));
    }

    private boolean a(float f2) {
        return f2 != this.f10053e;
    }

    private void b() {
        this.f10052d.a(this.f10053e);
    }

    public void c() {
        this.f10053e = a();
        b();
        this.f10049a.getContentResolver().registerContentObserver(Settings.System.CONTENT_URI, true, this);
    }

    public void d() {
        this.f10049a.getContentResolver().unregisterContentObserver(this);
    }

    @Override // android.database.ContentObserver
    public void onChange(boolean z) {
        super.onChange(z);
        float a2 = a();
        if (a(a2)) {
            this.f10053e = a2;
            b();
        }
    }
}
