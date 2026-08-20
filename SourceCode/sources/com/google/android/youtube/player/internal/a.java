package com.google.android.youtube.player.internal;

import android.graphics.Bitmap;
import com.google.android.youtube.player.YouTubeThumbnailLoader;
import com.google.android.youtube.player.YouTubeThumbnailView;
import java.lang.ref.WeakReference;
import java.util.NoSuchElementException;
/* loaded from: classes4.dex */
public abstract class a implements YouTubeThumbnailLoader {

    /* renamed from: a  reason: collision with root package name */
    private final WeakReference<YouTubeThumbnailView> f9728a;

    /* renamed from: b  reason: collision with root package name */
    private YouTubeThumbnailLoader.OnThumbnailLoadedListener f9729b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f9730c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f9731d;

    public a(YouTubeThumbnailView youTubeThumbnailView) {
        this.f9728a = new WeakReference<>(ab.a(youTubeThumbnailView));
    }

    private void i() {
        if (!a()) {
            throw new IllegalStateException("This YouTubeThumbnailLoader has been released");
        }
    }

    public final void a(Bitmap bitmap, String str) {
        YouTubeThumbnailView youTubeThumbnailView = this.f9728a.get();
        if (!a() || youTubeThumbnailView == null) {
            return;
        }
        youTubeThumbnailView.setImageBitmap(bitmap);
        YouTubeThumbnailLoader.OnThumbnailLoadedListener onThumbnailLoadedListener = this.f9729b;
        if (onThumbnailLoadedListener != null) {
            onThumbnailLoadedListener.onThumbnailLoaded(youTubeThumbnailView, str);
        }
    }

    public abstract void a(String str);

    public abstract void a(String str, int i);

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean a() {
        return !this.f9731d;
    }

    public final void b() {
        if (a()) {
            y.a("The finalize() method for a YouTubeThumbnailLoader has work to do. You should have called release().", new Object[0]);
            release();
        }
    }

    public final void b(String str) {
        YouTubeThumbnailLoader.ErrorReason errorReason;
        YouTubeThumbnailView youTubeThumbnailView = this.f9728a.get();
        if (!a() || this.f9729b == null || youTubeThumbnailView == null) {
            return;
        }
        try {
            errorReason = YouTubeThumbnailLoader.ErrorReason.valueOf(str);
        } catch (IllegalArgumentException | NullPointerException unused) {
            errorReason = YouTubeThumbnailLoader.ErrorReason.UNKNOWN;
        }
        this.f9729b.onThumbnailError(youTubeThumbnailView, errorReason);
    }

    public abstract void c();

    public abstract void d();

    public abstract void e();

    public abstract boolean f();

    @Override // com.google.android.youtube.player.YouTubeThumbnailLoader
    public final void first() {
        i();
        if (!this.f9730c) {
            throw new IllegalStateException("Must call setPlaylist first");
        }
        e();
    }

    public abstract boolean g();

    public abstract void h();

    @Override // com.google.android.youtube.player.YouTubeThumbnailLoader
    public final boolean hasNext() {
        i();
        return f();
    }

    @Override // com.google.android.youtube.player.YouTubeThumbnailLoader
    public final boolean hasPrevious() {
        i();
        return g();
    }

    @Override // com.google.android.youtube.player.YouTubeThumbnailLoader
    public final void next() {
        i();
        if (!this.f9730c) {
            throw new IllegalStateException("Must call setPlaylist first");
        }
        if (!f()) {
            throw new NoSuchElementException("Called next at end of playlist");
        }
        c();
    }

    @Override // com.google.android.youtube.player.YouTubeThumbnailLoader
    public final void previous() {
        i();
        if (!this.f9730c) {
            throw new IllegalStateException("Must call setPlaylist first");
        }
        if (!g()) {
            throw new NoSuchElementException("Called previous at start of playlist");
        }
        d();
    }

    @Override // com.google.android.youtube.player.YouTubeThumbnailLoader
    public final void release() {
        if (a()) {
            this.f9731d = true;
            this.f9729b = null;
            h();
        }
    }

    @Override // com.google.android.youtube.player.YouTubeThumbnailLoader
    public final void setOnThumbnailLoadedListener(YouTubeThumbnailLoader.OnThumbnailLoadedListener onThumbnailLoadedListener) {
        i();
        this.f9729b = onThumbnailLoadedListener;
    }

    @Override // com.google.android.youtube.player.YouTubeThumbnailLoader
    public final void setPlaylist(String str) {
        setPlaylist(str, 0);
    }

    @Override // com.google.android.youtube.player.YouTubeThumbnailLoader
    public final void setPlaylist(String str, int i) {
        i();
        this.f9730c = true;
        a(str, i);
    }

    @Override // com.google.android.youtube.player.YouTubeThumbnailLoader
    public final void setVideo(String str) {
        i();
        this.f9730c = false;
        a(str);
    }
}
