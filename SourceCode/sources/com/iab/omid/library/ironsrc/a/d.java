package com.iab.omid.library.ironsrc.a;

import android.content.Context;
import android.database.ContentObserver;
import android.media.AudioManager;
import android.os.Handler;
import android.provider.Settings;
/* loaded from: classes2.dex */
public final class d extends ContentObserver {

    /* renamed from: a  reason: collision with root package name */
    private final Context f10365a;

    /* renamed from: b  reason: collision with root package name */
    private final AudioManager f10366b;

    /* renamed from: c  reason: collision with root package name */
    private final a f10367c;

    /* renamed from: d  reason: collision with root package name */
    private final c f10368d;

    /* renamed from: e  reason: collision with root package name */
    private float f10369e;

    public d(Handler handler, Context context, a aVar, c cVar) {
        super(handler);
        this.f10365a = context;
        this.f10366b = (AudioManager) context.getSystemService("audio");
        this.f10367c = aVar;
        this.f10368d = cVar;
    }

    private boolean a(float f2) {
        return f2 != this.f10369e;
    }

    private float c() {
        return this.f10367c.a(this.f10366b.getStreamVolume(3), this.f10366b.getStreamMaxVolume(3));
    }

    private void d() {
        this.f10368d.a(this.f10369e);
    }

    public final void a() {
        this.f10369e = c();
        d();
        this.f10365a.getContentResolver().registerContentObserver(Settings.System.CONTENT_URI, true, this);
    }

    public final void b() {
        this.f10365a.getContentResolver().unregisterContentObserver(this);
    }

    @Override // android.database.ContentObserver
    public final void onChange(boolean z) {
        super.onChange(z);
        float c2 = c();
        if (a(c2)) {
            this.f10369e = c2;
            d();
        }
    }
}
