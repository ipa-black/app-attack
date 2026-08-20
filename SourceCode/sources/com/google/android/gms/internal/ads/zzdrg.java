package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.RemoteException;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.google.android.exoplayer2.metadata.icy.IcyHeaders;
import com.google.android.gms.ads.formats.NativeAd;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.concurrent.Executor;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzdrg {
    static final ImageView.ScaleType zza = ImageView.ScaleType.CENTER_INSIDE;
    private final com.google.android.gms.ads.internal.util.zzg zzb;
    private final zzfjg zzc;
    private final zzdql zzd;
    private final zzdqg zze;
    private final zzdrs zzf;
    private final zzdsa zzg;
    private final Executor zzh;
    private final Executor zzi;
    private final zzblz zzj;
    private final zzdqd zzk;

    public zzdrg(com.google.android.gms.ads.internal.util.zzg zzgVar, zzfjg zzfjgVar, zzdql zzdqlVar, zzdqg zzdqgVar, zzdrs zzdrsVar, zzdsa zzdsaVar, Executor executor, Executor executor2, zzdqd zzdqdVar) {
        this.zzb = zzgVar;
        this.zzc = zzfjgVar;
        this.zzj = zzfjgVar.zzi;
        this.zzd = zzdqlVar;
        this.zze = zzdqgVar;
        this.zzf = zzdrsVar;
        this.zzg = zzdsaVar;
        this.zzh = executor;
        this.zzi = executor2;
        this.zzk = zzdqdVar;
    }

    private final boolean zzh(ViewGroup viewGroup, boolean z) {
        View zzg;
        FrameLayout.LayoutParams layoutParams;
        if (z) {
            zzg = this.zze.zzf();
        } else {
            zzg = this.zze.zzg();
        }
        if (zzg == null) {
            return false;
        }
        viewGroup.removeAllViews();
        if (zzg.getParent() instanceof ViewGroup) {
            ((ViewGroup) zzg.getParent()).removeView(zzg);
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzdo)).booleanValue()) {
            layoutParams = new FrameLayout.LayoutParams(-1, -1, 17);
        } else {
            layoutParams = new FrameLayout.LayoutParams(-2, -2, 17);
        }
        viewGroup.addView(zzg, layoutParams);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zza(ViewGroup viewGroup) {
        boolean z = viewGroup != null;
        zzdqg zzdqgVar = this.zze;
        if (zzdqgVar.zzf() != null) {
            if (zzdqgVar.zzc() == 2 || zzdqgVar.zzc() == 1) {
                this.zzb.zzI(this.zzc.zzf, String.valueOf(zzdqgVar.zzc()), z);
            } else if (zzdqgVar.zzc() == 6) {
                this.zzb.zzI(this.zzc.zzf, "2", z);
                this.zzb.zzI(this.zzc.zzf, IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE, z);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzb(zzdsc zzdscVar) {
        ViewGroup viewGroup;
        View view;
        final ViewGroup viewGroup2;
        zzbmi zza2;
        Drawable drawable;
        if (this.zzd.zzf() || this.zzd.zze()) {
            String[] strArr = {NativeAd.ASSET_ADCHOICES_CONTAINER_VIEW, "3011"};
            for (int i = 0; i < 2; i++) {
                View zzg = zzdscVar.zzg(strArr[i]);
                if (zzg != null && (zzg instanceof ViewGroup)) {
                    viewGroup = (ViewGroup) zzg;
                    break;
                }
            }
        }
        viewGroup = null;
        Context context = zzdscVar.zzf().getContext();
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        zzdqg zzdqgVar = this.zze;
        if (zzdqgVar.zze() != null) {
            view = zzdqgVar.zze();
            zzblz zzblzVar = this.zzj;
            if (zzblzVar != null && viewGroup == null) {
                zzg(layoutParams, zzblzVar.zze);
                view.setLayoutParams(layoutParams);
            }
        } else if (zzdqgVar.zzl() instanceof zzblu) {
            zzblu zzbluVar = (zzblu) zzdqgVar.zzl();
            if (viewGroup == null) {
                zzg(layoutParams, zzbluVar.zzc());
            }
            View zzblvVar = new zzblv(context, zzbluVar, layoutParams);
            zzblvVar.setContentDescription((CharSequence) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzdm));
            view = zzblvVar;
        } else {
            view = null;
        }
        if (view != null) {
            if (view.getParent() instanceof ViewGroup) {
                ((ViewGroup) view.getParent()).removeView(view);
            }
            if (viewGroup != null) {
                viewGroup.removeAllViews();
                viewGroup.addView(view);
            } else {
                com.google.android.gms.ads.formats.zza zzaVar = new com.google.android.gms.ads.formats.zza(zzdscVar.zzf().getContext());
                zzaVar.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
                zzaVar.addView(view);
                FrameLayout zzh = zzdscVar.zzh();
                if (zzh != null) {
                    zzh.addView(zzaVar);
                }
            }
            zzdscVar.zzq(zzdscVar.zzk(), view, true);
        }
        zzgau zzgauVar = zzdrc.zza;
        int size = zzgauVar.size();
        int i2 = 0;
        while (true) {
            if (i2 >= size) {
                viewGroup2 = null;
                break;
            }
            View zzg2 = zzdscVar.zzg((String) zzgauVar.get(i2));
            i2++;
            if (zzg2 instanceof ViewGroup) {
                viewGroup2 = (ViewGroup) zzg2;
                break;
            }
        }
        this.zzi.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdrd
            @Override // java.lang.Runnable
            public final void run() {
                zzdrg.this.zza(viewGroup2);
            }
        });
        if (viewGroup2 == null) {
            return;
        }
        if (zzh(viewGroup2, true)) {
            zzdqg zzdqgVar2 = this.zze;
            if (zzdqgVar2.zzr() != null) {
                zzdqgVar2.zzr().zzaq(new zzdrf(zzdscVar, viewGroup2));
            }
        } else if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zziK)).booleanValue() && zzh(viewGroup2, false)) {
            zzdqg zzdqgVar3 = this.zze;
            if (zzdqgVar3.zzp() != null) {
                zzdqgVar3.zzp().zzaq(new zzdrf(zzdscVar, viewGroup2));
            }
        } else {
            viewGroup2.removeAllViews();
            View zzf = zzdscVar.zzf();
            Context context2 = zzf != null ? zzf.getContext() : null;
            if (context2 == null || (zza2 = this.zzk.zza()) == null) {
                return;
            }
            try {
                IObjectWrapper zzi = zza2.zzi();
                if (zzi == null || (drawable = (Drawable) ObjectWrapper.unwrap(zzi)) == null) {
                    return;
                }
                ImageView imageView = new ImageView(context2);
                imageView.setImageDrawable(drawable);
                IObjectWrapper zzj = zzdscVar != null ? zzdscVar.zzj() : null;
                if (zzj == null || !((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzfD)).booleanValue()) {
                    imageView.setScaleType(zza);
                } else {
                    imageView.setScaleType((ImageView.ScaleType) ObjectWrapper.unwrap(zzj));
                }
                imageView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
                viewGroup2.addView(imageView);
            } catch (RemoteException unused) {
                com.google.android.gms.ads.internal.util.zze.zzj("Could not get main image drawable");
            }
        }
    }

    public final void zzc(zzdsc zzdscVar) {
        if (zzdscVar == null || this.zzf == null || zzdscVar.zzh() == null || !this.zzd.zzg()) {
            return;
        }
        try {
            zzdscVar.zzh().addView(this.zzf.zza());
        } catch (zzcnz e2) {
            com.google.android.gms.ads.internal.util.zze.zzb("web view can not be obtained", e2);
        }
    }

    public final void zzd(zzdsc zzdscVar) {
        if (zzdscVar == null) {
            return;
        }
        Context context = zzdscVar.zzf().getContext();
        if (com.google.android.gms.ads.internal.util.zzbx.zzh(context, this.zzd.zza)) {
            if (!(context instanceof Activity)) {
                com.google.android.gms.ads.internal.util.zze.zze("Activity context is needed for policy validator.");
            } else if (this.zzg == null || zzdscVar.zzh() == null) {
            } else {
                try {
                    WindowManager windowManager = (WindowManager) context.getSystemService("window");
                    windowManager.addView(this.zzg.zza(zzdscVar.zzh(), windowManager), com.google.android.gms.ads.internal.util.zzbx.zzb());
                } catch (zzcnz e2) {
                    com.google.android.gms.ads.internal.util.zze.zzb("web view can not be obtained", e2);
                }
            }
        }
    }

    public final void zze(final zzdsc zzdscVar) {
        this.zzh.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdre
            @Override // java.lang.Runnable
            public final void run() {
                zzdrg.this.zzb(zzdscVar);
            }
        });
    }

    public final boolean zzf(ViewGroup viewGroup) {
        return zzh(viewGroup, true);
    }

    private static void zzg(RelativeLayout.LayoutParams layoutParams, int i) {
        if (i == 0) {
            layoutParams.addRule(10);
            layoutParams.addRule(9);
        } else if (i == 2) {
            layoutParams.addRule(12);
            layoutParams.addRule(11);
        } else if (i == 3) {
            layoutParams.addRule(12);
            layoutParams.addRule(9);
        } else {
            layoutParams.addRule(10);
            layoutParams.addRule(11);
        }
    }
}
