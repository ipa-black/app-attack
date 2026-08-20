package com.bytedance.adsdk.cJ;

import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.widget.ImageView;
import com.bytedance.adsdk.lottie.LottieAnimationView;
import com.bytedance.adsdk.lottie.WAv;
import com.bytedance.adsdk.lottie.fl;
import com.bytedance.adsdk.ugeno.Qhi;
import com.bytedance.adsdk.ugeno.Qhi.ac;
import com.bytedance.adsdk.ugeno.component.cJ;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.google.android.gms.common.internal.ImagesContract;
import java.util.HashMap;
/* compiled from: LottieAnimationWidget.java */
/* loaded from: classes2.dex */
public class Qhi extends cJ<LottieAnimationView> {
    private boolean Dq;
    private float Hf;
    private float NBs;
    private String Qe;
    protected ImageView.ScaleType Qhi;
    private boolean YB;
    private boolean cjC;
    private HashMap<String, Bitmap> dI;
    private String dIT;

    public Qhi(Context context) {
        super(context);
        this.Qe = "images";
        this.NBs = 1.0f;
        this.Qhi = ImageView.ScaleType.FIT_CENTER;
        this.dI = new HashMap<>();
    }

    @Override // com.bytedance.adsdk.ugeno.component.cJ
    /* renamed from: Qhi */
    public LottieAnimationView ac() {
        LottieAnimationView lottieAnimationView = new LottieAnimationView(this.cJ);
        lottieAnimationView.Qhi(this);
        return lottieAnimationView;
    }

    @Override // com.bytedance.adsdk.ugeno.component.cJ
    public void cJ() {
        super.cJ();
        ((LottieAnimationView) this.fl).setProgress(this.Hf);
        if (this.NBs <= 0.0f) {
            this.NBs = 1.0f;
        }
        ((LottieAnimationView) this.fl).setSpeed(this.NBs);
        if (this.dIT.startsWith(ImagesContract.LOCAL)) {
            ((LottieAnimationView) this.fl).setAnimation(fl(this.dIT));
            ((LottieAnimationView) this.fl).setImageAssetsFolder(this.Qe);
        } else {
            ((LottieAnimationView) this.fl).setAnimationFromUrl(this.dIT);
            ((LottieAnimationView) this.fl).setImageAssetDelegate(new fl() { // from class: com.bytedance.adsdk.cJ.Qhi.1
                @Override // com.bytedance.adsdk.lottie.fl
                public Bitmap Qhi(final WAv wAv) {
                    final String Qhi;
                    if (wAv == null) {
                        return null;
                    }
                    String fl = wAv.fl();
                    String CJ = wAv.CJ();
                    if (!TextUtils.isEmpty(fl) && TextUtils.isEmpty(CJ)) {
                        Qhi = ac.Qhi(fl, Qhi.this.CJ);
                    } else {
                        Qhi = (TextUtils.isEmpty(CJ) || !TextUtils.isEmpty(fl)) ? (TextUtils.isEmpty(CJ) || TextUtils.isEmpty(fl)) ? null : ac.Qhi(fl, Qhi.this.CJ) + ac.Qhi(CJ, Qhi.this.CJ) : ac.Qhi(CJ, Qhi.this.CJ);
                    }
                    if (TextUtils.isEmpty(Qhi)) {
                        return null;
                    }
                    Bitmap bitmap = (Bitmap) Qhi.this.dI.get(Qhi);
                    if (bitmap != null) {
                        return bitmap;
                    }
                    com.bytedance.adsdk.ugeno.fl.Qhi().cJ().Qhi(Qhi.this.cJ, Qhi, -1.0f, new Qhi.InterfaceC0176Qhi() { // from class: com.bytedance.adsdk.cJ.Qhi.1.1
                        @Override // com.bytedance.adsdk.ugeno.Qhi.InterfaceC0176Qhi
                        public void Qhi(Bitmap bitmap2) {
                            if (bitmap2 != null) {
                                Bitmap createScaledBitmap = Bitmap.createScaledBitmap(bitmap2, wAv.Qhi(), wAv.cJ(), false);
                                Qhi.this.dI.put(Qhi, createScaledBitmap);
                                ((LottieAnimationView) Qhi.this.fl).Qhi(wAv.ac(), createScaledBitmap);
                            }
                        }
                    });
                    return (Bitmap) Qhi.this.dI.get(Qhi);
                }
            });
        }
        ((LottieAnimationView) this.fl).setScaleType(this.Qhi);
        ((LottieAnimationView) this.fl).cJ(this.cjC);
        ((LottieAnimationView) this.fl).Qhi();
    }

