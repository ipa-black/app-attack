package com.applovin.exoplayer2.i.i;

import com.applovin.exoplayer2.l.ai;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
/* loaded from: classes.dex */
final class i implements com.applovin.exoplayer2.i.f {

    /* renamed from: a  reason: collision with root package name */
    private final List<e> f3453a;

    /* renamed from: b  reason: collision with root package name */
    private final long[] f3454b;

    /* renamed from: c  reason: collision with root package name */
    private final long[] f3455c;

    public i(List<e> list) {
        this.f3453a = Collections.unmodifiableList(new ArrayList(list));
        this.f3454b = new long[list.size() * 2];
        for (int i = 0; i < list.size(); i++) {
            e eVar = list.get(i);
            int i2 = i * 2;
            this.f3454b[i2] = eVar.f3427b;
            this.f3454b[i2 + 1] = eVar.f3428c;
        }
        long[] jArr = this.f3454b;
        long[] copyOf = Arrays.copyOf(jArr, jArr.length);
        this.f3455c = copyOf;
        Arrays.sort(copyOf);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int a(e eVar, e eVar2) {
        return Long.compare(eVar.f3427b, eVar2.f3427b);
    }

    @Override // com.applovin.exoplayer2.i.f
    public int a(long j) {
        int b2 = ai.b(this.f3455c, j, false, false);
        if (b2 < this.f3455c.length) {
            return b2;
        }
        return -1;
    }

    @Override // com.applovin.exoplayer2.i.f
    public long a(int i) {
        com.applovin.exoplayer2.l.a.a(i >= 0);
        com.applovin.exoplayer2.l.a.a(i < this.f3455c.length);
        return this.f3455c[i];
    }

    @Override // com.applovin.exoplayer2.i.f
    public List<com.applovin.exoplayer2.i.a> b(long j) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (int i = 0; i < this.f3453a.size(); i++) {
            long[] jArr = this.f3454b;
            int i2 = i * 2;
            if (jArr[i2] <= j && j < jArr[i2 + 1]) {
                e eVar = this.f3453a.get(i);
                if (eVar.f3426a.f3168f == -3.4028235E38f) {
                    arrayList2.add(eVar);
                } else {
                    arrayList.add(eVar.f3426a);
                }
            }
        }
        Collections.sort(arrayList2, new Comparator() { // from class: com.applovin.exoplayer2.i.i.i$$ExternalSyntheticLambda0
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int a2;
                a2 = i.a((e) obj, (e) obj2);
                return a2;
            }
        });
        for (int i3 = 0; i3 < arrayList2.size(); i3++) {
            arrayList.add(((e) arrayList2.get(i3)).f3426a.a().a((-1) - i3, 1).e());
        }
        return arrayList;
    }

    @Override // com.applovin.exoplayer2.i.f
    public int f_() {
        return this.f3455c.length;
    }
}
