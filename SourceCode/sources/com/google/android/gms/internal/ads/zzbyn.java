package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.RelativeLayout;
import com.appnext.ads.fullscreen.RewardedVideo;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.google.android.gms.common.util.CollectionUtils;
import java.util.Set;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzbyn extends zzbyt {
    static final Set zza = CollectionUtils.setOf("top-left", "top-right", "top-center", TtmlNode.CENTER, "bottom-left", "bottom-right", "bottom-center");
    private String zzb;
    private boolean zzc;
    private int zzd;
    private int zze;
    private int zzf;
    private int zzg;
    private int zzh;
    private int zzi;
    private final Object zzj;
    private final zzcno zzk;
    private final Activity zzl;
    private zzcpd zzm;
    private ImageView zzn;
    private LinearLayout zzo;
    private final zzbyu zzp;
    private PopupWindow zzq;
    private RelativeLayout zzr;
    private ViewGroup zzs;

    public zzbyn(zzcno zzcnoVar, zzbyu zzbyuVar) {
        super(zzcnoVar, "resize");
        this.zzb = "top-right";
        this.zzc = true;
        this.zzd = 0;
        this.zze = 0;
        this.zzf = -1;
        this.zzg = 0;
        this.zzh = 0;
        this.zzi = -1;
        this.zzj = new Object();
        this.zzk = zzcnoVar;
        this.zzl = zzcnoVar.zzk();
        this.zzp = zzbyuVar;
    }

    public final void zza(boolean z) {
        synchronized (this.zzj) {
            PopupWindow popupWindow = this.zzq;
            if (popupWindow != null) {
                popupWindow.dismiss();
                this.zzr.removeView((View) this.zzk);
                ViewGroup viewGroup = this.zzs;
                if (viewGroup != null) {
                    viewGroup.removeView(this.zzn);
                    this.zzs.addView((View) this.zzk);
                    this.zzk.zzai(this.zzm);
                }
                if (z) {
                    zzk(RewardedVideo.VIDEO_MODE_DEFAULT);
                    zzbyu zzbyuVar = this.zzp;
                    if (zzbyuVar != null) {
                        zzbyuVar.zzb();
                    }
                }
                this.zzq = null;
                this.zzr = null;
                this.zzs = null;
                this.zzo = null;
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:127:0x025e, code lost:
        zzg("Resize location out of screen or close button is not visible.");
     */
    /* JADX WARN: Code restructure failed: missing block: B:129:0x0264, code lost:
        return;
     */
    /* JADX WARN: Removed duplicated region for block: B:132:0x0285 A[Catch: all -> 0x0481, TryCatch #0 {, blocks: (B:4:0x0009, B:6:0x000d, B:7:0x0012, B:9:0x0014, B:11:0x001c, B:12:0x0021, B:14:0x0023, B:16:0x002f, B:17:0x0034, B:19:0x0036, B:21:0x003e, B:23:0x004c, B:24:0x005d, B:26:0x006b, B:27:0x007c, B:29:0x008a, B:30:0x009b, B:32:0x00a9, B:33:0x00ba, B:35:0x00c8, B:36:0x00d6, B:38:0x00e4, B:39:0x00e6, B:41:0x00ea, B:43:0x00ee, B:45:0x00f6, B:48:0x00fe, B:52:0x0126, B:58:0x0132, B:127:0x025e, B:128:0x0263, B:130:0x0265, B:132:0x0285, B:134:0x0289, B:136:0x0296, B:138:0x02d3, B:170:0x038e, B:177:0x03bd, B:178:0x03d5, B:179:0x03f6, B:181:0x03fe, B:182:0x0405, B:183:0x042b, B:186:0x042e, B:188:0x044e, B:189:0x0463, B:171:0x0395, B:172:0x039c, B:173:0x03a3, B:174:0x03aa, B:175:0x03b0, B:176:0x03b7, B:137:0x02d0, B:191:0x0465, B:192:0x046a, B:59:0x0139, B:61:0x013d, B:89:0x0190, B:97:0x01e3, B:99:0x01ee, B:101:0x01f1, B:103:0x01f4, B:105:0x01f9, B:108:0x01ff, B:90:0x019b, B:92:0x01b2, B:94:0x01bd, B:91:0x01a6, B:93:0x01b5, B:95:0x01c2, B:96:0x01d7, B:98:0x01e6, B:109:0x020e, B:117:0x023c, B:123:0x024c, B:120:0x0242, B:122:0x024a, B:113:0x0232, B:115:0x0238, B:124:0x0251, B:125:0x0257, B:194:0x046c, B:195:0x0471, B:197:0x0473, B:198:0x0478, B:200:0x047a, B:201:0x047f), top: B:206:0x0009, inners: #1 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzb(java.util.Map r19) {
        /*
            Method dump skipped, instructions count: 1208
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbyn.zzb(java.util.Map):void");
    }

    public final void zzc(int i, int i2, boolean z) {
        synchronized (this.zzj) {
            this.zzd = i;
            this.zze = i2;
        }
    }

    public final void zzd(int i, int i2) {
        this.zzd = i;
        this.zze = i2;
    }

    public final boolean zze() {
        boolean z;
        synchronized (this.zzj) {
            z = this.zzq != null;
        }
        return z;
    }
}
