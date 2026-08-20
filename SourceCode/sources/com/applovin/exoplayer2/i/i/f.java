package com.applovin.exoplayer2.i.i;

import android.graphics.Color;
import android.text.Layout;
import android.text.SpannableStringBuilder;
import android.text.SpannedString;
import android.text.TextUtils;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.text.style.UnderlineSpan;
import com.applovin.exoplayer2.i.a;
import com.applovin.exoplayer2.i.i.f;
import com.applovin.exoplayer2.l.ai;
import com.applovin.exoplayer2.l.q;
import com.applovin.exoplayer2.l.y;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.text.Typography;
/* loaded from: classes.dex */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    public static final Pattern f3429a = Pattern.compile("^(\\S+)\\s+-->\\s+(\\S+)(.*)?$");

    /* renamed from: b  reason: collision with root package name */
    private static final Pattern f3430b = Pattern.compile("(\\S+?):(\\S+)");

    /* renamed from: c  reason: collision with root package name */
    private static final Map<String, Integer> f3431c;

    /* renamed from: d  reason: collision with root package name */
    private static final Map<String, Integer> f3432d;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private static final Comparator<a> f3433a = new Comparator() { // from class: com.applovin.exoplayer2.i.i.f$a$$ExternalSyntheticLambda0
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int a2;
                a2 = f.a.a((f.a) obj, (f.a) obj2);
                return a2;
            }
        };

        /* renamed from: b  reason: collision with root package name */
        private final b f3434b;

        /* renamed from: c  reason: collision with root package name */
        private final int f3435c;

        private a(b bVar, int i) {
            this.f3434b = bVar;
            this.f3435c = i;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ int a(a aVar, a aVar2) {
            return Integer.compare(aVar.f3434b.f3437b, aVar2.f3434b.f3437b);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final String f3436a;

        /* renamed from: b  reason: collision with root package name */
        public final int f3437b;

        /* renamed from: c  reason: collision with root package name */
        public final String f3438c;

        /* renamed from: d  reason: collision with root package name */
        public final Set<String> f3439d;

        private b(String str, int i, String str2, Set<String> set) {
            this.f3437b = i;
            this.f3436a = str;
            this.f3438c = str2;
            this.f3439d = set;
        }

        public static b a() {
            return new b("", 0, "", Collections.emptySet());
        }

        public static b a(String str, int i) {
            String str2;
            String trim = str.trim();
            com.applovin.exoplayer2.l.a.a(!trim.isEmpty());
            int indexOf = trim.indexOf(" ");
            if (indexOf == -1) {
                str2 = "";
            } else {
                String trim2 = trim.substring(indexOf).trim();
                trim = trim.substring(0, indexOf);
                str2 = trim2;
            }
            String[] a2 = ai.a(trim, "\\.");
            String str3 = a2[0];
            HashSet hashSet = new HashSet();
            for (int i2 = 1; i2 < a2.length; i2++) {
                hashSet.add(a2[i2]);
            }
            return new b(str3, i, str2, hashSet);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class c implements Comparable<c> {

        /* renamed from: a  reason: collision with root package name */
        public final int f3440a;

        /* renamed from: b  reason: collision with root package name */
        public final com.applovin.exoplayer2.i.i.d f3441b;

        public c(int i, com.applovin.exoplayer2.i.i.d dVar) {
            this.f3440a = i;
            this.f3441b = dVar;
        }

        @Override // java.lang.Comparable
        /* renamed from: a */
        public int compareTo(c cVar) {
            return Integer.compare(this.f3440a, cVar.f3440a);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class d {

        /* renamed from: c  reason: collision with root package name */
        public CharSequence f3444c;

        /* renamed from: a  reason: collision with root package name */
        public long f3442a = 0;

        /* renamed from: b  reason: collision with root package name */
        public long f3443b = 0;

        /* renamed from: d  reason: collision with root package name */
        public int f3445d = 2;

        /* renamed from: e  reason: collision with root package name */
        public float f3446e = -3.4028235E38f;

        /* renamed from: f  reason: collision with root package name */
        public int f3447f = 1;

        /* renamed from: g  reason: collision with root package name */
        public int f3448g = 0;

        /* renamed from: h  reason: collision with root package name */
        public float f3449h = -3.4028235E38f;
        public int i = Integer.MIN_VALUE;
        public float j = 1.0f;
        public int k = Integer.MIN_VALUE;

        private static float a(float f2, int i) {
            int i2 = (f2 > (-3.4028235E38f) ? 1 : (f2 == (-3.4028235E38f) ? 0 : -1));
            if (i2 == 0 || i != 0 || (f2 >= 0.0f && f2 <= 1.0f)) {
                return i2 != 0 ? f2 : i == 0 ? 1.0f : -3.4028235E38f;
            }
            return 1.0f;
        }

        private static float a(int i) {
            if (i != 4) {
                return i != 5 ? 0.5f : 1.0f;
            }
            return 0.0f;
        }

        private static float a(int i, float f2) {
            if (i != 0) {
                if (i == 1) {
                    return f2 <= 0.5f ? f2 * 2.0f : (1.0f - f2) * 2.0f;
                } else if (i == 2) {
                    return f2;
                } else {
                    throw new IllegalStateException(String.valueOf(i));
                }
            }
            return 1.0f - f2;
        }

        private static int b(int i) {
            if (i != 1) {
                if (i != 3) {
                    if (i != 4) {
                        return i != 5 ? 1 : 2;
                    }
                    return 0;
                }
                return 2;
            }
            return 0;
        }

        private static Layout.Alignment c(int i) {
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        if (i != 4) {
                            if (i != 5) {
                                q.c("WebvttCueParser", "Unknown textAlignment: " + i);
                                return null;
                            }
                        }
                    }
                    return Layout.Alignment.ALIGN_OPPOSITE;
                }
                return Layout.Alignment.ALIGN_CENTER;
            }
            return Layout.Alignment.ALIGN_NORMAL;
        }

        public e a() {
            return new e(b().e(), this.f3442a, this.f3443b);
        }

        public a.C0045a b() {
            float f2 = this.f3449h;
            if (f2 == -3.4028235E38f) {
                f2 = a(this.f3445d);
            }
            int i = this.i;
            if (i == Integer.MIN_VALUE) {
                i = b(this.f3445d);
            }
            a.C0045a d2 = new a.C0045a().a(c(this.f3445d)).a(a(this.f3446e, this.f3447f), this.f3447f).a(this.f3448g).a(f2).b(i).b(Math.min(this.j, a(i, f2))).d(this.k);
            CharSequence charSequence = this.f3444c;
            if (charSequence != null) {
                d2.a(charSequence);
            }
            return d2;
        }
    }

    static {
        HashMap hashMap = new HashMap();
        hashMap.put("white", Integer.valueOf(Color.rgb(255, 255, 255)));
        hashMap.put("lime", Integer.valueOf(Color.rgb(0, 255, 0)));
        hashMap.put("cyan", Integer.valueOf(Color.rgb(0, 255, 255)));
        hashMap.put("red", Integer.valueOf(Color.rgb(255, 0, 0)));
        hashMap.put("yellow", Integer.valueOf(Color.rgb(255, 255, 0)));
        hashMap.put("magenta", Integer.valueOf(Color.rgb(255, 0, 255)));
        hashMap.put("blue", Integer.valueOf(Color.rgb(0, 0, 255)));
        hashMap.put("black", Integer.valueOf(Color.rgb(0, 0, 0)));
        f3431c = Collections.unmodifiableMap(hashMap);
        HashMap hashMap2 = new HashMap();
        hashMap2.put("bg_white", Integer.valueOf(Color.rgb(255, 255, 255)));
        hashMap2.put("bg_lime", Integer.valueOf(Color.rgb(0, 255, 0)));
        hashMap2.put("bg_cyan", Integer.valueOf(Color.rgb(0, 255, 255)));
        hashMap2.put("bg_red", Integer.valueOf(Color.rgb(255, 0, 0)));
        hashMap2.put("bg_yellow", Integer.valueOf(Color.rgb(255, 255, 0)));
        hashMap2.put("bg_magenta", Integer.valueOf(Color.rgb(255, 0, 255)));
        hashMap2.put("bg_blue", Integer.valueOf(Color.rgb(0, 0, 255)));
        hashMap2.put("bg_black", Integer.valueOf(Color.rgb(0, 0, 0)));
        f3432d = Collections.unmodifiableMap(hashMap2);
    }

    private static int a(int i, int i2, int i3) {
        if (i != -1) {
            return i;
        }
        if (i2 != -1) {
            return i2;
        }
        if (i3 != -1) {
            return i3;
        }
        throw new IllegalArgumentException();
    }

    private static int a(String str, int i) {
        int indexOf = str.indexOf(62, i);
        return indexOf == -1 ? str.length() : indexOf + 1;
    }

    private static int a(List<com.applovin.exoplayer2.i.i.d> list, String str, b bVar) {
        List<c> b2 = b(list, str, bVar);
        for (int i = 0; i < b2.size(); i++) {
            com.applovin.exoplayer2.i.i.d dVar = b2.get(i).f3441b;
            if (dVar.k() != -1) {
                return dVar.k();
            }
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static SpannedString a(String str, String str2, List<com.applovin.exoplayer2.i.i.d> list) {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        ArrayDeque arrayDeque = new ArrayDeque();
        ArrayList arrayList = new ArrayList();
        int i = 0;
        while (i < str2.length()) {
            char charAt = str2.charAt(i);
            if (charAt == '&') {
                i++;
                int indexOf = str2.indexOf(59, i);
                int indexOf2 = str2.indexOf(32, i);
                if (indexOf == -1) {
                    indexOf = indexOf2;
                } else if (indexOf2 != -1) {
                    indexOf = Math.min(indexOf, indexOf2);
                }
                if (indexOf != -1) {
                    a(str2.substring(i, indexOf), spannableStringBuilder);
                    if (indexOf == indexOf2) {
                        spannableStringBuilder.append((CharSequence) " ");
                    }
                    i = indexOf + 1;
                } else {
                    spannableStringBuilder.append(charAt);
                }
            } else if (charAt != '<') {
                spannableStringBuilder.append(charAt);
                i++;
            } else {
                int i2 = i + 1;
                if (i2 < str2.length()) {
                    boolean z = str2.charAt(i2) == '/';
                    i2 = a(str2, i2);
                    int i3 = i2 - 2;
                    boolean z2 = str2.charAt(i3) == '/';
                    int i4 = i + (z ? 2 : 1);
                    if (!z2) {
                        i3 = i2 - 1;
                    }
                    String substring = str2.substring(i4, i3);
                    if (!substring.trim().isEmpty()) {
                        String g2 = g(substring);
                        if (f(g2)) {
                            if (z) {
                                while (!arrayDeque.isEmpty()) {
                                    b bVar = (b) arrayDeque.pop();
                                    a(str, bVar, arrayList, spannableStringBuilder, list);
                                    if (arrayDeque.isEmpty()) {
                                        arrayList.clear();
                                    } else {
                                        arrayList.add(new a(bVar, spannableStringBuilder.length()));
                                    }
                                    if (bVar.f3436a.equals(g2)) {
                                        break;
                                    }
                                }
                            } else if (!z2) {
                                arrayDeque.push(b.a(substring, spannableStringBuilder.length()));
                            }
                        }
                    }
                }
                i = i2;
            }
        }
        while (!arrayDeque.isEmpty()) {
            a(str, (b) arrayDeque.pop(), arrayList, spannableStringBuilder, list);
        }
        a(str, b.a(), Collections.emptyList(), spannableStringBuilder, list);
        return SpannedString.valueOf(spannableStringBuilder);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static a.C0045a a(String str) {
        d dVar = new d();
        a(str, dVar);
        return dVar.b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static com.applovin.exoplayer2.i.a a(CharSequence charSequence) {
        d dVar = new d();
        dVar.f3444c = charSequence;
        return dVar.b().e();
    }

    public static e a(y yVar, List<com.applovin.exoplayer2.i.i.d> list) {
        String C = yVar.C();
        if (C == null) {
            return null;
        }
        Pattern pattern = f3429a;
        Matcher matcher = pattern.matcher(C);
        if (matcher.matches()) {
            return a((String) null, matcher, yVar, list);
        }
        String C2 = yVar.C();
        if (C2 == null) {
            return null;
        }
        Matcher matcher2 = pattern.matcher(C2);
        if (matcher2.matches()) {
            return a(C.trim(), matcher2, yVar, list);
        }
        return null;
    }

    private static e a(String str, Matcher matcher, y yVar, List<com.applovin.exoplayer2.i.i.d> list) {
        d dVar = new d();
        try {
            dVar.f3442a = h.a((String) com.applovin.exoplayer2.l.a.b(matcher.group(1)));
            dVar.f3443b = h.a((String) com.applovin.exoplayer2.l.a.b(matcher.group(2)));
            a((String) com.applovin.exoplayer2.l.a.b(matcher.group(3)), dVar);
            StringBuilder sb = new StringBuilder();
            while (true) {
                String C = yVar.C();
                if (TextUtils.isEmpty(C)) {
                    dVar.f3444c = a(str, sb.toString(), list);
                    return dVar.a();
                }
                if (sb.length() > 0) {
                    sb.append("\n");
                }
                sb.append(C.trim());
            }
        } catch (NumberFormatException unused) {
            q.c("WebvttCueParser", "Skipping cue with bad header: " + matcher.group());
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x00a2  */
    /* JADX WARN: Removed duplicated region for block: B:37:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void a(android.text.SpannableStringBuilder r4, com.applovin.exoplayer2.i.i.d r5, int r6, int r7) {
        /*
            if (r5 != 0) goto L3
            return
        L3:
            int r0 = r5.a()
            r1 = -1
            r2 = 33
            if (r0 == r1) goto L18
            android.text.style.StyleSpan r0 = new android.text.style.StyleSpan
            int r1 = r5.a()
            r0.<init>(r1)
            com.applovin.exoplayer2.i.d.d.a(r4, r0, r6, r7, r2)
        L18:
            boolean r0 = r5.b()
            if (r0 == 0) goto L26
            android.text.style.StrikethroughSpan r0 = new android.text.style.StrikethroughSpan
            r0.<init>()
            r4.setSpan(r0, r6, r7, r2)
        L26:
            boolean r0 = r5.c()
            if (r0 == 0) goto L34
            android.text.style.UnderlineSpan r0 = new android.text.style.UnderlineSpan
            r0.<init>()
            r4.setSpan(r0, r6, r7, r2)
        L34:
            boolean r0 = r5.f()
            if (r0 == 0) goto L46
            android.text.style.ForegroundColorSpan r0 = new android.text.style.ForegroundColorSpan
            int r1 = r5.e()
            r0.<init>(r1)
            com.applovin.exoplayer2.i.d.d.a(r4, r0, r6, r7, r2)
        L46:
            boolean r0 = r5.h()
            if (r0 == 0) goto L58
            android.text.style.BackgroundColorSpan r0 = new android.text.style.BackgroundColorSpan
            int r1 = r5.g()
            r0.<init>(r1)
            com.applovin.exoplayer2.i.d.d.a(r4, r0, r6, r7, r2)
        L58:
            java.lang.String r0 = r5.d()
            if (r0 == 0) goto L6a
            android.text.style.TypefaceSpan r0 = new android.text.style.TypefaceSpan
            java.lang.String r1 = r5.d()
            r0.<init>(r1)
            com.applovin.exoplayer2.i.d.d.a(r4, r0, r6, r7, r2)
        L6a:
            int r0 = r5.i()
            r1 = 1
            if (r0 == r1) goto L8f
            r1 = 2
            if (r0 == r1) goto L85
            r1 = 3
            if (r0 == r1) goto L78
            goto L9c
        L78:
            android.text.style.RelativeSizeSpan r0 = new android.text.style.RelativeSizeSpan
            float r1 = r5.j()
            r3 = 1120403456(0x42c80000, float:100.0)
            float r1 = r1 / r3
            r0.<init>(r1)
            goto L99
        L85:
            android.text.style.RelativeSizeSpan r0 = new android.text.style.RelativeSizeSpan
            float r1 = r5.j()
            r0.<init>(r1)
            goto L99
        L8f:
            android.text.style.AbsoluteSizeSpan r0 = new android.text.style.AbsoluteSizeSpan
            float r3 = r5.j()
            int r3 = (int) r3
            r0.<init>(r3, r1)
        L99:
            com.applovin.exoplayer2.i.d.d.a(r4, r0, r6, r7, r2)
        L9c:
            boolean r5 = r5.l()
            if (r5 == 0) goto Laa
            com.applovin.exoplayer2.i.d.a r5 = new com.applovin.exoplayer2.i.d.a
            r5.<init>()
            r4.setSpan(r5, r6, r7, r2)
        Laa:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.exoplayer2.i.i.f.a(android.text.SpannableStringBuilder, com.applovin.exoplayer2.i.i.d, int, int):void");
    }

    private static void a(SpannableStringBuilder spannableStringBuilder, String str, b bVar, List<a> list, List<com.applovin.exoplayer2.i.i.d> list2) {
        int a2 = a(list2, str, bVar);
        ArrayList arrayList = new ArrayList(list.size());
        arrayList.addAll(list);
        Collections.sort(arrayList, a.f3433a);
        int i = bVar.f3437b;
        int i2 = 0;
        for (int i3 = 0; i3 < arrayList.size(); i3++) {
            if ("rt".equals(((a) arrayList.get(i3)).f3434b.f3436a)) {
                a aVar = (a) arrayList.get(i3);
                int a3 = a(a(list2, str, aVar.f3434b), a2, 1);
                int i4 = aVar.f3434b.f3437b - i2;
                int i5 = aVar.f3435c - i2;
                CharSequence subSequence = spannableStringBuilder.subSequence(i4, i5);
                spannableStringBuilder.delete(i4, i5);
                spannableStringBuilder.setSpan(new com.applovin.exoplayer2.i.d.c(subSequence.toString(), a3), i, i4, 33);
                i2 += subSequence.length();
                i = i4;
            }
        }
    }

    private static void a(SpannableStringBuilder spannableStringBuilder, Set<String> set, int i, int i2) {
        Object foregroundColorSpan;
        for (String str : set) {
            Map<String, Integer> map = f3431c;
            if (map.containsKey(str)) {
                foregroundColorSpan = new ForegroundColorSpan(map.get(str).intValue());
            } else {
                Map<String, Integer> map2 = f3432d;
                if (map2.containsKey(str)) {
                    foregroundColorSpan = new BackgroundColorSpan(map2.get(str).intValue());
                }
            }
            spannableStringBuilder.setSpan(foregroundColorSpan, i, i2, 33);
        }
    }

    private static void a(String str, SpannableStringBuilder spannableStringBuilder) {
        char c2;
        str.hashCode();
        char c3 = 65535;
        switch (str.hashCode()) {
            case 3309:
                if (str.equals("gt")) {
                    c3 = 0;
                    break;
                }
                break;
            case 3464:
                if (str.equals("lt")) {
                    c3 = 1;
                    break;
                }
                break;
            case 96708:
                if (str.equals("amp")) {
                    c3 = 2;
                    break;
                }
                break;
            case 3374865:
                if (str.equals("nbsp")) {
                    c3 = 3;
                    break;
                }
                break;
        }
        switch (c3) {
            case 0:
                c2 = Typography.greater;
                break;
            case 1:
                c2 = Typography.less;
                break;
            case 2:
                c2 = Typography.amp;
                break;
            case 3:
                c2 = ' ';
                break;
            default:
                q.c("WebvttCueParser", "ignoring unsupported entity: '&" + str + ";'");
                return;
        }
        spannableStringBuilder.append(c2);
    }

    private static void a(String str, b bVar, List<a> list, SpannableStringBuilder spannableStringBuilder, List<com.applovin.exoplayer2.i.i.d> list2) {
        Object styleSpan;
        int i = bVar.f3437b;
        int length = spannableStringBuilder.length();
        String str2 = bVar.f3436a;
        str2.hashCode();
        char c2 = 65535;
        switch (str2.hashCode()) {
            case 0:
                if (str2.equals("")) {
                    c2 = 0;
                    break;
                }
                break;
            case 98:
                if (str2.equals("b")) {
                    c2 = 1;
                    break;
                }
                break;
            case 99:
                if (str2.equals("c")) {
                    c2 = 2;
                    break;
                }
                break;
            case 105:
                if (str2.equals("i")) {
                    c2 = 3;
                    break;
                }
                break;
            case 117:
                if (str2.equals("u")) {
                    c2 = 4;
                    break;
                }
                break;
            case 118:
                if (str2.equals("v")) {
                    c2 = 5;
                    break;
                }
                break;
            case 3314158:
                if (str2.equals("lang")) {
                    c2 = 6;
                    break;
                }
                break;
            case 3511770:
                if (str2.equals(TtmlNode.ATTR_TTS_RUBY)) {
                    c2 = 7;
                    break;
                }
                break;
        }
        switch (c2) {
            case 0:
            case 5:
            case 6:
                break;
            case 1:
                styleSpan = new StyleSpan(1);
                spannableStringBuilder.setSpan(styleSpan, i, length, 33);
                break;
            case 2:
                a(spannableStringBuilder, bVar.f3439d, i, length);
                break;
            case 3:
                styleSpan = new StyleSpan(2);
                spannableStringBuilder.setSpan(styleSpan, i, length, 33);
                break;
            case 4:
                styleSpan = new UnderlineSpan();
                spannableStringBuilder.setSpan(styleSpan, i, length, 33);
                break;
            case 7:
                a(spannableStringBuilder, str, bVar, list, list2);
                break;
            default:
                return;
        }
        List<c> b2 = b(list2, str, bVar);
        for (int i2 = 0; i2 < b2.size(); i2++) {
            a(spannableStringBuilder, b2.get(i2).f3441b, i, length);
        }
    }

    private static void a(String str, d dVar) {
        Matcher matcher = f3430b.matcher(str);
        while (matcher.find()) {
            String str2 = (String) com.applovin.exoplayer2.l.a.b(matcher.group(1));
            String str3 = (String) com.applovin.exoplayer2.l.a.b(matcher.group(2));
            try {
                if ("line".equals(str2)) {
                    b(str3, dVar);
                } else if ("align".equals(str2)) {
                    dVar.f3445d = e(str3);
                } else if ("position".equals(str2)) {
                    c(str3, dVar);
                } else if ("size".equals(str2)) {
                    dVar.j = h.b(str3);
                } else if ("vertical".equals(str2)) {
                    dVar.k = d(str3);
                } else {
                    q.c("WebvttCueParser", "Unknown cue setting " + str2 + ":" + str3);
                }
            } catch (NumberFormatException unused) {
                q.c("WebvttCueParser", "Skipping bad cue setting: " + matcher.group());
            }
        }
    }

    private static int b(String str) {
        str.hashCode();
        char c2 = 65535;
        switch (str.hashCode()) {
            case -1364013995:
                if (str.equals(TtmlNode.CENTER)) {
                    c2 = 0;
                    break;
                }
                break;
            case -1074341483:
                if (str.equals("middle")) {
                    c2 = 1;
                    break;
                }
                break;
            case 100571:
                if (str.equals(TtmlNode.END)) {
                    c2 = 2;
                    break;
                }
                break;
            case 109757538:
                if (str.equals(TtmlNode.START)) {
                    c2 = 3;
                    break;
                }
                break;
        }
        switch (c2) {
            case 0:
            case 1:
                return 1;
            case 2:
                return 2;
            case 3:
                return 0;
            default:
                q.c("WebvttCueParser", "Invalid anchor value: " + str);
                return Integer.MIN_VALUE;
        }
    }

    private static List<c> b(List<com.applovin.exoplayer2.i.i.d> list, String str, b bVar) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < list.size(); i++) {
            com.applovin.exoplayer2.i.i.d dVar = list.get(i);
            int a2 = dVar.a(str, bVar.f3436a, bVar.f3439d, bVar.f3438c);
            if (a2 > 0) {
                arrayList.add(new c(a2, dVar));
            }
        }
        Collections.sort(arrayList);
        return arrayList;
    }

    private static void b(String str, d dVar) {
        int indexOf = str.indexOf(44);
        if (indexOf != -1) {
            dVar.f3448g = b(str.substring(indexOf + 1));
            str = str.substring(0, indexOf);
        }
        if (str.endsWith("%")) {
            dVar.f3446e = h.b(str);
            dVar.f3447f = 0;
            return;
        }
        dVar.f3446e = Integer.parseInt(str);
        dVar.f3447f = 1;
    }

    private static int c(String str) {
        str.hashCode();
        char c2 = 65535;
        switch (str.hashCode()) {
            case -1842484672:
                if (str.equals("line-left")) {
                    c2 = 0;
                    break;
                }
                break;
            case -1364013995:
                if (str.equals(TtmlNode.CENTER)) {
                    c2 = 1;
                    break;
                }
                break;
            case -1276788989:
                if (str.equals("line-right")) {
                    c2 = 2;
                    break;
                }
                break;
            case -1074341483:
                if (str.equals("middle")) {
                    c2 = 3;
                    break;
                }
                break;
            case 100571:
                if (str.equals(TtmlNode.END)) {
                    c2 = 4;
                    break;
                }
                break;
            case 109757538:
                if (str.equals(TtmlNode.START)) {
                    c2 = 5;
                    break;
                }
                break;
        }
        switch (c2) {
            case 0:
            case 5:
                return 0;
            case 1:
            case 3:
                return 1;
            case 2:
            case 4:
                return 2;
            default:
                q.c("WebvttCueParser", "Invalid anchor value: " + str);
                return Integer.MIN_VALUE;
        }
    }

    private static void c(String str, d dVar) {
        int indexOf = str.indexOf(44);
        if (indexOf != -1) {
            dVar.i = c(str.substring(indexOf + 1));
            str = str.substring(0, indexOf);
        }
        dVar.f3449h = h.b(str);
    }

    private static int d(String str) {
        str.hashCode();
        if (str.equals("lr")) {
            return 2;
        }
        if (str.equals("rl")) {
            return 1;
        }
        q.c("WebvttCueParser", "Invalid 'vertical' value: " + str);
        return Integer.MIN_VALUE;
    }

    private static int e(String str) {
        str.hashCode();
        char c2 = 65535;
        switch (str.hashCode()) {
            case -1364013995:
                if (str.equals(TtmlNode.CENTER)) {
                    c2 = 0;
                    break;
                }
                break;
            case -1074341483:
                if (str.equals("middle")) {
                    c2 = 1;
                    break;
                }
                break;
            case 100571:
                if (str.equals(TtmlNode.END)) {
                    c2 = 2;
                    break;
                }
                break;
            case 3317767:
                if (str.equals(TtmlNode.LEFT)) {
                    c2 = 3;
                    break;
                }
                break;
            case 108511772:
                if (str.equals(TtmlNode.RIGHT)) {
                    c2 = 4;
                    break;
                }
                break;
            case 109757538:
                if (str.equals(TtmlNode.START)) {
                    c2 = 5;
                    break;
                }
                break;
        }
        switch (c2) {
            case 0:
            case 1:
                return 2;
            case 2:
                return 3;
            case 3:
                return 4;
            case 4:
                return 5;
            case 5:
                return 1;
            default:
                q.c("WebvttCueParser", "Invalid alignment value: " + str);
                return 2;
        }
    }

    private static boolean f(String str) {
        str.hashCode();
        char c2 = 65535;
        switch (str.hashCode()) {
            case 98:
                if (str.equals("b")) {
                    c2 = 0;
                    break;
                }
                break;
            case 99:
                if (str.equals("c")) {
                    c2 = 1;
                    break;
                }
                break;
            case 105:
                if (str.equals("i")) {
                    c2 = 2;
                    break;
                }
                break;
            case 117:
                if (str.equals("u")) {
                    c2 = 3;
                    break;
                }
                break;
            case 118:
                if (str.equals("v")) {
                    c2 = 4;
                    break;
                }
                break;
            case 3650:
                if (str.equals("rt")) {
                    c2 = 5;
                    break;
                }
                break;
            case 3314158:
                if (str.equals("lang")) {
                    c2 = 6;
                    break;
                }
                break;
            case 3511770:
                if (str.equals(TtmlNode.ATTR_TTS_RUBY)) {
                    c2 = 7;
                    break;
                }
                break;
        }
        switch (c2) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
                return true;
            default:
                return false;
        }
    }

    private static String g(String str) {
        String trim = str.trim();
        com.applovin.exoplayer2.l.a.a(!trim.isEmpty());
        return ai.b(trim, "[ \\.]")[0];
    }
}
