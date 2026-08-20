package com.google.android.gms.internal.ads;

import android.net.Network;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
/* compiled from: com.google.android.gms:play-services-ads-lite@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzfuw extends zzfuk {
    private zzfyu<Integer> zza;
    private zzfyu<Integer> zzb;
    private zzfuv zzc;
    private HttpURLConnection zzd;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzfuw() {
        this(new zzfyu() { // from class: com.google.android.gms.internal.ads.zzfut
            @Override // com.google.android.gms.internal.ads.zzfyu
            public final Object zza() {
                return zzfuw.zzf();
            }
        }, new zzfyu() { // from class: com.google.android.gms.internal.ads.zzfuu
            @Override // com.google.android.gms.internal.ads.zzfyu
            public final Object zza() {
                return zzfuw.zzg();
            }
        }, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzfuw(zzfyu<Integer> zzfyuVar, zzfyu<Integer> zzfyuVar2, zzfuv zzfuvVar) {
        this.zza = zzfyuVar;
        this.zzb = zzfyuVar2;
        this.zzc = zzfuvVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ Integer zzf() {
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ Integer zzg() {
        return -1;
    }

    public static void zzs(HttpURLConnection httpURLConnection) {
        zzful.zza();
        if (httpURLConnection != null) {
            httpURLConnection.disconnect();
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        zzs(this.zzd);
    }

    public HttpURLConnection zzm() throws IOException {
        zzful.zzb(((Integer) this.zza.zza()).intValue(), ((Integer) this.zzb.zza()).intValue());
        zzfuv zzfuvVar = this.zzc;
        zzfuvVar.getClass();
        HttpURLConnection httpURLConnection = (HttpURLConnection) zzfuvVar.zza();
        this.zzd = httpURLConnection;
        return httpURLConnection;
    }

    public HttpURLConnection zzn(zzfuv zzfuvVar, final int i, final int i2) throws IOException {
        this.zza = new zzfyu() { // from class: com.google.android.gms.internal.ads.zzfum
            @Override // com.google.android.gms.internal.ads.zzfyu
            public final Object zza() {
                Integer valueOf;
                valueOf = Integer.valueOf(i);
                return valueOf;
            }
        };
        this.zzb = new zzfyu() { // from class: com.google.android.gms.internal.ads.zzfun
            @Override // com.google.android.gms.internal.ads.zzfyu
            public final Object zza() {
                Integer valueOf;
                valueOf = Integer.valueOf(i2);
                return valueOf;
            }
        };
        this.zzc = zzfuvVar;
        return zzm();
    }

    public HttpURLConnection zzo(final Network network, final URL url, final int i, final int i2) throws IOException {
        this.zza = new zzfyu() { // from class: com.google.android.gms.internal.ads.zzfuo
            @Override // com.google.android.gms.internal.ads.zzfyu
            public final Object zza() {
                Integer valueOf;
                valueOf = Integer.valueOf(i);
                return valueOf;
            }
        };
        this.zzb = new zzfyu() { // from class: com.google.android.gms.internal.ads.zzfup
            @Override // com.google.android.gms.internal.ads.zzfyu
            public final Object zza() {
                Integer valueOf;
                valueOf = Integer.valueOf(i2);
                return valueOf;
            }
        };
        this.zzc = new zzfuv() { // from class: com.google.android.gms.internal.ads.zzfuq
            @Override // com.google.android.gms.internal.ads.zzfuv
            public final URLConnection zza() {
                URLConnection openConnection;
                openConnection = network.openConnection(url);
                return openConnection;
            }
        };
        return zzm();
    }

    public URLConnection zzr(final URL url, final int i) throws IOException {
        this.zza = new zzfyu() { // from class: com.google.android.gms.internal.ads.zzfur
            @Override // com.google.android.gms.internal.ads.zzfyu
            public final Object zza() {
                Integer valueOf;
                valueOf = Integer.valueOf(i);
                return valueOf;
            }
        };
        this.zzc = new zzfuv() { // from class: com.google.android.gms.internal.ads.zzfus
            @Override // com.google.android.gms.internal.ads.zzfuv
            public final URLConnection zza() {
                URLConnection openConnection;
                openConnection = url.openConnection();
                return openConnection;
            }
        };
        return zzm();
    }
}
