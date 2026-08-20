package com.google.android.youtube.player.internal;

import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import android.os.RemoteException;
import com.google.android.youtube.player.YouTubeThumbnailView;
import com.google.android.youtube.player.internal.j;
/* loaded from: classes4.dex */
public final class p extends com.google.android.youtube.player.internal.a {

    /* renamed from: a  reason: collision with root package name */
    private final Handler f9757a;

    /* renamed from: b  reason: collision with root package name */
    private b f9758b;

    /* renamed from: c  reason: collision with root package name */
    private k f9759c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f9760d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f9761e;

    /* loaded from: classes4.dex */
    private final class a extends j.a {
        private a() {
        }

        /* synthetic */ a(p pVar, byte b2) {
            this();
        }

        @Override // com.google.android.youtube.player.internal.j
        public final void a(final Bitmap bitmap, final String str, final boolean z, final boolean z2) {
            p.this.f9757a.post(new Runnable() { // from class: com.google.android.youtube.player.internal.p.a.1
                @Override // java.lang.Runnable
                public final void run() {
                    p.this.f9760d = z;
                    p.this.f9761e = z2;
                    p.this.a(bitmap, str);
                }
            });
        }

        @Override // com.google.android.youtube.player.internal.j
        public final void a(final String str, final boolean z, final boolean z2) {
            p.this.f9757a.post(new Runnable() { // from class: com.google.android.youtube.player.internal.p.a.2
                @Override // java.lang.Runnable
                public final void run() {
                    p.this.f9760d = z;
                    p.this.f9761e = z2;
                    p.this.b(str);
                }
            });
        }
    }

    public p(b bVar, YouTubeThumbnailView youTubeThumbnailView) {
        super(youTubeThumbnailView);
        this.f9758b = (b) ab.a(bVar, "connectionClient cannot be null");
        this.f9759c = bVar.a(new a(this, (byte) 0));
        this.f9757a = new Handler(Looper.getMainLooper());
    }

    @Override // com.google.android.youtube.player.internal.a
    public final void a(String str) {
        try {
            this.f9759c.a(str);
        } catch (RemoteException e2) {
            throw new IllegalStateException(e2);
        }
    }

    @Override // com.google.android.youtube.player.internal.a
    public final void a(String str, int i) {
        try {
            this.f9759c.a(str, i);
        } catch (RemoteException e2) {
            throw new IllegalStateException(e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.youtube.player.internal.a
    public final boolean a() {
        return super.a() && this.f9759c != null;
    }

    @Override // com.google.android.youtube.player.internal.a
    public final void c() {
        try {
            this.f9759c.a();
        } catch (RemoteException e2) {
            throw new IllegalStateException(e2);
        }
    }

    @Override // com.google.android.youtube.player.internal.a
    public final void d() {
        try {
            this.f9759c.b();
        } catch (RemoteException e2) {
            throw new IllegalStateException(e2);
        }
    }

    @Override // com.google.android.youtube.player.internal.a
    public final void e() {
        try {
            this.f9759c.c();
        } catch (RemoteException e2) {
            throw new IllegalStateException(e2);
        }
    }

    @Override // com.google.android.youtube.player.internal.a
    public final boolean f() {
        return this.f9761e;
    }

    @Override // com.google.android.youtube.player.internal.a
    public final boolean g() {
        return this.f9760d;
    }

    @Override // com.google.android.youtube.player.internal.a
    public final void h() {
        try {
            this.f9759c.d();
        } catch (RemoteException unused) {
        }
        this.f9758b.d();
        this.f9759c = null;
        this.f9758b = null;
    }
}
