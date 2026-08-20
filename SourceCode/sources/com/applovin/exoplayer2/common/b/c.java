package com.applovin.exoplayer2.common.b;

import com.applovin.exoplayer2.common.base.Preconditions;
import java.io.Serializable;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* loaded from: classes.dex */
public final class c {

    /* loaded from: classes.dex */
    private static class a extends AbstractList<Integer> implements Serializable, RandomAccess {

        /* renamed from: a  reason: collision with root package name */
        final int[] f1873a;

        /* renamed from: b  reason: collision with root package name */
        final int f1874b;

        /* renamed from: c  reason: collision with root package name */
        final int f1875c;

        a(int[] iArr) {
            this(iArr, 0, iArr.length);
        }

        a(int[] iArr, int i, int i2) {
            this.f1873a = iArr;
            this.f1874b = i;
            this.f1875c = i2;
        }

        @Override // java.util.AbstractList, java.util.List
        /* renamed from: a */
        public Integer get(int i) {
            Preconditions.checkElementIndex(i, size());
            return Integer.valueOf(this.f1873a[this.f1874b + i]);
        }

        @Override // java.util.AbstractList, java.util.List
        /* renamed from: a */
        public Integer set(int i, Integer num) {
            Preconditions.checkElementIndex(i, size());
            int[] iArr = this.f1873a;
            int i2 = this.f1874b;
            int i3 = iArr[i2 + i];
            iArr[i2 + i] = ((Integer) Preconditions.checkNotNull(num)).intValue();
            return Integer.valueOf(i3);
        }

        int[] a() {
            return Arrays.copyOfRange(this.f1873a, this.f1874b, this.f1875c);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean contains(Object obj) {
            return (obj instanceof Integer) && c.c(this.f1873a, ((Integer) obj).intValue(), this.f1874b, this.f1875c) != -1;
        }

        @Override // java.util.AbstractList, java.util.Collection, java.util.List
        public boolean equals(@NullableDecl Object obj) {
            if (obj == this) {
                return true;
            }
            if (obj instanceof a) {
                a aVar = (a) obj;
                int size = size();
                if (aVar.size() != size) {
                    return false;
                }
                for (int i = 0; i < size; i++) {
                    if (this.f1873a[this.f1874b + i] != aVar.f1873a[aVar.f1874b + i]) {
                        return false;
                    }
                }
                return true;
            }
            return super.equals(obj);
        }

        @Override // java.util.AbstractList, java.util.Collection, java.util.List
        public int hashCode() {
            int i = 1;
            for (int i2 = this.f1874b; i2 < this.f1875c; i2++) {
                i = (i * 31) + c.a(this.f1873a[i2]);
            }
            return i;
        }

        @Override // java.util.AbstractList, java.util.List
        public int indexOf(Object obj) {
            int c2;
            if (!(obj instanceof Integer) || (c2 = c.c(this.f1873a, ((Integer) obj).intValue(), this.f1874b, this.f1875c)) < 0) {
                return -1;
            }
            return c2 - this.f1874b;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean isEmpty() {
            return false;
        }

        @Override // java.util.AbstractList, java.util.List
        public int lastIndexOf(Object obj) {
            int d2;
            if (!(obj instanceof Integer) || (d2 = c.d(this.f1873a, ((Integer) obj).intValue(), this.f1874b, this.f1875c)) < 0) {
                return -1;
            }
            return d2 - this.f1874b;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.f1875c - this.f1874b;
        }

        @Override // java.util.AbstractList, java.util.List
        public List<Integer> subList(int i, int i2) {
            Preconditions.checkPositionIndexes(i, i2, size());
            if (i == i2) {
                return Collections.emptyList();
            }
            int[] iArr = this.f1873a;
            int i3 = this.f1874b;
            return new a(iArr, i + i3, i3 + i2);
        }

        @Override // java.util.AbstractCollection
        public String toString() {
            StringBuilder sb = new StringBuilder(size() * 5);
            sb.append('[').append(this.f1873a[this.f1874b]);
            int i = this.f1874b;
            while (true) {
                i++;
                if (i >= this.f1875c) {
                    return sb.append(']').toString();
                }
                sb.append(", ").append(this.f1873a[i]);
            }
        }
    }

    public static int a(int i) {
        return i;
    }

    public static int a(int i, int i2) {
        if (i < i2) {
            return -1;
        }
        return i > i2 ? 1 : 0;
    }

    public static int a(long j) {
        int i = (int) j;
        Preconditions.checkArgument(((long) i) == j, "Out of range: %s", j);
        return i;
    }

    public static List<Integer> a(int... iArr) {
        return iArr.length == 0 ? Collections.emptyList() : new a(iArr);
    }

    public static int[] a(Collection<? extends Number> collection) {
        if (collection instanceof a) {
            return ((a) collection).a();
        }
        Object[] array = collection.toArray();
        int length = array.length;
        int[] iArr = new int[length];
        for (int i = 0; i < length; i++) {
            iArr[i] = ((Number) Preconditions.checkNotNull(array[i])).intValue();
        }
        return iArr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int c(int[] iArr, int i, int i2, int i3) {
        while (i2 < i3) {
            if (iArr[i2] == i) {
                return i2;
            }
            i2++;
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int d(int[] iArr, int i, int i2, int i3) {
        for (int i4 = i3 - 1; i4 >= i2; i4--) {
            if (iArr[i4] == i) {
                return i4;
            }
        }
        return -1;
    }
}
