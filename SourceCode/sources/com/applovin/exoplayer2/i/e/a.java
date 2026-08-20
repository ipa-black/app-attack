package com.applovin.exoplayer2.i.e;

import android.text.Layout;
import com.applovin.exoplayer2.i.e.c;
import com.applovin.exoplayer2.i.f;
import com.applovin.exoplayer2.l.ai;
import com.applovin.exoplayer2.l.q;
import com.applovin.exoplayer2.l.y;
import com.google.android.exoplayer2.C;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* loaded from: classes.dex */
public final class a extends com.applovin.exoplayer2.i.d {

    /* renamed from: a  reason: collision with root package name */
    private static final Pattern f3309a = Pattern.compile("(?:(\\d+):)?(\\d+):(\\d+)[:.](\\d+)");

    /* renamed from: b  reason: collision with root package name */
    private final boolean f3310b;

    /* renamed from: c  reason: collision with root package name */
    private final b f3311c;

    /* renamed from: d  reason: collision with root package name */
    private Map<String, c> f3312d;

    /* renamed from: e  reason: collision with root package name */
    private float f3313e;

    /* renamed from: f  reason: collision with root package name */
    private float f3314f;

    public a() {
        this(null);
    }

    public a(List<byte[]> list) {
        super("SsaDecoder");
        this.f3313e = -3.4028235E38f;
        this.f3314f = -3.4028235E38f;
        if (list == null || list.isEmpty()) {
            this.f3310b = false;
            this.f3311c = null;
            return;
        }
        this.f3310b = true;
        String a2 = ai.a(list.get(0));
        com.applovin.exoplayer2.l.a.a(a2.startsWith("Format:"));
        this.f3311c = (b) com.applovin.exoplayer2.l.a.b(b.a(a2));
        a(new y(list.get(1)));
    }

    private static int a(long j, List<Long> list, List<List<com.applovin.exoplayer2.i.a>> list2) {
        int i;
        int size = list.size() - 1;
        while (true) {
            if (size < 0) {
                i = 0;
                break;
            } else if (list.get(size).longValue() == j) {
                return size;
            } else {
                if (list.get(size).longValue() < j) {
                    i = size + 1;
                    break;
                }
                size--;
            }
        }
        list.add(i, Long.valueOf(j));
        list2.add(i, i == 0 ? new ArrayList() : new ArrayList(list2.get(i - 1)));
        return i;
    }

