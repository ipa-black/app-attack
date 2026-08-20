package com.bytedance.sdk.openadsdk.core.ugen.component;

import android.content.Context;
import android.text.TextUtils;
import android.widget.ImageView;
import com.bytedance.sdk.openadsdk.core.widget.GifView;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
/* compiled from: UGGifWidget.java */
/* loaded from: classes2.dex */
public class cJ extends com.bytedance.adsdk.ugeno.component.cJ<GifView> {
    protected String Qhi;
    protected ImageView.ScaleType dIT;

    public cJ(Context context) {
        super(context);
        this.dIT = ImageView.ScaleType.FIT_CENTER;
    }

    @Override // com.bytedance.adsdk.ugeno.component.cJ
    /* renamed from: Qhi */
    public GifView ac() {
        this.fl = new GifView(this.cJ);
        return (GifView) this.fl;
    }

    @Override // com.bytedance.adsdk.ugeno.component.cJ
    public void cJ() {
        super.cJ();
        Sf();
        ((GifView) this.fl).setScaleType(this.dIT);
    }

    private void Sf() {
        if (TextUtils.isEmpty(this.Qhi)) {
            return;
        }
        if (this.Qhi.startsWith("local://")) {
            ((GifView) this.fl).Qhi(com.bytedance.adsdk.ugeno.cJ.fl.cJ(this.cJ, this.Qhi.replace("local://", "")), false);
            return;
        }
        com.bytedance.adsdk.ugeno.fl.Qhi().cJ().Qhi(this.cJ, this.Qhi, (ImageView) this.fl);
    }

    @Override // com.bytedance.adsdk.ugeno.component.cJ
    public void Qhi(String str, String str2) {
        super.Qhi(str, str2);
        if (TextUtils.isEmpty(str)) {
            return;
        }
        str.hashCode();
        if (str.equals("scaleType")) {
            this.dIT = fl(str2);
        } else if (str.equals("src")) {
            this.Qhi = str2;
        }
    }

    private ImageView.ScaleType fl(String str) {
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
