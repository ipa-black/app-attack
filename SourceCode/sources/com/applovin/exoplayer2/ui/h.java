package com.applovin.exoplayer2.ui;

import android.text.Html;
import android.text.Spanned;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.RelativeSizeSpan;
import android.text.style.StrikethroughSpan;
import android.text.style.StyleSpan;
import android.text.style.TypefaceSpan;
import android.text.style.UnderlineSpan;
import android.util.SparseArray;
import com.applovin.exoplayer2.common.a.u;
import com.applovin.exoplayer2.l.ai;
import com.applovin.exoplayer2.ui.h;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class h {

    /* renamed from: a  reason: collision with root package name */
    private static final Pattern f4150a = Pattern.compile("(&#13;)?&#10;");

    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public final String f4151a;

        /* renamed from: b  reason: collision with root package name */
        public final Map<String, String> f4152b;

        private a(String str, Map<String, String> map) {
            this.f4151a = str;
            this.f4152b = map;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class b {

        /* renamed from: e  reason: collision with root package name */
        private static final Comparator<b> f4153e = new Comparator() { // from class: com.applovin.exoplayer2.ui.h$b$$ExternalSyntheticLambda0
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int b2;
                b2 = h.b.b((h.b) obj, (h.b) obj2);
                return b2;
            }
        };

        /* renamed from: f  reason: collision with root package name */
        private static final Comparator<b> f4154f = new Comparator() { // from class: com.applovin.exoplayer2.ui.h$b$$ExternalSyntheticLambda1
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int a2;
                a2 = h.b.a((h.b) obj, (h.b) obj2);
                return a2;
            }
        };

        /* renamed from: a  reason: collision with root package name */
        public final int f4155a;

        /* renamed from: b  reason: collision with root package name */
        public final int f4156b;

        /* renamed from: c  reason: collision with root package name */
        public final String f4157c;

        /* renamed from: d  reason: collision with root package name */
        public final String f4158d;

        private b(int i, int i2, String str, String str2) {
            this.f4155a = i;
            this.f4156b = i2;
            this.f4157c = str;
            this.f4158d = str2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ int a(b bVar, b bVar2) {
            int compare = Integer.compare(bVar2.f4155a, bVar.f4155a);
            if (compare != 0) {
                return compare;
            }
            int compareTo = bVar2.f4157c.compareTo(bVar.f4157c);
            return compareTo != 0 ? compareTo : bVar2.f4158d.compareTo(bVar.f4158d);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ int b(b bVar, b bVar2) {
            int compare = Integer.compare(bVar2.f4156b, bVar.f4156b);
            if (compare != 0) {
                return compare;
            }
            int compareTo = bVar.f4157c.compareTo(bVar2.f4157c);
            return compareTo != 0 ? compareTo : bVar.f4158d.compareTo(bVar2.f4158d);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        private final List<b> f4159a = new ArrayList();

        /* renamed from: b  reason: collision with root package name */
        private final List<b> f4160b = new ArrayList();
    }

    private static SparseArray<c> a(Spanned spanned, float f2) {
        Object[] spans;
        SparseArray<c> sparseArray = new SparseArray<>();
        for (Object obj : spanned.getSpans(0, spanned.length(), Object.class)) {
            String a2 = a(obj, f2);
            String a3 = a(obj);
            int spanStart = spanned.getSpanStart(obj);
            int spanEnd = spanned.getSpanEnd(obj);
            if (a2 != null) {
                com.applovin.exoplayer2.l.a.b(a3);
                b bVar = new b(spanStart, spanEnd, a2, a3);
                a(sparseArray, spanStart).f4159a.add(bVar);
                a(sparseArray, spanEnd).f4160b.add(bVar);
            }
        }
        return sparseArray;
    }

    public static a a(CharSequence charSequence, float f2) {
        if (charSequence == null) {
            return new a("", u.a());
        }
        if (charSequence instanceof Spanned) {
            Spanned spanned = (Spanned) charSequence;
            HashSet<Integer> hashSet = new HashSet();
            int i = 0;
            for (BackgroundColorSpan backgroundColorSpan : (BackgroundColorSpan[]) spanned.getSpans(0, spanned.length(), BackgroundColorSpan.class)) {
                hashSet.add(Integer.valueOf(backgroundColorSpan.getBackgroundColor()));
            }
            HashMap hashMap = new HashMap();
            for (Integer num : hashSet) {
                int intValue = num.intValue();
                hashMap.put(e.a("bg_" + intValue), ai.a("background-color:%s;", e.a(intValue)));
            }
            SparseArray<c> a2 = a(spanned, f2);
            StringBuilder sb = new StringBuilder(spanned.length());
            int i2 = 0;
            while (i < a2.size()) {
                int keyAt = a2.keyAt(i);
                sb.append(a(spanned.subSequence(i2, keyAt)));
                c cVar = a2.get(keyAt);
                Collections.sort(cVar.f4160b, b.f4154f);
                for (b bVar : cVar.f4160b) {
                    sb.append(bVar.f4158d);
                }
                Collections.sort(cVar.f4159a, b.f4153e);
                for (b bVar2 : cVar.f4159a) {
                    sb.append(bVar2.f4157c);
                }
                i++;
                i2 = keyAt;
            }
            sb.append(a(spanned.subSequence(i2, spanned.length())));
            return new a(sb.toString(), hashMap);
        }
        return new a(a(charSequence), u.a());
    }

    private static c a(SparseArray<c> sparseArray, int i) {
        c cVar = sparseArray.get(i);
        if (cVar == null) {
            c cVar2 = new c();
            sparseArray.put(i, cVar2);
            return cVar2;
        }
        return cVar;
    }

    private static String a(int i) {
        return i != 2 ? "over right" : "under left";
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0016  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0029  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.lang.String a(int r3, int r4) {
        /*
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            r1 = 2
            r2 = 1
            if (r4 == r2) goto Lf
            if (r4 == r1) goto Lc
            goto L14
        Lc:
            java.lang.String r4 = "open "
            goto L11
        Lf:
            java.lang.String r4 = "filled "
        L11:
            r0.append(r4)
        L14:
            if (r3 == 0) goto L29
            if (r3 == r2) goto L26
            if (r3 == r1) goto L23
            r4 = 3
            if (r3 == r4) goto L20
            java.lang.String r3 = "unset"
            goto L2b
        L20:
            java.lang.String r3 = "sesame"
            goto L2b
        L23:
            java.lang.String r3 = "dot"
            goto L2b
        L26:
            java.lang.String r3 = "circle"
            goto L2b
        L29:
            java.lang.String r3 = "none"
        L2b:
            r0.append(r3)
            java.lang.String r3 = r0.toString()
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.exoplayer2.ui.h.a(int, int):java.lang.String");
    }

    private static String a(CharSequence charSequence) {
        return f4150a.matcher(Html.escapeHtml(charSequence)).replaceAll("<br>");
    }

    private static String a(Object obj) {
        if ((obj instanceof StrikethroughSpan) || (obj instanceof ForegroundColorSpan) || (obj instanceof BackgroundColorSpan) || (obj instanceof com.applovin.exoplayer2.i.d.a) || (obj instanceof AbsoluteSizeSpan) || (obj instanceof RelativeSizeSpan) || (obj instanceof com.applovin.exoplayer2.i.d.e)) {
            return "</span>";
        }
        if (obj instanceof TypefaceSpan) {
            if (((TypefaceSpan) obj).getFamily() != null) {
                return "</span>";
            }
            return null;
        }
        if (obj instanceof StyleSpan) {
            int style = ((StyleSpan) obj).getStyle();
            if (style == 1) {
                return "</b>";
            }
            if (style == 2) {
                return "</i>";
            }
            if (style == 3) {
                return "</i></b>";
            }
        } else if (obj instanceof com.applovin.exoplayer2.i.d.c) {
            return "<rt>" + a((CharSequence) ((com.applovin.exoplayer2.i.d.c) obj).f3303a) + "</rt></ruby>";
        } else {
            if (obj instanceof UnderlineSpan) {
                return "</u>";
            }
        }
        return null;
    }

    private static String a(Object obj, float f2) {
        if (obj instanceof StrikethroughSpan) {
            return "<span style='text-decoration:line-through;'>";
        }
        if (obj instanceof ForegroundColorSpan) {
            return ai.a("<span style='color:%s;'>", e.a(((ForegroundColorSpan) obj).getForegroundColor()));
        }
        if (obj instanceof BackgroundColorSpan) {
            return ai.a("<span class='bg_%s'>", Integer.valueOf(((BackgroundColorSpan) obj).getBackgroundColor()));
        }
        if (obj instanceof com.applovin.exoplayer2.i.d.a) {
            return "<span style='text-combine-upright:all;'>";
        }
        if (obj instanceof AbsoluteSizeSpan) {
            AbsoluteSizeSpan absoluteSizeSpan = (AbsoluteSizeSpan) obj;
            boolean dip = absoluteSizeSpan.getDip();
            float size = absoluteSizeSpan.getSize();
            if (!dip) {
                size /= f2;
            }
            return ai.a("<span style='font-size:%.2fpx;'>", Float.valueOf(size));
        } else if (obj instanceof RelativeSizeSpan) {
            return ai.a("<span style='font-size:%.2f%%;'>", Float.valueOf(((RelativeSizeSpan) obj).getSizeChange() * 100.0f));
        } else {
            if (obj instanceof TypefaceSpan) {
                String family = ((TypefaceSpan) obj).getFamily();
                if (family != null) {
                    return ai.a("<span style='font-family:\"%s\";'>", family);
                }
                return null;
            } else if (obj instanceof StyleSpan) {
                int style = ((StyleSpan) obj).getStyle();
                if (style != 1) {
                    if (style != 2) {
                        if (style != 3) {
                            return null;
                        }
                        return "<b><i>";
                    }
                    return "<i>";
                }
                return "<b>";
            } else if (!(obj instanceof com.applovin.exoplayer2.i.d.c)) {
                if (obj instanceof UnderlineSpan) {
                    return "<u>";
                }
                if (obj instanceof com.applovin.exoplayer2.i.d.e) {
                    com.applovin.exoplayer2.i.d.e eVar = (com.applovin.exoplayer2.i.d.e) obj;
                    return ai.a("<span style='-webkit-text-emphasis-style:%1$s;text-emphasis-style:%1$s;-webkit-text-emphasis-position:%2$s;text-emphasis-position:%2$s;display:inline-block;'>", a(eVar.f3305a, eVar.f3306b), a(eVar.f3307c));
                }
                return null;
            } else {
                int i = ((com.applovin.exoplayer2.i.d.c) obj).f3304b;
                if (i != -1) {
                    if (i != 1) {
                        if (i != 2) {
                            return null;
                        }
                        return "<ruby style='ruby-position:under;'>";
                    }
                    return "<ruby style='ruby-position:over;'>";
                }
                return "<ruby style='ruby-position:unset;'>";
            }
        }
    }
}