    private static long a(String str) {
        Matcher matcher = f3309a.matcher(str.trim());
        return !matcher.matches() ? C.TIME_UNSET : (Long.parseLong((String) ai.a(matcher.group(1))) * 3600000000L) + (Long.parseLong((String) ai.a(matcher.group(2))) * 60000000) + (Long.parseLong((String) ai.a(matcher.group(3))) * 1000000) + (Long.parseLong((String) ai.a(matcher.group(4))) * 10000);
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x006c  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x007c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static com.applovin.exoplayer2.i.a a(java.lang.String r6, com.applovin.exoplayer2.i.e.c r7, com.applovin.exoplayer2.i.e.c.b r8, float r9, float r10) {
        /*
            android.text.SpannableString r0 = new android.text.SpannableString
            r0.<init>(r6)
            com.applovin.exoplayer2.i.a$a r6 = new com.applovin.exoplayer2.i.a$a
            r6.<init>()
            com.applovin.exoplayer2.i.a$a r6 = r6.a(r0)
            r1 = -8388609(0xffffffffff7fffff, float:-3.4028235E38)
            r2 = 0
            if (r7 == 0) goto L88
            java.lang.Integer r3 = r7.f3322c
            r4 = 33
            if (r3 == 0) goto L2c
            android.text.style.ForegroundColorSpan r3 = new android.text.style.ForegroundColorSpan
            java.lang.Integer r5 = r7.f3322c
            int r5 = r5.intValue()
            r3.<init>(r5)
            int r5 = r0.length()
            r0.setSpan(r3, r2, r5, r4)
        L2c:
            float r3 = r7.f3323d
            int r3 = (r3 > r1 ? 1 : (r3 == r1 ? 0 : -1))
            r5 = 1
            if (r3 == 0) goto L3d
            int r3 = (r10 > r1 ? 1 : (r10 == r1 ? 0 : -1))
            if (r3 == 0) goto L3d
            float r3 = r7.f3323d
            float r3 = r3 / r10
            r6.b(r3, r5)
        L3d:
            boolean r3 = r7.f3324e
            if (r3 == 0) goto L4c
            boolean r3 = r7.f3325f
            if (r3 == 0) goto L4c
            android.text.style.StyleSpan r3 = new android.text.style.StyleSpan
            r5 = 3
            r3.<init>(r5)
            goto L55
        L4c:
            boolean r3 = r7.f3324e
            if (r3 == 0) goto L5d
            android.text.style.StyleSpan r3 = new android.text.style.StyleSpan
            r3.<init>(r5)
        L55:
            int r5 = r0.length()
            r0.setSpan(r3, r2, r5, r4)
            goto L68
        L5d:
            boolean r3 = r7.f3325f
            if (r3 == 0) goto L68
            android.text.style.StyleSpan r3 = new android.text.style.StyleSpan
            r5 = 2
            r3.<init>(r5)
            goto L55
        L68:
            boolean r3 = r7.f3326g
            if (r3 == 0) goto L78
            android.text.style.UnderlineSpan r3 = new android.text.style.UnderlineSpan
            r3.<init>()
            int r5 = r0.length()
            r0.setSpan(r3, r2, r5, r4)
        L78:
            boolean r3 = r7.f3327h
            if (r3 == 0) goto L88
            android.text.style.StrikethroughSpan r3 = new android.text.style.StrikethroughSpan
            r3.<init>()
            int r5 = r0.length()
            r0.setSpan(r3, r2, r5, r4)
        L88:
            int r0 = r8.f3340a
            r3 = -1
            if (r0 == r3) goto L90
            int r3 = r8.f3340a
            goto L94
        L90:
            if (r7 == 0) goto L94
            int r3 = r7.f3321b
        L94:
            android.text.Layout$Alignment r7 = b(r3)
            com.applovin.exoplayer2.i.a$a r7 = r6.a(r7)
            int r0 = d(r3)
            com.applovin.exoplayer2.i.a$a r7 = r7.b(r0)
            int r0 = c(r3)
            r7.a(r0)
            android.graphics.PointF r7 = r8.f3341b
            if (r7 == 0) goto Lc5
            int r7 = (r10 > r1 ? 1 : (r10 == r1 ? 0 : -1))
            if (r7 == 0) goto Lc5
            int r7 = (r9 > r1 ? 1 : (r9 == r1 ? 0 : -1))
            if (r7 == 0) goto Lc5
            android.graphics.PointF r7 = r8.f3341b
            float r7 = r7.x
            float r7 = r7 / r9
            r6.a(r7)
            android.graphics.PointF r7 = r8.f3341b
            float r7 = r7.y
            float r7 = r7 / r10
            goto Ld8
        Lc5:
            int r7 = r6.c()
            float r7 = e(r7)
            r6.a(r7)
            int r7 = r6.b()
            float r7 = e(r7)
        Ld8:
            r6.a(r7, r2)
            com.applovin.exoplayer2.i.a r6 = r6.e()
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.exoplayer2.i.e.a.a(java.lang.String, com.applovin.exoplayer2.i.e.c, com.applovin.exoplayer2.i.e.c$b, float, float):com.applovin.exoplayer2.i.a");
    }

    private void a(y yVar) {
        while (true) {
            String C = yVar.C();
            if (C == null) {
                return;
            }
            if ("[Script Info]".equalsIgnoreCase(C)) {
                b(yVar);
            } else if ("[V4+ Styles]".equalsIgnoreCase(C)) {
                this.f3312d = c(yVar);
            } else if ("[V4 Styles]".equalsIgnoreCase(C)) {
                q.b("SsaDecoder", "[V4 Styles] are not supported");
            } else if ("[Events]".equalsIgnoreCase(C)) {
                return;
            }
        }
    }

    private void a(y yVar, List<List<com.applovin.exoplayer2.i.a>> list, List<Long> list2) {
        b bVar = this.f3310b ? this.f3311c : null;
        while (true) {
            String C = yVar.C();
            if (C == null) {
                return;
            }
            if (C.startsWith("Format:")) {
                bVar = b.a(C);
            } else if (C.startsWith("Dialogue:")) {
                if (bVar == null) {
                    q.c("SsaDecoder", "Skipping dialogue line before complete format: " + C);
                } else {
                    a(C, bVar, list, list2);
                }
            }
        }
    }

    private void a(String str, b bVar, List<List<com.applovin.exoplayer2.i.a>> list, List<Long> list2) {
        StringBuilder sb;
        com.applovin.exoplayer2.l.a.a(str.startsWith("Dialogue:"));
        String[] split = str.substring(9).split(",", bVar.f3319e);
        if (split.length != bVar.f3319e) {
            sb = new StringBuilder("Skipping dialogue line with fewer columns than format: ");
        } else {
            long a2 = a(split[bVar.f3315a]);
            if (a2 == C.TIME_UNSET) {
                sb = new StringBuilder("Skipping invalid timing: ");
            } else {
                long a3 = a(split[bVar.f3316b]);
                if (a3 != C.TIME_UNSET) {
                    c cVar = (this.f3312d == null || bVar.f3317c == -1) ? null : this.f3312d.get(split[bVar.f3317c].trim());
                    String str2 = split[bVar.f3318d];
                    com.applovin.exoplayer2.i.a a4 = a(c.b.b(str2).replace("\\N", "\n").replace("\\n", "\n").replace("\\h", " "), cVar, c.b.a(str2), this.f3313e, this.f3314f);
                    int a5 = a(a3, list2, list);
                    for (int a6 = a(a2, list2, list); a6 < a5; a6++) {
                        list.get(a6).add(a4);
                    }
                    return;
                }
                sb = new StringBuilder("Skipping invalid timing: ");
            }
        }
        q.c("SsaDecoder", sb.append(str).toString());
    }

    private static Layout.Alignment b(int i) {
        switch (i) {
            case -1:
                return null;
            case 0:
            default:
                q.c("SsaDecoder", "Unknown alignment: " + i);
                return null;
            case 1:
            case 4:
            case 7:
                return Layout.Alignment.ALIGN_NORMAL;
            case 2:
            case 5:
            case 8:
                return Layout.Alignment.ALIGN_CENTER;
            case 3:
            case 6:
            case 9:
                return Layout.Alignment.ALIGN_OPPOSITE;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0059 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:4:0x0006  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void b(com.applovin.exoplayer2.l.y r5) {
        /*
            r4 = this;
        L0:
            java.lang.String r0 = r5.C()
            if (r0 == 0) goto L59
            int r1 = r5.a()
            if (r1 == 0) goto L14
            int r1 = r5.f()
            r2 = 91
            if (r1 == r2) goto L59
        L14:
            java.lang.String r1 = ":"
            java.lang.String[] r0 = r0.split(r1)
            int r1 = r0.length
            r2 = 2
            if (r1 == r2) goto L1f
            goto L0
        L1f:
            r1 = 0
            r1 = r0[r1]
            java.lang.String r1 = r1.trim()
            java.lang.String r1 = com.applovin.exoplayer2.common.base.Ascii.toLowerCase(r1)
            r1.hashCode()
            java.lang.String r2 = "playresx"
            boolean r2 = r1.equals(r2)
            r3 = 1
            if (r2 != 0) goto L4c
            java.lang.String r2 = "playresy"
            boolean r1 = r1.equals(r2)
            if (r1 != 0) goto L3f
            goto L0
        L3f:
            r0 = r0[r3]     // Catch: java.lang.NumberFormatException -> L0
            java.lang.String r0 = r0.trim()     // Catch: java.lang.NumberFormatException -> L0
            float r0 = java.lang.Float.parseFloat(r0)     // Catch: java.lang.NumberFormatException -> L0
            r4.f3314f = r0     // Catch: java.lang.NumberFormatException -> L0
            goto L0
        L4c:
            r0 = r0[r3]     // Catch: java.lang.NumberFormatException -> L0
            java.lang.String r0 = r0.trim()     // Catch: java.lang.NumberFormatException -> L0
            float r0 = java.lang.Float.parseFloat(r0)     // Catch: java.lang.NumberFormatException -> L0
            r4.f3313e = r0     // Catch: java.lang.NumberFormatException -> L0
            goto L0
        L59:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.exoplayer2.i.e.a.b(com.applovin.exoplayer2.l.y):void");
    }

    private static int c(int i) {
        switch (i) {
            case -1:
                return Integer.MIN_VALUE;
            case 0:
            default:
                q.c("SsaDecoder", "Unknown alignment: " + i);
                return Integer.MIN_VALUE;
            case 1:
            case 2:
            case 3:
                return 2;
            case 4:
            case 5:
            case 6:
                return 1;
            case 7:
            case 8:
            case 9:
                return 0;
        }
    }

    private static Map<String, c> c(y yVar) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        c.a aVar = null;
        while (true) {
            String C = yVar.C();
            if (C == null || (yVar.a() != 0 && yVar.f() == 91)) {
                break;
            } else if (C.startsWith("Format:")) {
                aVar = c.a.a(C);
            } else if (C.startsWith("Style:")) {
                if (aVar == null) {
                    q.c("SsaDecoder", "Skipping 'Style:' line before 'Format:' line: " + C);
                } else {
                    c a2 = c.a(C, aVar);
                    if (a2 != null) {
                        linkedHashMap.put(a2.f3320a, a2);
                    }
                }
            }
        }
        return linkedHashMap;
    }

    private static int d(int i) {
        switch (i) {
            case -1:
                return Integer.MIN_VALUE;
            case 0:
            default:
                q.c("SsaDecoder", "Unknown alignment: " + i);
                return Integer.MIN_VALUE;
            case 1:
            case 4:
            case 7:
                return 0;
            case 2:
            case 5:
            case 8:
                return 1;
            case 3:
            case 6:
            case 9:
                return 2;
        }
    }

    private static float e(int i) {
        if (i != 0) {
            if (i != 1) {
                return i != 2 ? -3.4028235E38f : 0.95f;
            }
            return 0.5f;
        }
        return 0.05f;
    }

    @Override // com.applovin.exoplayer2.i.d
    protected f a(byte[] bArr, int i, boolean z) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        y yVar = new y(bArr, i);
        if (!this.f3310b) {
            a(yVar);
        }
        a(yVar, arrayList, arrayList2);
        return new d(arrayList, arrayList2);
    }
}
