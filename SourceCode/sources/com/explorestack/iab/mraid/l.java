package com.explorestack.iab.mraid;

import android.text.TextUtils;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
/* loaded from: classes2.dex */
public enum l {
    TopLeft(51),
    TopCenter(49),
    TopRight(53),
    Center(17),
    BottomLeft(83),
    BottomCenter(81),
    BottomRight(85);
    
    public static final /* synthetic */ boolean j = true;

    /* renamed from: a  reason: collision with root package name */
    public final int f9381a;

    l(int i2) {
        this.f9381a = i2;
    }

    public static l a(String str) {
        return a(str, TopRight);
    }

    public static l a(String str, l lVar) {
        if (TextUtils.isEmpty(str)) {
            return lVar;
        }
        if (j || str != null) {
            str.hashCode();
            str.hashCode();
            char c2 = 65535;
            switch (str.hashCode()) {
                case -1364013995:
                    if (str.equals(TtmlNode.CENTER)) {
                        c2 = 0;
                        break;
                    }
                    break;
                case -1314880604:
                    if (str.equals("top-right")) {
                        c2 = 1;
                        break;
                    }
                    break;
                case -1012429441:
                    if (str.equals("top-left")) {
                        c2 = 2;
                        break;
                    }
                    break;
                case -655373719:
                    if (str.equals("bottom-left")) {
                        c2 = 3;
                        break;
                    }
                    break;
                case 1163912186:
                    if (str.equals("bottom-right")) {
                        c2 = 4;
                        break;
                    }
                    break;
                case 1288627767:
                    if (str.equals("bottom-center")) {
                        c2 = 5;
                        break;
                    }
                    break;
                case 1755462605:
                    if (str.equals("top-center")) {
                        c2 = 6;
                        break;
                    }
                    break;
            }
            switch (c2) {
                case 0:
                    return Center;
                case 1:
                    return TopRight;
                case 2:
                    return TopLeft;
                case 3:
                    return BottomLeft;
                case 4:
                    return BottomRight;
                case 5:
                    return BottomCenter;
                case 6:
                    return TopCenter;
                default:
                    return lVar;
            }
        }
        throw new AssertionError();
    }

    public int a() {
        return this.f9381a;
    }
}
