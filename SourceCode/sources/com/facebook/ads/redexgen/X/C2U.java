package com.facebook.ads.redexgen.X;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RadialGradient;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.common.primitives.SignedBytes;
import java.util.Arrays;
/* renamed from: com.facebook.ads.redexgen.X.2U  reason: invalid class name */
/* loaded from: assets/audience_network.dex */
public final class C2U extends Drawable {
    public static C2T A0G;
    public static byte[] A0H;
    public static String[] A0I = {"YEFrjfwCEWu", "", "GYovhjhdb5Je", "S1Fz", "LeiEw92n2EsObareFd", "xgqXw3gEiUgyln4SIM", "kGClknFKKNldAaaK4EgXWOsNKvCYjz7L", "I70UDyBH67pytg1dUxrP2KgAWNh3bG3K"};
    public static final double A0J;
    public float A00;
    public float A01;
    public float A02;
    public float A03;
    public ColorStateList A04;
    public Paint A05;
    public Paint A06;
    public Path A08;
    public final RectF A0F;
    public boolean A0A = true;
    public boolean A09 = true;
    public boolean A0B = false;
    public final int A0E = 922746880;
    public final int A0D = 50331648;
    public final int A0C = C2P.A09;
    public Paint A07 = new Paint(5);

    public static String A03(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A0H, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = copyOfRange.length;
            String[] strArr = A0I;
            if (strArr[5].length() != strArr[4].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0I;
            strArr2[5] = "Hial5Dc7DTVcebgm6Z";
            strArr2[4] = "T1onITFvXBLfXkfgru";
            if (i4 >= length) {
                return new String(copyOfRange);
            }
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 69);
            i4++;
        }
    }

    public static void A05() {
        A0H = new byte[]{114, 124, 17, 41, 47, 40, 124, 62, 57, 124, 98, 97, 124, 108, 115, 84, 76, 91, 86, 83, 94, 26, 87, 91, 66, 26, 73, 82, 91, 94, 85, 77, 26, 73, 83, SignedBytes.MAX_POWER_OF_TWO, 95, 26, 8, 47, 55, 32, 45, 40, 37, 97, 51, 32, 37, 40, 52, 50, 97, 1, 38, 62, 41, 36, 33, 44, 104, 59, 32, 41, 44, 39, 63, 104, 59, 33, 50, 45, 104};
    }

    static {
        A05();
        A0J = Math.cos(Math.toRadians(45.0d));
    }

    public C2U(Resources resources, ColorStateList colorStateList, float f2, float f3, float f4) {
        A07(colorStateList);
        this.A05 = new Paint(5);
        this.A05.setStyle(Paint.Style.FILL);
        this.A00 = (int) (0.5f + f2);
        this.A0F = new RectF();
        this.A06 = new Paint(this.A05);
        this.A06.setAntiAlias(false);
        A06(f3, f4);
    }

    public static float A00(float f2, float f3, boolean z) {
        if (z) {
            double d2 = f2;
            if (A0I[2].length() != 3) {
                String[] strArr = A0I;
                strArr[5] = "P9aPeBSvznAhF57KLP";
                strArr[4] = "W3RUpaMuYeMV1XeTAU";
                return (float) (d2 + ((1.0d - A0J) * f3));
            }
            throw new RuntimeException();
        }
        return f2;
    }

    public static float A01(float f2, float f3, boolean z) {
        if (z) {
            return (float) ((1.5f * f2) + ((1.0d - A0J) * f3));
        }
        return 1.5f * f2;
    }

    private int A02(float f2) {
        int i = (int) (0.5f + f2);
        if (i % 2 == 1) {
            int i2 = i - 1;
            String[] strArr = A0I;
            String str = strArr[0];
            String str2 = strArr[3];
            int length = str.length();
            int i3 = str2.length();
            if (length != i3) {
                String[] strArr2 = A0I;
                strArr2[0] = "0g5GSSLFt9w";
                strArr2[3] = "EJV6";
                return i2;
            }
            throw new RuntimeException();
        }
        return i;
    }

    private void A04() {
        float f2 = this.A00;
        RectF rectF = new RectF(-f2, -f2, f2, f2);
        RectF rectF2 = new RectF(rectF);
        float f3 = this.A03;
        rectF2.inset(-f3, -f3);
        Path path = this.A08;
        if (path == null) {
            this.A08 = new Path();
        } else {
            path.reset();
        }
        this.A08.setFillType(Path.FillType.EVEN_ODD);
        this.A08.moveTo(-this.A00, 0.0f);
        this.A08.rLineTo(-this.A03, 0.0f);
        this.A08.arcTo(rectF2, 180.0f, 90.0f, false);
        this.A08.arcTo(rectF, 270.0f, -90.0f, false);
        this.A08.close();
        float f4 = this.A00;
        float f5 = this.A03;
        float f6 = f4 / (f4 + f5);
        Paint paint = this.A05;
        float f7 = f4 + f5;
        int i = this.A0E;
        paint.setShader(new RadialGradient(0.0f, 0.0f, f7, new int[]{i, i, this.A0D}, new float[]{0.0f, f6, 1.0f}, Shader.TileMode.CLAMP));
        Paint paint2 = this.A06;
        float f8 = this.A00;
        float f9 = this.A03;
        float f10 = (-f8) + f9;
        float f11 = (-f8) - f9;
        int i2 = this.A0E;
        paint2.setShader(new LinearGradient(0.0f, f10, 0.0f, f11, new int[]{i2, i2, this.A0D}, new float[]{0.0f, 0.5f, 1.0f}, Shader.TileMode.CLAMP));
        this.A06.setAntiAlias(false);
    }

    private void A06(float f2, float f3) {
        String A03 = A03(0, 14, 25);
        if (f2 >= 0.0f) {
            int i = (f3 > 0.0f ? 1 : (f3 == 0.0f ? 0 : -1));
            if (A0I[1].length() == 0) {
                A0I[2] = "3ZLq2wnsXXEHTe1p9";
                if (i >= 0) {
                    float A02 = A02(f2);
                    float A022 = A02(f3);
                    if (A02 > A022) {
                        A02 = A022;
                        if (!this.A0B) {
                            this.A0B = true;
                        }
                    }
                    if (this.A02 == A02 && this.A01 == A022) {
                        return;
                    }
                    this.A02 = A02;
                    this.A01 = A022;
                    float f4 = 1.5f * A02;
                    if (A0I[2].length() != 3) {
                        A0I[2] = "TJpNel9JPCCGijw6acwFd0iMJz";
                        this.A03 = (int) (f4 + this.A0C + 0.5f);
                        this.A0A = true;
                        invalidateSelf();
                        return;
                    }
                } else {
                    throw new IllegalArgumentException(A03(14, 24, 127) + f3 + A03);
                }
            }
            throw new RuntimeException();
        }
        throw new IllegalArgumentException(A03(53, 20, 13) + f2 + A03);
    }

    private void A07(ColorStateList colorStateList) {
        if (colorStateList == null) {
            colorStateList = ColorStateList.valueOf(0);
        }
        this.A04 = colorStateList;
        Paint paint = this.A07;
        ColorStateList colorStateList2 = this.A04;
        int[] state = getState();
        ColorStateList colorStateList3 = this.A04;
        if (A0I[2].length() != 3) {
            String[] strArr = A0I;
            strArr[0] = "VZiE9OVYqDu";
            strArr[3] = "EWr6";
            paint.setColor(colorStateList2.getColorForState(state, colorStateList3.getDefaultColor()));
            return;
        }
        throw new RuntimeException();
    }

    private void A08(Canvas canvas) {
        float f2 = this.A00;
        float f3 = (-f2) - this.A03;
        float edgeShadowTop = this.A0C;
        float f4 = f2 + edgeShadowTop;
        float edgeShadowTop2 = this.A02;
        float inset = f4 + (edgeShadowTop2 / 2.0f);
        float edgeShadowTop3 = inset * 2.0f;
        boolean z = this.A0F.width() - edgeShadowTop3 > 0.0f;
        float edgeShadowTop4 = inset * 2.0f;
        boolean z2 = this.A0F.height() - edgeShadowTop4 > 0.0f;
        int save = canvas.save();
        float edgeShadowTop5 = this.A0F.top;
        canvas.translate(this.A0F.left + inset, edgeShadowTop5 + inset);
        canvas.drawPath(this.A08, this.A05);
        if (z) {
            float edgeShadowTop6 = inset * 2.0f;
            float width = this.A0F.width() - edgeShadowTop6;
            float edgeShadowTop7 = this.A00;
            canvas.drawRect(0.0f, f3, width, -edgeShadowTop7, this.A06);
        }
        canvas.restoreToCount(save);
        int save2 = canvas.save();
        float edgeShadowTop8 = this.A0F.bottom;
        canvas.translate(this.A0F.right - inset, edgeShadowTop8 - inset);
        canvas.rotate(180.0f);
        canvas.drawPath(this.A08, this.A05);
        if (z) {
            float edgeShadowTop9 = inset * 2.0f;
            float width2 = this.A0F.width() - edgeShadowTop9;
            float edgeShadowTop10 = this.A00;
            float f5 = -edgeShadowTop10;
            float edgeShadowTop11 = this.A03;
            canvas.drawRect(0.0f, f3, width2, f5 + edgeShadowTop11, this.A06);
        }
        canvas.restoreToCount(save2);
        int save3 = canvas.save();
        float edgeShadowTop12 = this.A0F.bottom;
        canvas.translate(this.A0F.left + inset, edgeShadowTop12 - inset);
        if (A0I[2].length() != 3) {
            A0I[2] = "QAUm";
            canvas.rotate(270.0f);
            canvas.drawPath(this.A08, this.A05);
            if (z2) {
                float edgeShadowTop13 = inset * 2.0f;
                float height = this.A0F.height() - edgeShadowTop13;
                float edgeShadowTop14 = this.A00;
                canvas.drawRect(0.0f, f3, height, -edgeShadowTop14, this.A06);
            }
            canvas.restoreToCount(save3);
            int save4 = canvas.save();
            float f6 = this.A0F.right - inset;
            float f7 = this.A0F.top;
            if (A0I[2].length() != 3) {
                A0I[2] = "4hs9knzgsM3vbS2";
                canvas.translate(f6, f7 + inset);
                canvas.rotate(90.0f);
                canvas.drawPath(this.A08, this.A05);
                if (z2) {
                    canvas.drawRect(0.0f, f3, this.A0F.height() - (2.0f * inset), -this.A00, this.A06);
                }
                canvas.restoreToCount(save4);
                return;
            }
        }
        throw new RuntimeException();
    }

    private void A09(Rect rect) {
        float f2 = this.A01 * 1.5f;
        RectF rectF = this.A0F;
        float f3 = rect.left;
        float verticalOffset = this.A01;
        float f4 = rect.right;
        float verticalOffset2 = this.A01;
        float f5 = f4 - verticalOffset2;
        float verticalOffset3 = rect.bottom;
        rectF.set(f3 + verticalOffset, rect.top + f2, f5, verticalOffset3 - f2);
        A04();
    }

    public final float A0A() {
        return this.A00;
    }

    public final float A0B() {
        return this.A01;
    }

    public final float A0C() {
        float f2 = this.A01;
        float content = this.A0C;
        return (((this.A01 * 1.5f) + content) * 2.0f) + (Math.max(f2, this.A00 + this.A0C + ((f2 * 1.5f) / 2.0f)) * 2.0f);
    }

    public final float A0D() {
        float f2 = this.A01;
        float f3 = this.A01;
        float content = this.A0C;
        return ((f3 + content) * 2.0f) + (Math.max(f2, this.A00 + this.A0C + (f2 / 2.0f)) * 2.0f);
    }

    public final float A0E() {
        return this.A02;
    }

    public final ColorStateList A0F() {
        return this.A04;
    }

    public final void A0G(float f2) {
        if (f2 >= 0.0f) {
            float f3 = (int) (0.5f + f2);
            if (this.A00 == f3) {
                return;
            }
            this.A00 = f3;
            this.A0A = true;
            invalidateSelf();
            return;
        }
        throw new IllegalArgumentException(A03(38, 15, 4) + f2 + A03(0, 14, 25));
    }

    public final void A0H(float f2) {
        A06(this.A02, f2);
    }

    public final void A0I(float f2) {
        A06(f2, this.A01);
    }

    public final void A0J(@Nullable ColorStateList colorStateList) {
        A07(colorStateList);
        invalidateSelf();
    }

    public final void A0K(Rect rect) {
        getPadding(rect);
    }

    public final void A0L(boolean z) {
        this.A09 = z;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(@NonNull Canvas canvas) {
        if (this.A0A) {
            A09(getBounds());
            this.A0A = false;
        }
        canvas.translate(0.0f, this.A02 / 2.0f);
        A08(canvas);
        canvas.translate(0.0f, (-this.A02) / 2.0f);
        A0G.A4w(canvas, this.A0F, this.A00, this.A07);
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean getPadding(Rect rect) {
        int ceil = (int) Math.ceil(A01(this.A01, this.A00, this.A09));
        int vOffset = (int) Math.ceil(A00(this.A01, this.A00, this.A09));
        rect.set(vOffset, ceil, vOffset, ceil);
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isStateful() {
        ColorStateList colorStateList = this.A04;
        return (colorStateList != null && colorStateList.isStateful()) || super.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    public final void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        this.A0A = true;
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean onStateChange(int[] iArr) {
        ColorStateList colorStateList = this.A04;
        int colorForState = colorStateList.getColorForState(iArr, colorStateList.getDefaultColor());
        int newColor = this.A07.getColor();
        if (newColor == colorForState) {
            return false;
        }
        this.A07.setColor(colorForState);
        this.A0A = true;
        invalidateSelf();
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i) {
        this.A07.setAlpha(i);
        this.A05.setAlpha(i);
        this.A06.setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        this.A07.setColorFilter(colorFilter);
    }
}
