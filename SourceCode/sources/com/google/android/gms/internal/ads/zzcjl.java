package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.internal.view.SupportMenu;
import androidx.core.view.InputDeviceCompat;
import com.google.android.exoplayer2.metadata.icy.IcyHeaders;
import com.google.android.gms.common.internal.Preconditions;
import com.google.firebase.messaging.Constants;
import java.util.HashMap;
import javax.annotation.ParametersAreNonnullByDefault;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
@ParametersAreNonnullByDefault
/* loaded from: classes4.dex */
public final class zzcjl extends FrameLayout implements zzcjc {
    final zzcjz zza;
    private final zzcjx zzb;
    private final FrameLayout zzc;
    private final View zzd;
    private final zzbjy zze;
    private final long zzf;
    private final zzcjd zzg;
    private boolean zzh;
    private boolean zzi;
    private boolean zzj;
    private boolean zzk;
    private long zzl;
    private long zzm;
    private String zzn;
    private String[] zzo;
    private Bitmap zzp;
    private final ImageView zzq;
    private boolean zzr;
    private final Integer zzs;

    public zzcjl(Context context, zzcjx zzcjxVar, int i, boolean z, zzbjy zzbjyVar, zzcjw zzcjwVar, Integer num) {
        super(context);
        zzcjd zzcjbVar;
        this.zzb = zzcjxVar;
        this.zze = zzbjyVar;
        FrameLayout frameLayout = new FrameLayout(context);
        this.zzc = frameLayout;
        addView(frameLayout, new FrameLayout.LayoutParams(-1, -1));
        Preconditions.checkNotNull(zzcjxVar.zzm());
        zzcje zzcjeVar = zzcjxVar.zzm().zza;
        zzcjy zzcjyVar = new zzcjy(context, zzcjxVar.zzp(), zzcjxVar.zzu(), zzbjyVar, zzcjxVar.zzn());
        if (i != 2) {
            zzcjbVar = new zzcjb(context, zzcjxVar, z, zzcjp.zza(zzcjxVar), zzcjwVar, new zzcjy(context, zzcjxVar.zzp(), zzcjxVar.zzu(), zzbjyVar, zzcjxVar.zzn()), num);
        } else {
            zzcjbVar = new zzckp(context, zzcjyVar, zzcjxVar, z, zzcjp.zza(zzcjxVar), zzcjwVar, num);
        }
        this.zzg = zzcjbVar;
        this.zzs = num;
        View view = new View(context);
        this.zzd = view;
        view.setBackgroundColor(0);
        frameLayout.addView(zzcjbVar, new FrameLayout.LayoutParams(-1, -1, 17));
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzD)).booleanValue()) {
            frameLayout.addView(view, new FrameLayout.LayoutParams(-1, -1));
            frameLayout.bringChildToFront(view);
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzA)).booleanValue()) {
            zzn();
        }
        this.zzq = new ImageView(context);
        this.zzf = ((Long) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzF)).longValue();
        boolean booleanValue = ((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzC)).booleanValue();
        this.zzk = booleanValue;
        if (zzbjyVar != null) {
            zzbjyVar.zzd("spinner_used", true != booleanValue ? "0" : IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE);
        }
        this.zza = new zzcjz(this);
        zzcjbVar.zzr(this);
    }

    private final void zzJ() {
        if (this.zzb.zzk() == null || !this.zzi || this.zzj) {
            return;
        }
        this.zzb.zzk().getWindow().clearFlags(128);
        this.zzi = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzK(String str, String... strArr) {
        HashMap hashMap = new HashMap();
        Integer zzl = zzl();
        if (zzl != null) {
            hashMap.put("playerId", zzl.toString());
        }
        hashMap.put("event", str);
        String str2 = null;
        for (String str3 : strArr) {
            if (str2 == null) {
                str2 = str3;
            } else {
                hashMap.put(str2, str3);
                str2 = null;
            }
        }
        this.zzb.zzd("onVideoEvent", hashMap);
    }

    private final boolean zzL() {
        return this.zzq.getParent() != null;
    }

    public final void finalize() throws Throwable {
        try {
            this.zza.zza();
            final zzcjd zzcjdVar = this.zzg;
            if (zzcjdVar != null) {
                zzcib.zze.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcjf
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzcjd.this.zzt();
                    }
                });
            }
        } finally {
            super.finalize();
        }
    }

    @Override // android.view.View
    public final void onWindowFocusChanged(final boolean z) {
        super.onWindowFocusChanged(z);
        if (z) {
            this.zza.zzb();
        } else {
            this.zza.zza();
            this.zzm = this.zzl;
        }
        com.google.android.gms.ads.internal.util.zzs.zza.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcjg
            @Override // java.lang.Runnable
            public final void run() {
                zzcjl.this.zzq(z);
            }
        });
    }

    @Override // android.view.View, com.google.android.gms.internal.ads.zzcjc
    public final void onWindowVisibilityChanged(int i) {
        boolean z;
        super.onWindowVisibilityChanged(i);
        if (i == 0) {
            this.zza.zzb();
            z = true;
        } else {
            this.zza.zza();
            this.zzm = this.zzl;
            z = false;
        }
        com.google.android.gms.ads.internal.util.zzs.zza.post(new zzcjk(this, z));
    }

    public final void zzA(int i) {
        zzcjd zzcjdVar = this.zzg;
        if (zzcjdVar == null) {
            return;
        }
        zzcjdVar.zzy(i);
    }

    public final void zzB(int i) {
        zzcjd zzcjdVar = this.zzg;
        if (zzcjdVar == null) {
            return;
        }
        zzcjdVar.zzz(i);
    }

    public final void zzC(int i) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzD)).booleanValue()) {
            this.zzc.setBackgroundColor(i);
            this.zzd.setBackgroundColor(i);
        }
    }

    public final void zzD(int i) {
        zzcjd zzcjdVar = this.zzg;
        if (zzcjdVar == null) {
            return;
        }
        zzcjdVar.zzA(i);
    }

    public final void zzE(String str, String[] strArr) {
        this.zzn = str;
        this.zzo = strArr;
    }

    public final void zzF(int i, int i2, int i3, int i4) {
        if (com.google.android.gms.ads.internal.util.zze.zzc()) {
            com.google.android.gms.ads.internal.util.zze.zza("Set video bounds to x:" + i + ";y:" + i2 + ";w:" + i3 + ";h:" + i4);
        }
        if (i3 == 0 || i4 == 0) {
            return;
        }
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i3, i4);
        layoutParams.setMargins(i, i2, 0, 0);
        this.zzc.setLayoutParams(layoutParams);
        requestLayout();
    }

    public final void zzG(float f2) {
        zzcjd zzcjdVar = this.zzg;
        if (zzcjdVar == null) {
            return;
        }
        zzcjdVar.zzb.zze(f2);
        zzcjdVar.zzn();
    }

    public final void zzH(float f2, float f3) {
        zzcjd zzcjdVar = this.zzg;
        if (zzcjdVar != null) {
            zzcjdVar.zzu(f2, f3);
        }
    }

    public final void zzI() {
        zzcjd zzcjdVar = this.zzg;
        if (zzcjdVar == null) {
            return;
        }
        zzcjdVar.zzb.zzd(false);
        zzcjdVar.zzn();
    }

    @Override // com.google.android.gms.internal.ads.zzcjc
    public final void zza() {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzbI)).booleanValue()) {
            this.zza.zza();
        }
        zzK("ended", new String[0]);
        zzJ();
    }

    @Override // com.google.android.gms.internal.ads.zzcjc
    public final void zzb(String str, String str2) {
        zzK(Constants.IPC_BUNDLE_KEY_SEND_ERROR, "what", str, "extra", str2);
    }

    @Override // com.google.android.gms.internal.ads.zzcjc
    public final void zzc(String str, String str2) {
        zzK("exception", "what", "ExoPlayerAdapter exception", "extra", str2);
    }

    @Override // com.google.android.gms.internal.ads.zzcjc
    public final void zzd() {
        zzK("pause", new String[0]);
        zzJ();
        this.zzh = false;
    }

    @Override // com.google.android.gms.internal.ads.zzcjc
    public final void zze() {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzbI)).booleanValue()) {
            this.zza.zzb();
        }
        if (this.zzb.zzk() != null && !this.zzi) {
            boolean z = (this.zzb.zzk().getWindow().getAttributes().flags & 128) != 0;
            this.zzj = z;
            if (!z) {
                this.zzb.zzk().getWindow().addFlags(128);
                this.zzi = true;
            }
        }
        this.zzh = true;
    }

    @Override // com.google.android.gms.internal.ads.zzcjc
    public final void zzf() {
        zzcjd zzcjdVar = this.zzg;
        if (zzcjdVar != null && this.zzm == 0) {
            zzK("canplaythrough", "duration", String.valueOf(zzcjdVar.zzc() / 1000.0f), "videoWidth", String.valueOf(this.zzg.zze()), "videoHeight", String.valueOf(this.zzg.zzd()));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcjc
    public final void zzg() {
        this.zzd.setVisibility(4);
        com.google.android.gms.ads.internal.util.zzs.zza.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcjh
            @Override // java.lang.Runnable
            public final void run() {
                zzcjl.this.zzp();
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzcjc
    public final void zzh() {
        this.zza.zzb();
        com.google.android.gms.ads.internal.util.zzs.zza.post(new zzcji(this));
    }

    @Override // com.google.android.gms.internal.ads.zzcjc
    public final void zzi() {
        if (this.zzr && this.zzp != null && !zzL()) {
            this.zzq.setImageBitmap(this.zzp);
            this.zzq.invalidate();
            this.zzc.addView(this.zzq, new FrameLayout.LayoutParams(-1, -1));
            this.zzc.bringChildToFront(this.zzq);
        }
        this.zza.zza();
        this.zzm = this.zzl;
        com.google.android.gms.ads.internal.util.zzs.zza.post(new zzcjj(this));
    }

    @Override // com.google.android.gms.internal.ads.zzcjc
    public final void zzj(int i, int i2) {
        if (this.zzk) {
            int max = Math.max(i / ((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzE)).intValue(), 1);
            int max2 = Math.max(i2 / ((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzE)).intValue(), 1);
            Bitmap bitmap = this.zzp;
            if (bitmap != null && bitmap.getWidth() == max && this.zzp.getHeight() == max2) {
                return;
            }
            this.zzp = Bitmap.createBitmap(max, max2, Bitmap.Config.ARGB_8888);
            this.zzr = false;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcjc
    public final void zzk() {
        if (this.zzh && zzL()) {
            this.zzc.removeView(this.zzq);
        }
        if (this.zzg == null || this.zzp == null) {
            return;
        }
        long elapsedRealtime = com.google.android.gms.ads.internal.zzt.zzB().elapsedRealtime();
        if (this.zzg.getBitmap(this.zzp) != null) {
            this.zzr = true;
        }
        long elapsedRealtime2 = com.google.android.gms.ads.internal.zzt.zzB().elapsedRealtime() - elapsedRealtime;
        if (com.google.android.gms.ads.internal.util.zze.zzc()) {
            com.google.android.gms.ads.internal.util.zze.zza("Spinner frame grab took " + elapsedRealtime2 + "ms");
        }
        if (elapsedRealtime2 > this.zzf) {
            com.google.android.gms.ads.internal.util.zze.zzj("Spinner frame grab crossed jank threshold! Suspending spinner.");
            this.zzk = false;
            this.zzp = null;
            zzbjy zzbjyVar = this.zze;
            if (zzbjyVar != null) {
                zzbjyVar.zzd("spinner_jank", Long.toString(elapsedRealtime2));
            }
        }
    }

    public final Integer zzl() {
        zzcjd zzcjdVar = this.zzg;
        return zzcjdVar != null ? zzcjdVar.zzc : this.zzs;
    }

    public final void zzn() {
        zzcjd zzcjdVar = this.zzg;
        if (zzcjdVar == null) {
            return;
        }
        TextView textView = new TextView(zzcjdVar.getContext());
        textView.setText("AdMob - ".concat(this.zzg.zzj()));
        textView.setTextColor(SupportMenu.CATEGORY_MASK);
        textView.setBackgroundColor(InputDeviceCompat.SOURCE_ANY);
        this.zzc.addView(textView, new FrameLayout.LayoutParams(-2, -2, 17));
        this.zzc.bringChildToFront(textView);
    }

    public final void zzo() {
        this.zza.zza();
        zzcjd zzcjdVar = this.zzg;
        if (zzcjdVar != null) {
            zzcjdVar.zzt();
        }
        zzJ();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzp() {
        zzK("firstFrameRendered", new String[0]);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzq(boolean z) {
        zzK("windowFocusChanged", "hasWindowFocus", String.valueOf(z));
    }

    public final void zzr() {
        if (this.zzg == null) {
            return;
        }
        if (!TextUtils.isEmpty(this.zzn)) {
            this.zzg.zzB(this.zzn, this.zzo);
        } else {
            zzK("no_src", new String[0]);
        }
    }

    public final void zzs() {
        zzcjd zzcjdVar = this.zzg;
        if (zzcjdVar == null) {
            return;
        }
        zzcjdVar.zzb.zzd(true);
        zzcjdVar.zzn();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzt() {
        zzcjd zzcjdVar = this.zzg;
        if (zzcjdVar == null) {
            return;
        }
        long zza = zzcjdVar.zza();
        if (this.zzl == zza || zza <= 0) {
            return;
        }
        float f2 = ((float) zza) / 1000.0f;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzbF)).booleanValue()) {
            zzK("timeupdate", "time", String.valueOf(f2), "totalBytes", String.valueOf(this.zzg.zzh()), "qoeCachedBytes", String.valueOf(this.zzg.zzf()), "qoeLoadedBytes", String.valueOf(this.zzg.zzg()), "droppedFrames", String.valueOf(this.zzg.zzb()), "reportTime", String.valueOf(com.google.android.gms.ads.internal.zzt.zzB().currentTimeMillis()));
        } else {
            zzK("timeupdate", "time", String.valueOf(f2));
        }
        this.zzl = zza;
    }

    public final void zzu() {
        zzcjd zzcjdVar = this.zzg;
        if (zzcjdVar == null) {
            return;
        }
        zzcjdVar.zzo();
    }

    public final void zzv() {
        zzcjd zzcjdVar = this.zzg;
        if (zzcjdVar == null) {
            return;
        }
        zzcjdVar.zzp();
    }

    public final void zzw(int i) {
        zzcjd zzcjdVar = this.zzg;
        if (zzcjdVar == null) {
            return;
        }
        zzcjdVar.zzq(i);
    }

    public final void zzx(MotionEvent motionEvent) {
        zzcjd zzcjdVar = this.zzg;
        if (zzcjdVar == null) {
            return;
        }
        zzcjdVar.dispatchTouchEvent(motionEvent);
    }

    public final void zzy(int i) {
        zzcjd zzcjdVar = this.zzg;
        if (zzcjdVar == null) {
            return;
        }
        zzcjdVar.zzw(i);
    }

    public final void zzz(int i) {
        zzcjd zzcjdVar = this.zzg;
        if (zzcjdVar == null) {
            return;
        }
        zzcjdVar.zzx(i);
    }
}
