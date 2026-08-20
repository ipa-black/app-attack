package com.bytedance.sdk.component.fl.ac.cJ;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.widget.ImageView;
/* compiled from: DefaultDecoder.java */
/* loaded from: classes2.dex */
public class Qhi {
    public static final ImageView.ScaleType Qhi = ImageView.ScaleType.CENTER_INSIDE;
    public static final Bitmap.Config cJ = Bitmap.Config.ARGB_4444;
    private int CJ;
    private final int ROR;
    private final ImageView.ScaleType Sf;
    private final int Tgh;
    private final Bitmap.Config ac;
    private int fl;
    private final int hm = 3840;
    private final int WAv = 104857600;

    public Qhi(int i, int i2, ImageView.ScaleType scaleType, Bitmap.Config config, int i3, int i4) {
        this.ac = config;
        this.CJ = i;
        this.fl = i2;
        this.Sf = scaleType;
        this.Tgh = i3;
        this.ROR = i4;
        Qhi(i, i2);
    }

    static int Qhi(int i, int i2, int i3, int i4, int i5, int i6) {
        double min = Math.min(i / i3, i2 / i4);
        if (i5 > 0 && i6 > 0) {
            min = Math.max(min, Math.min(Math.max(i, i2) / Math.max(i5, i6), Math.min(i, i2) / Math.min(i5, i6)));
        }
        float f2 = 1.0f;
        while (true) {
            float f3 = 2.0f * f2;
            if (f3 > min) {
                return (int) f2;
            }
            f2 = f3;
        }
    }

    private static int Qhi(int i, int i2, int i3, int i4, ImageView.ScaleType scaleType) {
        if (i == 0 && i2 == 0) {
            return i3;
        }
        if (scaleType == ImageView.ScaleType.FIT_XY) {
            return i == 0 ? i3 : i;
        } else if (i == 0) {
            return (int) (i3 * (i2 / i4));
        } else if (i2 == 0) {
            return i;
        } else {
            double d2 = i4 / i3;
            if (scaleType == ImageView.ScaleType.CENTER_CROP) {
                double d3 = i2;
                return ((double) i) * d2 < d3 ? (int) (d3 / d2) : i;
            }
            double d4 = i2;
            return ((double) i) * d2 > d4 ? (int) (d4 / d2) : i;
        }
    }

    public Bitmap Qhi(byte[] bArr) {
        Bitmap decodeByteArray;
        BitmapFactory.Options options = new BitmapFactory.Options();
        if (this.CJ == 0 && this.fl == 0) {
            options.inPreferredConfig = this.ac;
            decodeByteArray = BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
        } else {
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
            int i = options.outWidth;
            int i2 = options.outHeight;
            int Qhi2 = Qhi(this.CJ, this.fl, i, i2, this.Sf);
            int Qhi3 = Qhi(this.fl, this.CJ, i2, i, this.Sf);
            options.inJustDecodeBounds = false;
            options.inSampleSize = Qhi(i, i2, Qhi2, Qhi3, this.Tgh, this.ROR);
            decodeByteArray = BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
            if (decodeByteArray != null && (decodeByteArray.getWidth() > Qhi2 || decodeByteArray.getHeight() > Qhi3)) {
                Bitmap createScaledBitmap = Bitmap.createScaledBitmap(decodeByteArray, Qhi2, Qhi3, true);
                if (createScaledBitmap != decodeByteArray) {
                    decodeByteArray.recycle();
                }
                decodeByteArray = createScaledBitmap;
            }
        }
        if (decodeByteArray != null && decodeByteArray.getByteCount() > 104857600) {
            int width = decodeByteArray.getWidth() / 2;
            int height = decodeByteArray.getHeight() / 2;
            if (width > 0 && height > 0) {
                Bitmap createScaledBitmap2 = Bitmap.createScaledBitmap(decodeByteArray, width, height, true);
                if (createScaledBitmap2 != decodeByteArray) {
                    decodeByteArray.recycle();
                }
                return createScaledBitmap2;
            }
        }
        return decodeByteArray;
    }

    private void Qhi(int i, int i2) {
        if (i > 3840 && i2 > 3840) {
            if (i > i2) {
                this.CJ = 3840;
                this.fl = (i2 * 3840) / i;
                return;
            }
            this.CJ = (i * 3840) / i2;
            this.fl = 3840;
        } else if (i > 3840) {
            this.CJ = 3840;
            this.fl = (i2 * 3840) / i;
        } else if (i2 > 3840) {
            this.CJ = (i * 3840) / i2;
            this.fl = 3840;
        }
    }
}
