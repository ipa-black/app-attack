package com.google.android.gms.internal.ads;

import androidx.exifinterface.media.ExifInterface;
import java.lang.reflect.InvocationTargetException;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzark extends zzarx {
    private static volatile String zzi;
    private static final Object zzj = new Object();

    public zzark(zzaqj zzaqjVar, String str, String str2, zzaml zzamlVar, int i, int i2) {
        super(zzaqjVar, "azGRTaieBebLUCBtXxWiGC8ntdSjezuXnKrD7NOMrfVnrrLI+ziOvss+bqlk4xLN", "0tQXY1xo2ukrM9W+s0u6j2Mh+vSCsclEF17Hl/ROszM=", zzamlVar, i, 1);
    }

    @Override // com.google.android.gms.internal.ads.zzarx
    protected final void zza() throws IllegalAccessException, InvocationTargetException {
        this.zze.zzB(ExifInterface.LONGITUDE_EAST);
        if (zzi == null) {
            synchronized (zzj) {
                if (zzi == null) {
                    zzi = (String) this.zzf.invoke(null, new Object[0]);
                }
            }
        }
        synchronized (this.zze) {
            this.zze.zzB(zzi);
        }
    }
}
