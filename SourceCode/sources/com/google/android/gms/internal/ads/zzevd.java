package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import java.util.concurrent.Callable;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzevd implements zzezm {
    private final zzgfc zza;
    private final Context zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzevd(zzgfc zzgfcVar, Context context) {
        this.zza = zzgfcVar;
        this.zzb = context;
    }

    @Override // com.google.android.gms.internal.ads.zzezm
    public final int zza() {
        return 14;
    }

    @Override // com.google.android.gms.internal.ads.zzezm
    public final zzgfb zzb() {
        return this.zza.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzevc
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return zzevd.this.zzc();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ zzeve zzc() throws Exception {
        Intent registerReceiver;
        double d2;
        IntentFilter intentFilter = new IntentFilter("android.intent.action.BATTERY_CHANGED");
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzje)).booleanValue() || Build.VERSION.SDK_INT < 33) {
            registerReceiver = this.zzb.registerReceiver(null, intentFilter);
        } else {
            registerReceiver = this.zzb.registerReceiver(null, intentFilter, 4);
        }
        boolean z = false;
        if (registerReceiver != null) {
            int intExtra = registerReceiver.getIntExtra("status", -1);
            d2 = registerReceiver.getIntExtra("level", -1) / registerReceiver.getIntExtra("scale", -1);
            if (intExtra == 2 || intExtra == 5) {
                z = true;
            }
        } else {
            d2 = -1.0d;
        }
        return new zzeve(d2, z);
    }
}
