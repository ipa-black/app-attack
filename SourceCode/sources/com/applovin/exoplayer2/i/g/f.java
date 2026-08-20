package com.applovin.exoplayer2.i.g;

import android.text.Spannable;
import android.text.SpannableStringBuilder;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.RelativeSizeSpan;
import android.text.style.StrikethroughSpan;
import android.text.style.StyleSpan;
import android.text.style.TypefaceSpan;
import android.text.style.UnderlineSpan;
import com.applovin.exoplayer2.l.ai;
import com.applovin.exoplayer2.l.q;
import java.util.ArrayDeque;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class f {
    private static d a(d dVar, Map<String, g> map) {
        ArrayDeque arrayDeque = new ArrayDeque();
        arrayDeque.push(dVar);
        while (!arrayDeque.isEmpty()) {
            d dVar2 = (d) arrayDeque.pop();
            g a2 = a(dVar2.f3378f, dVar2.c(), map);
            if (a2 != null && a2.k() == 3) {
                return dVar2;
            }
            for (int a3 = dVar2.a() - 1; a3 >= 0; a3--) {
                arrayDeque.push(dVar2.a(a3));
            }
        }
        return null;
    }

    public static g a(g gVar, String[] strArr, Map<String, g> map) {
        int i = 0;
        if (gVar == null) {
            if (strArr == null) {
                return null;
            }
            if (strArr.length == 1) {
                return map.get(strArr[0]);
            }
            if (strArr.length > 1) {
                g gVar2 = new g();
                int length = strArr.length;
                while (i < length) {
                    gVar2.a(map.get(strArr[i]));
                    i++;
                }
                return gVar2;
            }
        } else if (strArr != null && strArr.length == 1) {
            return gVar.a(map.get(strArr[0]));
        } else {
            if (strArr != null && strArr.length > 1) {
                int length2 = strArr.length;
                while (i < length2) {
                    gVar.a(map.get(strArr[i]));
                    i++;
                }
            }
        }
        return gVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a(String str) {
        return str.replaceAll("\r\n", "\n").replaceAll(" *\n *", "\n").replaceAll("\n", " ").replaceAll("[ \t\\x0B\f\r]+", " ");
    }

    public static void a(Spannable spannable, int i, int i2, g gVar, d dVar, Map<String, g> map, int i3) {
        d a2;
        Object cVar;
        g a3;
        Object absoluteSizeSpan;
        int i4;
        int i5;
        if (gVar.a() != -1) {
            spannable.setSpan(new StyleSpan(gVar.a()), i, i2, 33);
        }
        if (gVar.b()) {
            spannable.setSpan(new StrikethroughSpan(), i, i2, 33);
        }
        if (gVar.c()) {
            spannable.setSpan(new UnderlineSpan(), i, i2, 33);
        }
        if (gVar.f()) {
            com.applovin.exoplayer2.i.d.d.a(spannable, new ForegroundColorSpan(gVar.e()), i, i2, 33);
        }
        if (gVar.h()) {
            com.applovin.exoplayer2.i.d.d.a(spannable, new BackgroundColorSpan(gVar.g()), i, i2, 33);
        }
        if (gVar.d() != null) {
            com.applovin.exoplayer2.i.d.d.a(spannable, new TypefaceSpan(gVar.d()), i, i2, 33);
        }
        if (gVar.p() != null) {
            b bVar = (b) com.applovin.exoplayer2.l.a.b(gVar.p());
            if (bVar.f3355a == -1) {
                i4 = (i3 == 2 || i3 == 1) ? 3 : 1;
                i5 = 1;
            } else {
                i4 = bVar.f3355a;
                i5 = bVar.f3356b;
            }
            com.applovin.exoplayer2.i.d.d.a(spannable, new com.applovin.exoplayer2.i.d.e(i4, i5, bVar.f3357c == -2 ? 1 : bVar.f3357c), i, i2, 33);
        }
        int k = gVar.k();
        if (k == 2) {
            d b2 = b(dVar, map);
            if (b2 != null && (a2 = a(b2, map)) != null) {
                if (a2.a() != 1 || a2.a(0).f3374b == null) {
                    q.b("TtmlRenderUtil", "Skipping rubyText node without exactly one text child.");
                } else {
                    String str = (String) ai.a(a2.a(0).f3374b);
                    g a4 = a(a2.f3378f, a2.c(), map);
                    int l = a4 != null ? a4.l() : -1;
                    if (l == -1 && (a3 = a(b2.f3378f, b2.c(), map)) != null) {
                        l = a3.l();
                    }
                    cVar = new com.applovin.exoplayer2.i.d.c(str, l);
                    spannable.setSpan(cVar, i, i2, 33);
                }
            }
        } else if (k == 3 || k == 4) {
            cVar = new a();
            spannable.setSpan(cVar, i, i2, 33);
        }
        if (gVar.o()) {
            com.applovin.exoplayer2.i.d.d.a(spannable, new com.applovin.exoplayer2.i.d.a(), i, i2, 33);
        }
        int q = gVar.q();
        if (q == 1) {
            absoluteSizeSpan = new AbsoluteSizeSpan((int) gVar.r(), true);
        } else if (q == 2) {
            absoluteSizeSpan = new RelativeSizeSpan(gVar.r());
        } else if (q != 3) {
            return;
        } else {
            absoluteSizeSpan = new RelativeSizeSpan(gVar.r() / 100.0f);
        }
        com.applovin.exoplayer2.i.d.d.a(spannable, absoluteSizeSpan, i, i2, 33);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(SpannableStringBuilder spannableStringBuilder) {
        int length = spannableStringBuilder.length() - 1;
        while (length >= 0 && spannableStringBuilder.charAt(length) == ' ') {
            length--;
        }
        if (length < 0 || spannableStringBuilder.charAt(length) == '\n') {
            return;
        }
        spannableStringBuilder.append('\n');
    }

    private static d b(d dVar, Map<String, g> map) {
        while (dVar != null) {
            g a2 = a(dVar.f3378f, dVar.c(), map);
            if (a2 != null && a2.k() == 1) {
                return dVar;
            }
            dVar = dVar.i;
        }
        return null;
    }
}