    @Override // com.bytedance.adsdk.ugeno.component.cJ
    public void Qhi(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        super.Qhi(str, str2);
        str.hashCode();
        char c2 = 65535;
        switch (str.hashCode()) {
            case -1877911644:
                if (str.equals("scaleType")) {
                    c2 = 0;
                    break;
                }
                break;
            case -1001078227:
                if (str.equals("progress")) {
                    c2 = 1;
                    break;
                }
                break;
            case -878289888:
                if (str.equals("imagePath")) {
                    c2 = 2;
                    break;
                }
                break;
            case -291235277:
                if (str.equals("autoReverse")) {
                    c2 = 3;
                    break;
                }
                break;
            case 114148:
                if (str.equals("src")) {
                    c2 = 4;
                    break;
                }
                break;
            case 3327652:
                if (str.equals("loop")) {
                    c2 = 5;
                    break;
                }
                break;
            case 109641799:
                if (str.equals("speed")) {
                    c2 = 6;
                    break;
                }
                break;
            case 1438608771:
                if (str.equals("autoPlay")) {
                    c2 = 7;
                    break;
                }
                break;
        }
        switch (c2) {
            case 0:
                this.Qhi = Tgh(str2);
                return;
            case 1:
                this.Hf = com.bytedance.adsdk.ugeno.cJ.ac.Qhi(str2, 0.0f);
                return;
            case 2:
                this.Qe = str2;
                return;
            case 3:
                this.YB = com.bytedance.adsdk.ugeno.cJ.ac.Qhi(str2, false);
                return;
            case 4:
                this.dIT = str2;
                return;
            case 5:
                this.cjC = com.bytedance.adsdk.ugeno.cJ.ac.Qhi(str2, false);
                return;
            case 6:
                this.NBs = com.bytedance.adsdk.ugeno.cJ.ac.Qhi(str2, 1.0f);
                return;
            case 7:
                this.Dq = com.bytedance.adsdk.ugeno.cJ.ac.Qhi(str2, false);
                return;
            default:
                return;
        }
    }

    private String fl(String str) {
        if (!TextUtils.isEmpty(str) && str.contains(ImagesContract.LOCAL)) {
            if (str.contains("shake_phone")) {
                return "lottie_json/shake_phone.json";
            }
            return str.contains("swipe_right") ? "lottie_json/swipe_right.json" : "";
        }
        return "";
    }

    private ImageView.ScaleType Tgh(String str) {
        ImageView.ScaleType scaleType = ImageView.ScaleType.FIT_XY;
        str.hashCode();
        char c2 = 65535;
        switch (str.hashCode()) {
            case -1364013995:
                if (str.equals(TtmlNode.CENTER)) {
                    c2 = 0;
                    break;
                }
                break;
            case -1274298614:
                if (str.equals("fitEnd")) {
                    c2 = 1;
                    break;
                }
                break;
            case -522179887:
                if (str.equals("fitStart")) {
                    c2 = 2;
                    break;
                }
                break;
            case -340708175:
                if (str.equals("centerInside")) {
                    c2 = 3;
                    break;
                }
                break;
            case 97441490:
                if (str.equals("fitXY")) {
                    c2 = 4;
                    break;
                }
                break;
            case 520762310:
                if (str.equals("fitCenter")) {
                    c2 = 5;
                    break;
                }
                break;
            case 1161480325:
                if (str.equals("centerCrop")) {
                    c2 = 6;
                    break;
                }
                break;
        }
        switch (c2) {
            case 0:
                return ImageView.ScaleType.CENTER;
            case 1:
                return ImageView.ScaleType.FIT_END;
            case 2:
                return ImageView.ScaleType.FIT_START;
            case 3:
                return ImageView.ScaleType.CENTER_INSIDE;
            case 4:
                return ImageView.ScaleType.FIT_XY;
            case 5:
                return ImageView.ScaleType.FIT_CENTER;
            case 6:
                return ImageView.ScaleType.CENTER_CROP;
            default:
                return scaleType;
        }
    }
}
