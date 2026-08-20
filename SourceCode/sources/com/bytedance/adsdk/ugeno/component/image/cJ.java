package com.bytedance.adsdk.ugeno.component.image;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.text.TextUtils;
import android.widget.ImageView;
import com.bytedance.adsdk.ugeno.Qhi;
import com.bytedance.adsdk.ugeno.cJ.ac;
import com.bytedance.adsdk.ugeno.cJ.fl;
import com.bytedance.adsdk.ugeno.cJ.hm;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
/* compiled from: UGImageWidget.java */
/* loaded from: classes2.dex */
public class cJ extends com.bytedance.adsdk.ugeno.component.cJ<RoundImageView> {
    protected boolean Qe;
    protected String Qhi;
    private int YB;
    private float cjC;
    protected ImageView.ScaleType dIT;

    public cJ(Context context) {
        super(context);
        this.dIT = ImageView.ScaleType.FIT_CENTER;
        this.YB = -1;
        this.cjC = -1.0f;
    }

    @Override // com.bytedance.adsdk.ugeno.component.cJ
    public void cJ() {
        super.cJ();
        Sf();
        ((RoundImageView) this.fl).setScaleType(this.dIT);
        ((RoundImageView) this.fl).setBorderColor(this.es);
        ((RoundImageView) this.fl).setCornerRadius(this.sDy);
        ((RoundImageView) this.fl).setBorderWidth(this.zn);
        if (this.YB != -1) {
            ((RoundImageView) this.fl).setColorFilter(this.YB);
        }
    }

    public void fl(String str) {
        this.Qhi = str;
    }

    private void Sf() {
        if (TextUtils.isEmpty(this.Qhi)) {
            return;
        }
        ((RoundImageView) this.fl).setImageDrawable(null);
        if (this.Qhi.startsWith("local://")) {
            ((RoundImageView) this.fl).setImageResource(fl.cJ(this.cJ, this.Qhi.replace("local://", "")));
        } else if (this.Qhi.startsWith("@")) {
            try {
                ((RoundImageView) this.fl).setImageResource(Integer.parseInt(this.Qhi.substring(1)));
            } catch (Exception unused) {
            }
        } else {
            com.bytedance.adsdk.ugeno.fl.Qhi().cJ().Qhi(this.cJ, this.Qhi, this.cjC, new Qhi.InterfaceC0176Qhi() { // from class: com.bytedance.adsdk.ugeno.component.image.cJ.1
                @Override // com.bytedance.adsdk.ugeno.Qhi.InterfaceC0176Qhi
                public void Qhi(Bitmap bitmap) {
                    Bitmap Qhi;
                    if (bitmap == null) {
                        return;
                    }
                    ((RoundImageView) cJ.this.fl).setImageBitmap(bitmap);
                    if (!cJ.this.Qe || (Qhi = hm.Qhi(cJ.this.cJ, bitmap, 10)) == null) {
                        return;
                    }
                    ((RoundImageView) cJ.this.fl).setBackground(new BitmapDrawable(cJ.this.cJ.getResources(), Qhi));
                }
            });
        }
    }

    @Override // com.bytedance.adsdk.ugeno.component.cJ
    /* renamed from: Qhi */
    public RoundImageView ac() {
        RoundImageView roundImageView = new RoundImageView(this.cJ);
        roundImageView.Qhi(this);
        return roundImageView;
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
            case -878696350:
                if (str.equals("imageBlur")) {
                    c2 = 1;
                    break;
                }
                break;
            case -372324943:
                if (str.equals("isBgGaussianBlur")) {
                    c2 = 2;
                    break;
                }
                break;
            case 114148:
                if (str.equals("src")) {
                    c2 = 3;
                    break;
                }
                break;
            case 1327599912:
                if (str.equals("tintColor")) {
                    c2 = 4;
                    break;
                }
                break;
        }
        switch (c2) {
            case 0:
                this.dIT = Tgh(str2);
                return;
            case 1:
                this.cjC = ac.Qhi(str2, -1.0f);
                return;
            case 2:
                try {
                    this.Qe = Boolean.parseBoolean(str2);
                    return;
                } catch (NumberFormatException unused) {
                    this.Qe = false;
                    return;
                }
            case 3:
                this.Qhi = str2;
                return;
            case 4:
                this.YB = com.bytedance.adsdk.ugeno.cJ.Qhi.Qhi(str2);
                return;
            default:
                return;
        }
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
