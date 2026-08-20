package com.google.android.gms.internal.ads;

import android.content.Context;
import androidx.exifinterface.media.ExifInterface;
import java.lang.reflect.InvocationTargetException;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzaqx extends zzarx {
    private static final zzary zzi = new zzary();
    private final Context zzj;

    public zzaqx(zzaqj zzaqjVar, String str, String str2, zzaml zzamlVar, int i, int i2, Context context) {
        super(zzaqjVar, "ATj3hbklxV/XiswqkLJ9VlaAJFBsAV/1VJ4eSTnw1AP/96KhgekAXYnIpmljK7wO", "rfBYaobM06JIPnbukgoyOwsb7bCc9rvkUNfR4KOQWHU=", zzamlVar, i, 29);
        this.zzj = context;
    }

    @Override // com.google.android.gms.internal.ads.zzarx
    protected final void zza() throws IllegalAccessException, InvocationTargetException {
        this.zze.zzn(ExifInterface.LONGITUDE_EAST);
        AtomicReference zza = zzi.zza(this.zzj.getPackageName());
        if (zza.get() == null) {
            synchronized (zza) {
                if (zza.get() == null) {
                    zza.set((String) this.zzf.invoke(null, this.zzj));
                }
            }
        }
        String str = (String) zza.get();
        synchronized (this.zze) {
            this.zze.zzn(zzanu.zza(str.getBytes(), true));
        }
    }
}
