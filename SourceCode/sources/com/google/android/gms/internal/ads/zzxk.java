package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.opengl.EGL14;
import android.view.Surface;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzxk extends Surface {
    private static int zzb;
    private static boolean zzc;
    public final boolean zza;
    private final zzxi zzd;
    private boolean zze;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzxk(zzxi zzxiVar, SurfaceTexture surfaceTexture, boolean z, zzxj zzxjVar) {
        super(surfaceTexture);
        this.zzd = zzxiVar;
        this.zza = z;
    }

    public static zzxk zza(Context context, boolean z) {
        boolean z2 = true;
        if (z && !zzb(context)) {
            z2 = false;
        }
        zzdd.zzf(z2);
        return new zzxi().zza(z ? zzb : 0);
    }

    public static synchronized boolean zzb(Context context) {
        int i;
        String eglQueryString;
        int i2;
        synchronized (zzxk.class) {
            if (!zzc) {
                if (zzen.zza >= 24 && ((zzen.zza >= 26 || (!"samsung".equals(zzen.zzc) && !"XT1650".equals(zzen.zzd))) && ((zzen.zza >= 26 || context.getPackageManager().hasSystemFeature("android.hardware.vr.high_performance")) && (eglQueryString = EGL14.eglQueryString(EGL14.eglGetDisplay(0), 12373)) != null && eglQueryString.contains("EGL_EXT_protected_content")))) {
                    String eglQueryString2 = EGL14.eglQueryString(EGL14.eglGetDisplay(0), 12373);
                    i2 = 2;
                    if (eglQueryString2 != null && eglQueryString2.contains("EGL_KHR_surfaceless_context")) {
                        i2 = 1;
                    }
                    zzb = i2;
                    zzc = true;
                }
                i2 = 0;
                zzb = i2;
                zzc = true;
            }
            i = zzb;
        }
        return i != 0;
    }

    @Override // android.view.Surface
    public final void release() {
        super.release();
        synchronized (this.zzd) {
            if (!this.zze) {
                this.zzd.zzb();
                this.zze = true;
            }
        }
    }
}
