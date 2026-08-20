package com.google.android.gms.internal.ads;

import android.content.Context;
import android.database.ContentObserver;
import android.media.AudioManager;
import android.os.Handler;
import android.provider.Settings;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzfqg extends ContentObserver {
    private final Context zza;
    private final AudioManager zzb;
    private final zzfqe zzc;
    private float zzd;
    private final zzfqo zze;

    public zzfqg(Handler handler, Context context, zzfqe zzfqeVar, zzfqo zzfqoVar, byte[] bArr) {
        super(handler);
        this.zza = context;
        this.zzb = (AudioManager) context.getSystemService("audio");
        this.zzc = zzfqeVar;
        this.zze = zzfqoVar;
    }

    private final float zzc() {
        int streamVolume = this.zzb.getStreamVolume(3);
        int streamMaxVolume = this.zzb.getStreamMaxVolume(3);
        float f2 = 0.0f;
        if (streamMaxVolume > 0 && streamVolume > 0) {
            float f3 = streamVolume / streamMaxVolume;
            f2 = 1.0f;
            if (f3 <= 1.0f) {
                return f3;
            }
        }
        return f2;
    }

    private final void zzd() {
        this.zze.zzd(this.zzd);
    }

    @Override // android.database.ContentObserver
    public final void onChange(boolean z) {
        super.onChange(z);
        float zzc = zzc();
        if (zzc != this.zzd) {
            this.zzd = zzc;
            zzd();
        }
    }

    public final void zza() {
        this.zzd = zzc();
        zzd();
        this.zza.getContentResolver().registerContentObserver(Settings.System.CONTENT_URI, true, this);
    }

    public final void zzb() {
        this.zza.getContentResolver().unregisterContentObserver(this);
    }
}
