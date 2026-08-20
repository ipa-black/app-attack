package com.google.android.gms.internal.ads;

import android.content.ComponentName;
import androidx.browser.customtabs.CustomTabsClient;
import androidx.browser.customtabs.CustomTabsServiceConnection;
import java.lang.ref.WeakReference;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzhfe extends CustomTabsServiceConnection {
    private final WeakReference zza;

    public zzhfe(zzbkh zzbkhVar, byte[] bArr) {
        this.zza = new WeakReference(zzbkhVar);
    }

    @Override // androidx.browser.customtabs.CustomTabsServiceConnection
    public final void onCustomTabsServiceConnected(ComponentName componentName, CustomTabsClient customTabsClient) {
        zzbkh zzbkhVar = (zzbkh) this.zza.get();
        if (zzbkhVar != null) {
            zzbkhVar.zzc(customTabsClient);
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        zzbkh zzbkhVar = (zzbkh) this.zza.get();
        if (zzbkhVar != null) {
            zzbkhVar.zzd();
        }
    }
}
