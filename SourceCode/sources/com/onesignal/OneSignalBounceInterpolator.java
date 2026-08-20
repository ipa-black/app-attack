package com.onesignal;

import android.view.animation.Interpolator;
/* loaded from: classes3.dex */
class OneSignalBounceInterpolator implements Interpolator {
    private double mAmplitude;
    private double mFrequency;

    /* JADX INFO: Access modifiers changed from: package-private */
    public OneSignalBounceInterpolator(double d2, double d3) {
        this.mAmplitude = d2;
        this.mFrequency = d3;
    }

    @Override // android.animation.TimeInterpolator
    public float getInterpolation(float f2) {
        return (float) ((Math.pow(2.718281828459045d, (-f2) / this.mAmplitude) * (-1.0d) * Math.cos(this.mFrequency * f2)) + 1.0d);
    }
}
