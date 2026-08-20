package com.google.android.gms.internal.ads;

import com.google.android.exoplayer2.C;
import java.io.UnsupportedEncodingException;
import java.util.Map;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public class zzalj extends zzake {
    private final Object zza;
    private final zzakj zzb;

    public zzalj(int i, String str, zzakj zzakjVar, zzaki zzakiVar) {
        super(i, str, zzakiVar);
        this.zza = new Object();
        this.zzb = zzakjVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzake
    public final zzakk zzh(zzaka zzakaVar) {
        String str;
        String str2;
        try {
            byte[] bArr = zzakaVar.zzb;
            Map map = zzakaVar.zzc;
            String str3 = C.ISO88591_NAME;
            if (map != null && (str2 = (String) map.get("Content-Type")) != null) {
                String[] split = str2.split(";", 0);
                int i = 1;
                while (true) {
                    if (i >= split.length) {
                        break;
                    }
                    String[] split2 = split[i].trim().split("=", 0);
                    if (split2.length == 2 && split2[0].equals("charset")) {
                        str3 = split2[1];
                        break;
                    }
                    i++;
                }
            }
            str = new String(bArr, str3);
        } catch (UnsupportedEncodingException unused) {
            str = new String(zzakaVar.zzb);
        }
        return zzakk.zzb(str, zzalb.zzb(zzakaVar));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzake
    /* renamed from: zzz */
    public void zzo(String str) {
        zzakj zzakjVar;
        synchronized (this.zza) {
            zzakjVar = this.zzb;
        }
        zzakjVar.zza(str);
    }
}
