package com.iab.omid.library.adcolony.a;

import android.content.Context;
import android.database.ContentObserver;
import android.media.AudioManager;
import android.os.Handler;
import android.provider.Settings;
/* loaded from: classes2.dex */
public final class d extends ContentObserver {

    /* renamed from: a  reason: collision with root package name */
    private final Context f9815a;

    /* renamed from: b  reason: collision with root package name */
    private final AudioManager f9816b;

    /* renamed from: c  reason: collision with root package name */
    private final a f9817c;

    /* renamed from: d  reason: collision with root package name */
    private final c f9818d;

    /* renamed from: e  reason: collision with root package name */
    private float f9819e;

    public d(Handler handler, Context context, a aVar, c cVar) {
        super(handler);
        this.f9815a = context;
        this.f9816b = (AudioManager) context.getSystemService("audio");
        this.f9817c = aVar;
        this.f9818d = cVar;
    }

    private boolean a(float f2) {
        return f2 != this.f9819e;
    }

    private float c() {
        return this.f9817c.a(this.f9816b.getStreamVolume(3), this.f9816b.getStreamMaxVolume(3));
    }

    private void d() {
        this.f9818d.a(this.f9819e);
    }

    public void a() {
        this.f9819e = c();
        d();
        this.f9815a.getContentResolver().registerContentObserver(Settings.System.CONTENT_URI, true, this);
    }

    public void b() {
        this.f9815a.getContentResolver().unregisterContentObserver(this);
    }

    @Override // android.database.ContentObserver
    public void onChange(boolean z) {
        super.onChange(z);
        float c2 = c();
        if (a(c2)) {
            this.f9819e = c2;
            d();
        }
    }
}
