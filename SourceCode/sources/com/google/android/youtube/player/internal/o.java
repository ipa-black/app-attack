package com.google.android.youtube.player.internal;

import android.content.Context;
import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.youtube.player.internal.l;
import com.google.android.youtube.player.internal.r;
import com.google.android.youtube.player.internal.t;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
/* loaded from: classes4.dex */
public final class o extends r<l> implements b {

    /* renamed from: b  reason: collision with root package name */
    private final String f9753b;

    /* renamed from: c  reason: collision with root package name */
    private final String f9754c;

    /* renamed from: d  reason: collision with root package name */
    private final String f9755d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f9756e;

    public o(Context context, String str, String str2, String str3, t.a aVar, t.b bVar) {
        super(context, aVar, bVar);
        this.f9753b = (String) ab.a(str);
        this.f9754c = ab.a(str2, (Object) "callingPackage cannot be null or empty");
        this.f9755d = ab.a(str3, (Object) "callingAppVersion cannot be null or empty");
    }

    private final void k() {
        i();
        if (this.f9756e) {
            throw new IllegalStateException("Connection client has been released");
        }
    }

    @Override // com.google.android.youtube.player.internal.b
    public final IBinder a() {
        k();
        try {
            return j().a();
        } catch (RemoteException e2) {
            throw new IllegalStateException(e2);
        }
    }

    @Override // com.google.android.youtube.player.internal.r
    protected final /* synthetic */ l a(IBinder iBinder) {
        return l.a.a(iBinder);
    }

    @Override // com.google.android.youtube.player.internal.b
    public final k a(j jVar) {
        k();
        try {
            return j().a(jVar);
        } catch (RemoteException e2) {
            throw new IllegalStateException(e2);
        }
    }

    @Override // com.google.android.youtube.player.internal.r
    protected final void a(i iVar, r.d dVar) throws RemoteException {
        iVar.a(dVar, IronSourceConstants.RV_INSTANCE_SHOW_FAILED, this.f9754c, this.f9755d, this.f9753b, null);
    }

    @Override // com.google.android.youtube.player.internal.b
    public final void a(boolean z) {
        if (f()) {
            try {
                j().a(z);
            } catch (RemoteException unused) {
            }
            this.f9756e = true;
        }
    }

    @Override // com.google.android.youtube.player.internal.r
    protected final String b() {
        return "com.google.android.youtube.player.internal.IYouTubeService";
    }

    @Override // com.google.android.youtube.player.internal.r
    protected final String c() {
        return "com.google.android.youtube.api.service.START";
    }

    @Override // com.google.android.youtube.player.internal.r, com.google.android.youtube.player.internal.t
    public final void d() {
        if (!this.f9756e) {
            a(true);
        }
        super.d();
    }
}
