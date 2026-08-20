package com.applovin.exoplayer2.i.e;

import android.text.TextUtils;
import com.applovin.exoplayer2.common.base.Ascii;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
/* loaded from: classes.dex */
final class b {

    /* renamed from: a  reason: collision with root package name */
    public final int f3315a;

    /* renamed from: b  reason: collision with root package name */
    public final int f3316b;

    /* renamed from: c  reason: collision with root package name */
    public final int f3317c;

    /* renamed from: d  reason: collision with root package name */
    public final int f3318d;

    /* renamed from: e  reason: collision with root package name */
    public final int f3319e;

    private b(int i, int i2, int i3, int i4, int i5) {
        this.f3315a = i;
        this.f3316b = i2;
        this.f3317c = i3;
        this.f3318d = i4;
        this.f3319e = i5;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static b a(String str) {
        char c2;
        com.applovin.exoplayer2.l.a.a(str.startsWith("Format:"));
        String[] split = TextUtils.split(str.substring(7), ",");
        int i = -1;
        int i2 = -1;
        int i3 = -1;
        int i4 = -1;
        for (int i5 = 0; i5 < split.length; i5++) {
            String lowerCase = Ascii.toLowerCase(split[i5].trim());
            lowerCase.hashCode();
            switch (lowerCase.hashCode()) {
                case 100571:
                    if (lowerCase.equals(TtmlNode.END)) {
                        c2 = 0;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 3556653:
                    if (lowerCase.equals("text")) {
                        c2 = 1;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 109757538:
                    if (lowerCase.equals(TtmlNode.START)) {
                        c2 = 2;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 109780401:
                    if (lowerCase.equals(TtmlNode.TAG_STYLE)) {
                        c2 = 3;
                        break;
                    }
                    c2 = 65535;
                    break;
                default:
                    c2 = 65535;
                    break;
            }
            switch (c2) {
                case 0:
                    i2 = i5;
                    break;
                case 1:
                    i4 = i5;
                    break;
                case 2:
                    i = i5;
                    break;
                case 3:
                    i3 = i5;
                    break;
            }
        }
        if (i == -1 || i2 == -1 || i4 == -1) {
            return null;
        }
        return new b(i, i2, i3, i4, split.length);
    }
}
