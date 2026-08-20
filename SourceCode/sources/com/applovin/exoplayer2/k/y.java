package com.applovin.exoplayer2.k;

import com.applovin.exoplayer2.k.y;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
/* loaded from: classes.dex */
public class y {

    /* renamed from: a  reason: collision with root package name */
    private static final Comparator<a> f3738a = new Comparator() { // from class: com.applovin.exoplayer2.k.y$$ExternalSyntheticLambda0
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            int b2;
            b2 = y.b((y.a) obj, (y.a) obj2);
            return b2;
        }
    };

    /* renamed from: b  reason: collision with root package name */
    private static final Comparator<a> f3739b = new Comparator() { // from class: com.applovin.exoplayer2.k.y$$ExternalSyntheticLambda1
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            int a2;
            a2 = y.a((y.a) obj, (y.a) obj2);
            return a2;
        }
    };

    /* renamed from: c  reason: collision with root package name */
    private final int f3740c;

    /* renamed from: g  reason: collision with root package name */
    private int f3744g;

    /* renamed from: h  reason: collision with root package name */
    private int f3745h;
    private int i;

    /* renamed from: e  reason: collision with root package name */
    private final a[] f3742e = new a[5];

    /* renamed from: d  reason: collision with root package name */
    private final ArrayList<a> f3741d = new ArrayList<>();

    /* renamed from: f  reason: collision with root package name */
    private int f3743f = -1;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public int f3746a;

        /* renamed from: b  reason: collision with root package name */
        public int f3747b;

        /* renamed from: c  reason: collision with root package name */
        public float f3748c;

        private a() {
        }
    }

    public y(int i) {
        this.f3740c = i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int a(a aVar, a aVar2) {
        return Float.compare(aVar.f3748c, aVar2.f3748c);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int b(a aVar, a aVar2) {
        return aVar.f3746a - aVar2.f3746a;
    }

    private void b() {
        if (this.f3743f != 1) {
            Collections.sort(this.f3741d, f3738a);
            this.f3743f = 1;
        }
    }

    private void c() {
        if (this.f3743f != 0) {
            Collections.sort(this.f3741d, f3739b);
            this.f3743f = 0;
        }
    }

    public float a(float f2) {
        ArrayList<a> arrayList;
        c();
        float f3 = f2 * this.f3745h;
        int i = 0;
        for (int i2 = 0; i2 < this.f3741d.size(); i2++) {
            a aVar = this.f3741d.get(i2);
            i += aVar.f3747b;
            if (i >= f3) {
                return aVar.f3748c;
            }
        }
        if (this.f3741d.isEmpty()) {
            return Float.NaN;
        }
        return this.f3741d.get(arrayList.size() - 1).f3748c;
    }

    public void a() {
        this.f3741d.clear();
        this.f3743f = -1;
        this.f3744g = 0;
        this.f3745h = 0;
    }

    public void a(int i, float f2) {
        a aVar;
        int i2;
        a aVar2;
        b();
        int i3 = this.i;
        if (i3 > 0) {
            a[] aVarArr = this.f3742e;
            int i4 = i3 - 1;
            this.i = i4;
            aVar = aVarArr[i4];
        } else {
            aVar = new a();
        }
        int i5 = this.f3744g;
        this.f3744g = i5 + 1;
        aVar.f3746a = i5;
        aVar.f3747b = i;
        aVar.f3748c = f2;
        this.f3741d.add(aVar);
        int i6 = this.f3745h + i;
        while (true) {
            this.f3745h = i6;
            while (true) {
                int i7 = this.f3745h;
                int i8 = this.f3740c;
                if (i7 <= i8) {
                    return;
                }
                i2 = i7 - i8;
                aVar2 = this.f3741d.get(0);
                if (aVar2.f3747b <= i2) {
                    this.f3745h -= aVar2.f3747b;
                    this.f3741d.remove(0);
                    int i9 = this.i;
                    if (i9 < 5) {
                        a[] aVarArr2 = this.f3742e;
                        this.i = i9 + 1;
                        aVarArr2[i9] = aVar2;
                    }
                }
            }
            aVar2.f3747b -= i2;
            i6 = this.f3745h - i2;
        }
    }
}
