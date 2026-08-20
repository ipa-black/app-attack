package com.iab.omid.library.bytedance2.devicevolume;

import android.content.Context;
import android.database.ContentObserver;
import android.media.AudioManager;
import android.os.Handler;
import android.provider.Settings;
/* loaded from: classes2.dex */
public final class d extends ContentObserver {

    /* renamed from: a  reason: collision with root package name */
    private final Context f10270a;

    /* renamed from: b  reason: collision with root package name */
    private final AudioManager f10271b;

    /* renamed from: c  reason: collision with root package name */
    private final a f10272c;

    /* renamed from: d  reason: collision with root package name */
    private final c f10273d;

    /* renamed from: e  reason: collision with root package name */
    private float f10274e;

    public d(Handler handler, Context context, a aVar, c cVar) {
        super(handler);
        this.f10270a = context;
        this.f10271b = (AudioManager) context.getSystemService("audio");
        this.f10272c = aVar;
        this.f10273d = cVar;
    }

    private float a() {
        return this.f10272c.a(this.f10271b.getStreamVolume(3), this.f10271b.getStreamMaxVolume(3));
    }

    private boolean a(float f2) {
        return f2 != this.f10274e;
    }

    private void b() {
        this.f10273d.a(this.f10274e);
    }

    public void c() {
        this.f10274e = a();
        b();
        this.f10270a.getContentResolver().registerContentObserver(Settings.System.CONTENT_URI, true, this);
    }

    public void d() {
        this.f10270a.getContentResolver().unregisterContentObserver(this);
    }

    @Override // android.database.ContentObserver
    public void onChange(boolean z) {
        super.onChange(z);
        float a2 = a();
        if (a(a2)) {
            this.f10274e = a2;
            b();
        }
    }
}
