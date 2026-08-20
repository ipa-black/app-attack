package com.iab.omid.library.amazon.a;

import android.content.Context;
import android.database.ContentObserver;
import android.media.AudioManager;
import android.os.Handler;
import android.provider.Settings;
/* loaded from: classes2.dex */
public final class d extends ContentObserver {

    /* renamed from: a  reason: collision with root package name */
    private final Context f9922a;

    /* renamed from: b  reason: collision with root package name */
    private final AudioManager f9923b;

    /* renamed from: c  reason: collision with root package name */
    private final a f9924c;

    /* renamed from: d  reason: collision with root package name */
    private final c f9925d;

    /* renamed from: e  reason: collision with root package name */
    private float f9926e;

    public d(Handler handler, Context context, a aVar, c cVar) {
        super(handler);
        this.f9922a = context;
        this.f9923b = (AudioManager) context.getSystemService("audio");
        this.f9924c = aVar;
        this.f9925d = cVar;
    }

    private boolean a(float f2) {
        return f2 != this.f9926e;
    }

    private float c() {
        return this.f9924c.a(this.f9923b.getStreamVolume(3), this.f9923b.getStreamMaxVolume(3));
    }

    private void d() {
        this.f9925d.a(this.f9926e);
    }

    public void a() {
        this.f9926e = c();
        d();
        this.f9922a.getContentResolver().registerContentObserver(Settings.System.CONTENT_URI, true, this);
    }

    public void b() {
        this.f9922a.getContentResolver().unregisterContentObserver(this);
    }

    @Override // android.database.ContentObserver
    public void onChange(boolean z) {
        super.onChange(z);
        float c2 = c();
        if (a(c2)) {
            this.f9926e = c2;
            d();
        }
    }
}
