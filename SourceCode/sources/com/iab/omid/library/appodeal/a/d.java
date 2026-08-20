package com.iab.omid.library.appodeal.a;

import android.content.Context;
import android.database.ContentObserver;
import android.media.AudioManager;
import android.os.Handler;
import android.provider.Settings;
/* loaded from: classes2.dex */
public final class d extends ContentObserver {

    /* renamed from: a  reason: collision with root package name */
    private final Context f10143a;

    /* renamed from: b  reason: collision with root package name */
    private final AudioManager f10144b;

    /* renamed from: c  reason: collision with root package name */
    private final a f10145c;

    /* renamed from: d  reason: collision with root package name */
    private final c f10146d;

    /* renamed from: e  reason: collision with root package name */
    private float f10147e;

    public d(Handler handler, Context context, a aVar, c cVar) {
        super(handler);
        this.f10143a = context;
        this.f10144b = (AudioManager) context.getSystemService("audio");
        this.f10145c = aVar;
        this.f10146d = cVar;
    }

    private boolean a(float f2) {
        return f2 != this.f10147e;
    }

    private float c() {
        return this.f10145c.a(this.f10144b.getStreamVolume(3), this.f10144b.getStreamMaxVolume(3));
    }

    private void d() {
        this.f10146d.a(this.f10147e);
    }

    public void a() {
        this.f10147e = c();
        d();
        this.f10143a.getContentResolver().registerContentObserver(Settings.System.CONTENT_URI, true, this);
    }

    public void b() {
        this.f10143a.getContentResolver().unregisterContentObserver(this);
    }

    @Override // android.database.ContentObserver
    public void onChange(boolean z) {
        super.onChange(z);
        float c2 = c();
        if (a(c2)) {
            this.f10147e = c2;
            d();
        }
    }
}
