package com.applovin.impl.sdk.utils;

import android.view.View;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
/* loaded from: classes.dex */
public class r {
    public static void a(View view, long j) {
        a(view, j, (Runnable) null);
    }

    public static void a(final View view, long j, final Runnable runnable) {
        view.setVisibility(4);
        AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
        alphaAnimation.setDuration(j);
        alphaAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.applovin.impl.sdk.utils.r.1
            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                Runnable runnable2 = runnable;
                if (runnable2 != null) {
                    runnable2.run();
                }
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
                view.setVisibility(0);
            }
        });
        view.startAnimation(alphaAnimation);
    }

    public static boolean a(int i) {
        return i == 0;
    }

    public static boolean a(int i, int i2) {
        return a(i) != a(i2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0034, code lost:
        if ((r3 & 16) == 16) goto L11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0072, code lost:
        if ((r3 & 1) == 1) goto L14;
     */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0040  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int[] a(int r3, int r4, int r5) {
        /*
            if (r3 != 0) goto L7
            int[] r3 = new int[]{r4, r5}
            return r3
        L7:
            r0 = r3 & 119(0x77, float:1.67E-43)
            r1 = 119(0x77, float:1.67E-43)
            if (r0 != r1) goto L14
            r3 = 13
            int[] r3 = new int[]{r3}
            return r3
        L14:
            r0 = r3 & 112(0x70, float:1.57E-43)
            r1 = 15
            r2 = 112(0x70, float:1.57E-43)
            if (r0 != r2) goto L1e
        L1c:
            r4 = r1
            goto L37
        L1e:
            r0 = r3 & 48
            r2 = 48
            if (r0 != r2) goto L27
            r4 = 10
            goto L37
        L27:
            r0 = r3 & 80
            r2 = 80
            if (r0 != r2) goto L30
            r4 = 12
            goto L37
        L30:
            r0 = r3 & 16
            r2 = 16
            if (r0 != r2) goto L37
            goto L1c
        L37:
            r0 = r3 & 7
            r1 = 14
            r2 = 7
            if (r0 != r2) goto L40
        L3e:
            r5 = r1
            goto L75
        L40:
            boolean r0 = com.applovin.impl.sdk.utils.h.b()
            if (r0 == 0) goto L50
            r0 = 8388611(0x800003, float:1.1754948E-38)
            r2 = r3 & r0
            if (r2 != r0) goto L50
            r5 = 20
            goto L75
        L50:
            r0 = r3 & 3
            r2 = 3
            if (r0 != r2) goto L58
            r5 = 9
            goto L75
        L58:
            boolean r0 = com.applovin.impl.sdk.utils.h.b()
            if (r0 == 0) goto L68
            r0 = 8388613(0x800005, float:1.175495E-38)
            r2 = r3 & r0
            if (r2 != r0) goto L68
            r5 = 21
            goto L75
        L68:
            r0 = r3 & 5
            r2 = 5
            if (r0 != r2) goto L70
            r5 = 11
            goto L75
        L70:
            r0 = 1
            r3 = r3 & r0
            if (r3 != r0) goto L75
            goto L3e
        L75:
            int[] r3 = new int[]{r5, r4}
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.impl.sdk.utils.r.a(int, int, int):int[]");
    }

    public static String b(int i) {
        return i == 0 ? "VISIBLE" : i == 4 ? "INVISIBLE" : i == 8 ? "GONE" : String.valueOf(i);
    }

    public static void b(final View view, long j, final Runnable runnable) {
        AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, 0.0f);
        alphaAnimation.setDuration(j);
        alphaAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.applovin.impl.sdk.utils.r.2
            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                view.setVisibility(4);
                Runnable runnable2 = runnable;
                if (runnable2 != null) {
                    runnable2.run();
                }
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
                view.setVisibility(0);
            }
        });
        view.startAnimation(alphaAnimation);
    }
}
