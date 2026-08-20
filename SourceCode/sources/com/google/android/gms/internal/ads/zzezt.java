package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import java.util.concurrent.Callable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzezt implements zzezm {
    private final zzgfc zza;
    private final Context zzb;

    public zzezt(zzgfc zzgfcVar, Context context) {
        this.zza = zzgfcVar;
        this.zzb = context;
    }

    private static ResolveInfo zzd(PackageManager packageManager, String str) {
        return packageManager.resolveActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)), 65536);
    }

    @Override // com.google.android.gms.internal.ads.zzezm
    public final int zza() {
        return 38;
    }

    @Override // com.google.android.gms.internal.ads.zzezm
    public final zzgfb zzb() {
        return this.zza.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzezs
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return zzezt.this.zzc();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Can't wrap try/catch for region: R(22:1|(1:3)(1:58)|4|(1:6)(1:57)|7|(2:10|8)|11|12|(3:51|52|(13:54|15|16|17|(8:19|20|21|(1:23)(3:33|(3:36|(3:39|(2:42|43)(1:41)|37)|44)|45)|24|(1:32)(1:28)|29|30)|47|21|(0)(0)|24|(1:26)|32|29|30))|14|15|16|17|(0)|47|21|(0)(0)|24|(0)|32|29|30) */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00a4 A[Catch: Exception -> 0x00bd, TRY_LEAVE, TryCatch #0 {Exception -> 0x00bd, blocks: (B:24:0x0096, B:26:0x00a4), top: B:53:0x0096 }] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00c5  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00c9  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x013d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* synthetic */ com.google.android.gms.internal.ads.zzezr zzc() throws java.lang.Exception {
        /*
            Method dump skipped, instructions count: 346
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzezt.zzc():com.google.android.gms.internal.ads.zzezr");
    }
}
