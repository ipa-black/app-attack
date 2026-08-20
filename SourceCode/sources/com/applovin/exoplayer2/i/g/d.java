package com.applovin.exoplayer2.i.g;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.text.SpannableStringBuilder;
import android.util.Base64;
import android.util.Pair;
import com.applovin.exoplayer2.i.a;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import java.util.TreeSet;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    public final String f3373a;

    /* renamed from: b  reason: collision with root package name */
    public final String f3374b;

    /* renamed from: c  reason: collision with root package name */
    public final boolean f3375c;

    /* renamed from: d  reason: collision with root package name */
    public final long f3376d;

    /* renamed from: e  reason: collision with root package name */
    public final long f3377e;

    /* renamed from: f  reason: collision with root package name */
    public final g f3378f;

    /* renamed from: g  reason: collision with root package name */
    public final String f3379g;

    /* renamed from: h  reason: collision with root package name */
    public final String f3380h;
    public final d i;
    private final String[] j;
    private final HashMap<String, Integer> k;
    private final HashMap<String, Integer> l;
    private List<d> m;

    private d(String str, String str2, long j, long j2, g gVar, String[] strArr, String str3, String str4, d dVar) {
        this.f3373a = str;
        this.f3374b = str2;
        this.f3380h = str4;
        this.f3378f = gVar;
        this.j = strArr;
        this.f3375c = str2 != null;
        this.f3376d = j;
        this.f3377e = j2;
        this.f3379g = (String) com.applovin.exoplayer2.l.a.b(str3);
        this.i = dVar;
        this.k = new HashMap<>();
        this.l = new HashMap<>();
    }

    private static SpannableStringBuilder a(String str, Map<String, a.C0045a> map) {
        if (!map.containsKey(str)) {
            a.C0045a c0045a = new a.C0045a();
            c0045a.a(new SpannableStringBuilder());
            map.put(str, c0045a);
        }
        return (SpannableStringBuilder) com.applovin.exoplayer2.l.a.b(map.get(str).a());
    }

    public static d a(String str) {
        return new d(null, f.a(str), C.TIME_UNSET, C.TIME_UNSET, null, null, "", null, null);
    }

    public static d a(String str, long j, long j2, g gVar, String[] strArr, String str2, String str3, d dVar) {
        return new d(str, null, j, j2, gVar, strArr, str2, str3, dVar);
    }

    private void a(long j, String str, List<Pair<String, String>> list) {
        if (!"".equals(this.f3379g)) {
            str = this.f3379g;
        }
        if (a(j) && TtmlNode.TAG_DIV.equals(this.f3373a) && this.f3380h != null) {
            list.add(new Pair<>(str, this.f3380h));
            return;
        }
        for (int i = 0; i < a(); i++) {
            a(i).a(j, str, list);
        }
    }

    private void a(long j, Map<String, g> map, Map<String, e> map2, String str, Map<String, a.C0045a> map3) {
        int i;
        if (a(j)) {
            String str2 = "".equals(this.f3379g) ? str : this.f3379g;
            Iterator<Map.Entry<String, Integer>> it = this.l.entrySet().iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                Map.Entry<String, Integer> next = it.next();
                String key = next.getKey();
                int intValue = this.k.containsKey(key) ? this.k.get(key).intValue() : 0;
                int intValue2 = next.getValue().intValue();
                if (intValue != intValue2) {
                    a(map, (a.C0045a) com.applovin.exoplayer2.l.a.b(map3.get(key)), intValue, intValue2, ((e) com.applovin.exoplayer2.l.a.b(map2.get(str2))).j);
                }
            }
            while (i < a()) {
                a(i).a(j, map, map2, str2, map3);
                i++;
            }
        }
    }

    private void a(long j, boolean z, String str, Map<String, a.C0045a> map) {
        this.k.clear();
        this.l.clear();
        if (TtmlNode.TAG_METADATA.equals(this.f3373a)) {
            return;
        }
        if (!"".equals(this.f3379g)) {
            str = this.f3379g;
        }
        if (this.f3375c && z) {
            a(str, map).append((CharSequence) com.applovin.exoplayer2.l.a.b(this.f3374b));
        } else if (TtmlNode.TAG_BR.equals(this.f3373a) && z) {
            a(str, map).append('\n');
        } else if (a(j)) {
            for (Map.Entry<String, a.C0045a> entry : map.entrySet()) {
                this.k.put(entry.getKey(), Integer.valueOf(((CharSequence) com.applovin.exoplayer2.l.a.b(entry.getValue().a())).length()));
            }
            boolean equals = "p".equals(this.f3373a);
            for (int i = 0; i < a(); i++) {
                a(i).a(j, z || equals, str, map);
            }
            if (equals) {
                f.a(a(str, map));
            }
            for (Map.Entry<String, a.C0045a> entry2 : map.entrySet()) {
                this.l.put(entry2.getKey(), Integer.valueOf(((CharSequence) com.applovin.exoplayer2.l.a.b(entry2.getValue().a())).length()));
            }
        }
    }

    private static void a(SpannableStringBuilder spannableStringBuilder) {
        a[] aVarArr;
        for (a aVar : (a[]) spannableStringBuilder.getSpans(0, spannableStringBuilder.length(), a.class)) {
            spannableStringBuilder.replace(spannableStringBuilder.getSpanStart(aVar), spannableStringBuilder.getSpanEnd(aVar), "");
        }
        for (int i = 0; i < spannableStringBuilder.length(); i++) {
            if (spannableStringBuilder.charAt(i) == ' ') {
                int i2 = i + 1;
                int i3 = i2;
                while (i3 < spannableStringBuilder.length() && spannableStringBuilder.charAt(i3) == ' ') {
                    i3++;
                }
                int i4 = i3 - i2;
                if (i4 > 0) {
                    spannableStringBuilder.delete(i, i4 + i);
                }
            }
        }
        if (spannableStringBuilder.length() > 0 && spannableStringBuilder.charAt(0) == ' ') {
            spannableStringBuilder.delete(0, 1);
        }
        for (int i5 = 0; i5 < spannableStringBuilder.length() - 1; i5++) {
            if (spannableStringBuilder.charAt(i5) == '\n') {
                int i6 = i5 + 1;
                if (spannableStringBuilder.charAt(i6) == ' ') {
                    spannableStringBuilder.delete(i6, i5 + 2);
                }
            }
        }
        if (spannableStringBuilder.length() > 0 && spannableStringBuilder.charAt(spannableStringBuilder.length() - 1) == ' ') {
            spannableStringBuilder.delete(spannableStringBuilder.length() - 1, spannableStringBuilder.length());
        }
        for (int i7 = 0; i7 < spannableStringBuilder.length() - 1; i7++) {
            if (spannableStringBuilder.charAt(i7) == ' ') {
                int i8 = i7 + 1;
                if (spannableStringBuilder.charAt(i8) == '\n') {
                    spannableStringBuilder.delete(i7, i8);
                }
            }
        }
        if (spannableStringBuilder.length() <= 0 || spannableStringBuilder.charAt(spannableStringBuilder.length() - 1) != '\n') {
            return;
        }
        spannableStringBuilder.delete(spannableStringBuilder.length() - 1, spannableStringBuilder.length());
    }

    private void a(Map<String, g> map, a.C0045a c0045a, int i, int i2, int i3) {
        g a2 = f.a(this.f3378f, this.j, map);
        SpannableStringBuilder spannableStringBuilder = (SpannableStringBuilder) c0045a.a();
        if (spannableStringBuilder == null) {
            spannableStringBuilder = new SpannableStringBuilder();
            c0045a.a(spannableStringBuilder);
        }
        SpannableStringBuilder spannableStringBuilder2 = spannableStringBuilder;
        if (a2 != null) {
            f.a(spannableStringBuilder2, i, i2, a2, this.i, map, i3);
            if ("p".equals(this.f3373a)) {
                if (a2.i() != Float.MAX_VALUE) {
                    c0045a.d((a2.i() * (-90.0f)) / 100.0f);
                }
                if (a2.m() != null) {
                    c0045a.a(a2.m());
                }
                if (a2.n() != null) {
                    c0045a.b(a2.n());
                }
            }
        }
    }

    private void a(TreeSet<Long> treeSet, boolean z) {
        boolean equals = "p".equals(this.f3373a);
        boolean equals2 = TtmlNode.TAG_DIV.equals(this.f3373a);
        if (z || equals || (equals2 && this.f3380h != null)) {
            long j = this.f3376d;
            if (j != C.TIME_UNSET) {
                treeSet.add(Long.valueOf(j));
            }
            long j2 = this.f3377e;
            if (j2 != C.TIME_UNSET) {
                treeSet.add(Long.valueOf(j2));
            }
        }
        if (this.m == null) {
            return;
        }
        for (int i = 0; i < this.m.size(); i++) {
            this.m.get(i).a(treeSet, z || equals);
        }
    }

    public int a() {
        List<d> list = this.m;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    public d a(int i) {
        List<d> list = this.m;
        if (list != null) {
            return list.get(i);
        }
        throw new IndexOutOfBoundsException();
    }

    public List<com.applovin.exoplayer2.i.a> a(long j, Map<String, g> map, Map<String, e> map2, Map<String, String> map3) {
        List<Pair<String, String>> arrayList = new ArrayList<>();
        a(j, this.f3379g, arrayList);
        TreeMap treeMap = new TreeMap();
        a(j, false, this.f3379g, (Map<String, a.C0045a>) treeMap);
        a(j, map, map2, this.f3379g, treeMap);
        ArrayList arrayList2 = new ArrayList();
        for (Pair<String, String> pair : arrayList) {
            String str = map3.get(pair.second);
            if (str != null) {
                byte[] decode = Base64.decode(str, 0);
                Bitmap decodeByteArray = BitmapFactory.decodeByteArray(decode, 0, decode.length);
                e eVar = (e) com.applovin.exoplayer2.l.a.b(map2.get(pair.first));
                arrayList2.add(new a.C0045a().a(decodeByteArray).a(eVar.f3382b).b(0).a(eVar.f3383c, 0).a(eVar.f3385e).b(eVar.f3386f).c(eVar.f3387g).d(eVar.j).e());
            }
        }
        for (Map.Entry entry : treeMap.entrySet()) {
            e eVar2 = (e) com.applovin.exoplayer2.l.a.b(map2.get(entry.getKey()));
            a.C0045a c0045a = (a.C0045a) entry.getValue();
            a((SpannableStringBuilder) com.applovin.exoplayer2.l.a.b(c0045a.a()));
            c0045a.a(eVar2.f3383c, eVar2.f3384d);
            c0045a.a(eVar2.f3385e);
            c0045a.a(eVar2.f3382b);
            c0045a.b(eVar2.f3386f);
            c0045a.b(eVar2.i, eVar2.f3388h);
            c0045a.d(eVar2.j);
            arrayList2.add(c0045a.e());
        }
        return arrayList2;
    }

    public void a(d dVar) {
        if (this.m == null) {
            this.m = new ArrayList();
        }
        this.m.add(dVar);
    }

    public boolean a(long j) {
        long j2 = this.f3376d;
        return (j2 == C.TIME_UNSET && this.f3377e == C.TIME_UNSET) || (j2 <= j && this.f3377e == C.TIME_UNSET) || ((j2 == C.TIME_UNSET && j < this.f3377e) || (j2 <= j && j < this.f3377e));
    }

    public long[] b() {
        TreeSet<Long> treeSet = new TreeSet<>();
        int i = 0;
        a(treeSet, false);
        long[] jArr = new long[treeSet.size()];
        Iterator<Long> it = treeSet.iterator();
        while (it.hasNext()) {
            jArr[i] = it.next().longValue();
            i++;
        }
        return jArr;
    }

    public String[] c() {
        return this.j;
    }
}
