package com.bytedance.adsdk.lottie;

import com.applovin.impl.sdk.utils.JsonUtils;
import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
/* compiled from: ArraySet.java */
/* loaded from: classes2.dex */
public final class Qhi<E> implements Collection<E>, Set<E> {
    private static Object[] ROR;
    private static int Sf;
    private static int Tgh;
    private static Object[] fl;
    Object[] Qhi;
    private pA<E, E> WAv;
    int cJ;
    private int[] hm;
    private static final int[] ac = new int[0];
    private static final Object[] CJ = new Object[0];

    private int Qhi(Object obj, int i) {
        int i2 = this.cJ;
        if (i2 == 0) {
            return -1;
        }
        int Qhi = cJ.Qhi(this.hm, i2, i);
        if (Qhi >= 0 && !obj.equals(this.Qhi[Qhi])) {
            int i3 = Qhi + 1;
            while (i3 < i2 && this.hm[i3] == i) {
                if (obj.equals(this.Qhi[i3])) {
                    return i3;
                }
                i3++;
            }
            for (int i4 = Qhi - 1; i4 >= 0 && this.hm[i4] == i; i4--) {
                if (obj.equals(this.Qhi[i4])) {
                    return i4;
                }
            }
            return ~i3;
        }
        return Qhi;
    }

    private int Qhi() {
        int i = this.cJ;
        if (i == 0) {
            return -1;
        }
        int Qhi = cJ.Qhi(this.hm, i, 0);
        if (Qhi >= 0 && this.Qhi[Qhi] != null) {
            int i2 = Qhi + 1;
            while (i2 < i && this.hm[i2] == 0) {
                if (this.Qhi[i2] == null) {
                    return i2;
                }
                i2++;
            }
            for (int i3 = Qhi - 1; i3 >= 0 && this.hm[i3] == 0; i3--) {
                if (this.Qhi[i3] == null) {
                    return i3;
                }
            }
            return ~i2;
        }
        return Qhi;
    }

    private void CJ(int i) {
        if (i == 8) {
            synchronized (Qhi.class) {
                Object[] objArr = ROR;
                if (objArr != null) {
                    this.Qhi = objArr;
                    ROR = (Object[]) objArr[0];
                    this.hm = (int[]) objArr[1];
                    objArr[1] = null;
                    objArr[0] = null;
                    Sf--;
                    return;
                }
            }
        } else if (i == 4) {
            synchronized (Qhi.class) {
                Object[] objArr2 = fl;
                if (objArr2 != null) {
                    this.Qhi = objArr2;
                    fl = (Object[]) objArr2[0];
                    this.hm = (int[]) objArr2[1];
                    objArr2[1] = null;
                    objArr2[0] = null;
                    Tgh--;
                    return;
                }
            }
        }
        this.hm = new int[i];
        this.Qhi = new Object[i];
    }

    private static void Qhi(int[] iArr, Object[] objArr, int i) {
        if (iArr.length == 8) {
            synchronized (Qhi.class) {
                if (Sf < 10) {
                    objArr[0] = ROR;
                    objArr[1] = iArr;
                    for (int i2 = i - 1; i2 >= 2; i2--) {
                        objArr[i2] = null;
                    }
                    ROR = objArr;
                    Sf++;
                }
            }
        } else if (iArr.length == 4) {
            synchronized (Qhi.class) {
                if (Tgh < 10) {
                    objArr[0] = fl;
                    objArr[1] = iArr;
                    for (int i3 = i - 1; i3 >= 2; i3--) {
                        objArr[i3] = null;
                    }
                    fl = objArr;
                    Tgh++;
                }
            }
        }
    }

    public Qhi() {
        this(0);
    }

    public Qhi(int i) {
        if (i == 0) {
            this.hm = ac;
            this.Qhi = CJ;
        } else {
            CJ(i);
        }
        this.cJ = 0;
    }

    @Override // java.util.Collection, java.util.Set
    public void clear() {
        int i = this.cJ;
        if (i != 0) {
            Qhi(this.hm, this.Qhi, i);
            this.hm = ac;
            this.Qhi = CJ;
            this.cJ = 0;
        }
    }

    public void Qhi(int i) {
        int[] iArr = this.hm;
        if (iArr.length < i) {
            Object[] objArr = this.Qhi;
            CJ(i);
            int i2 = this.cJ;
            if (i2 > 0) {
                System.arraycopy(iArr, 0, this.hm, 0, i2);
                System.arraycopy(objArr, 0, this.Qhi, 0, this.cJ);
            }
            Qhi(iArr, objArr, this.cJ);
        }
    }

    @Override // java.util.Collection, java.util.Set
    public boolean contains(Object obj) {
        return Qhi(obj) >= 0;
    }

    public int Qhi(Object obj) {
        return obj == null ? Qhi() : Qhi(obj, obj.hashCode());
    }

    public E cJ(int i) {
        return (E) this.Qhi[i];
    }

    @Override // java.util.Collection, java.util.Set
    public boolean isEmpty() {
        return this.cJ <= 0;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean add(E e2) {
        int i;
        int Qhi;
        if (e2 == null) {
            Qhi = Qhi();
            i = 0;
        } else {
            int hashCode = e2.hashCode();
            i = hashCode;
            Qhi = Qhi(e2, hashCode);
        }
        if (Qhi >= 0) {
            return false;
        }
        int i2 = ~Qhi;
        int i3 = this.cJ;
        int[] iArr = this.hm;
        if (i3 >= iArr.length) {
            int i4 = 8;
            if (i3 >= 8) {
                i4 = (i3 >> 1) + i3;
            } else if (i3 < 4) {
                i4 = 4;
            }
            Object[] objArr = this.Qhi;
            CJ(i4);
            int[] iArr2 = this.hm;
            if (iArr2.length > 0) {
                System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
                System.arraycopy(objArr, 0, this.Qhi, 0, objArr.length);
            }
            Qhi(iArr, objArr, this.cJ);
        }
        int i5 = this.cJ;
        if (i2 < i5) {
            int[] iArr3 = this.hm;
            int i6 = i2 + 1;
            System.arraycopy(iArr3, i2, iArr3, i6, i5 - i2);
            Object[] objArr2 = this.Qhi;
            System.arraycopy(objArr2, i2, objArr2, i6, this.cJ - i2);
        }
        this.hm[i2] = i;
        this.Qhi[i2] = e2;
        this.cJ++;
        return true;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean remove(Object obj) {
        int Qhi = Qhi(obj);
        if (Qhi >= 0) {
            ac(Qhi);
            return true;
        }
        return false;
    }

    public E ac(int i) {
        Object[] objArr = this.Qhi;
        E e2 = (E) objArr[i];
        int i2 = this.cJ;
        if (i2 <= 1) {
            Qhi(this.hm, objArr, i2);
            this.hm = ac;
            this.Qhi = CJ;
            this.cJ = 0;
        } else {
            int[] iArr = this.hm;
            if (iArr.length > 8 && i2 < iArr.length / 3) {
                CJ(i2 > 8 ? i2 + (i2 >> 1) : 8);
                this.cJ--;
                if (i > 0) {
                    System.arraycopy(iArr, 0, this.hm, 0, i);
                    System.arraycopy(objArr, 0, this.Qhi, 0, i);
                }
                int i3 = this.cJ;
                if (i < i3) {
                    int i4 = i + 1;
                    System.arraycopy(iArr, i4, this.hm, i, i3 - i);
                    System.arraycopy(objArr, i4, this.Qhi, i, this.cJ - i);
                }
            } else {
                int i5 = i2 - 1;
                this.cJ = i5;
                if (i < i5) {
                    int i6 = i + 1;
                    System.arraycopy(iArr, i6, iArr, i, i5 - i);
                    Object[] objArr2 = this.Qhi;
                    System.arraycopy(objArr2, i6, objArr2, i, this.cJ - i);
                }
                this.Qhi[this.cJ] = null;
            }
        }
        return e2;
    }

    @Override // java.util.Collection, java.util.Set
    public int size() {
        return this.cJ;
    }

    @Override // java.util.Collection, java.util.Set
    public Object[] toArray() {
        int i = this.cJ;
        Object[] objArr = new Object[i];
        System.arraycopy(this.Qhi, 0, objArr, 0, i);
        return objArr;
    }

    @Override // java.util.Collection, java.util.Set
    public <T> T[] toArray(T[] tArr) {
        if (tArr.length < this.cJ) {
            tArr = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), this.cJ));
        }
        System.arraycopy(this.Qhi, 0, tArr, 0, this.cJ);
        int length = tArr.length;
        int i = this.cJ;
        if (length > i) {
            tArr[i] = null;
        }
        return tArr;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Set) {
            Set set = (Set) obj;
            if (size() != set.size()) {
                return false;
            }
            for (int i = 0; i < this.cJ; i++) {
                try {
                    if (!set.contains(cJ(i))) {
                        return false;
                    }
                } catch (ClassCastException | NullPointerException unused) {
                }
            }
            return true;
        }
        return false;
    }

    @Override // java.util.Collection, java.util.Set
    public int hashCode() {
        int[] iArr = this.hm;
        int i = this.cJ;
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            i2 += iArr[i3];
        }
        return i2;
    }

    public String toString() {
        if (isEmpty()) {
            return JsonUtils.EMPTY_JSON;
        }
        StringBuilder sb = new StringBuilder(this.cJ * 14);
        sb.append('{');
        for (int i = 0; i < this.cJ; i++) {
            if (i > 0) {
                sb.append(", ");
            }
            E cJ = cJ(i);
            if (cJ != this) {
                sb.append(cJ);
            } else {
                sb.append("(this Set)");
            }
        }
        sb.append('}');
        return sb.toString();
    }

    private pA<E, E> cJ() {
        if (this.WAv == null) {
            this.WAv = new pA<E, E>() { // from class: com.bytedance.adsdk.lottie.Qhi.1
                @Override // com.bytedance.adsdk.lottie.pA
                protected int Qhi() {
                    return Qhi.this.cJ;
                }

                @Override // com.bytedance.adsdk.lottie.pA
                protected Object Qhi(int i, int i2) {
                    return Qhi.this.Qhi[i];
                }

                @Override // com.bytedance.adsdk.lottie.pA
                protected int Qhi(Object obj) {
                    return Qhi.this.Qhi(obj);
                }

                @Override // com.bytedance.adsdk.lottie.pA
                protected Map<E, E> cJ() {
                    throw new UnsupportedOperationException("not a map");
                }

                @Override // com.bytedance.adsdk.lottie.pA
                protected void Qhi(int i) {
                    Qhi.this.ac(i);
                }

                @Override // com.bytedance.adsdk.lottie.pA
                protected void ac() {
                    Qhi.this.clear();
                }
            };
        }
        return this.WAv;
    }

    @Override // java.util.Collection, java.lang.Iterable, java.util.Set
    public Iterator<E> iterator() {
        return cJ().CJ().iterator();
    }

    @Override // java.util.Collection, java.util.Set
    public boolean containsAll(Collection<?> collection) {
        Iterator<?> it = collection.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean addAll(Collection<? extends E> collection) {
        Qhi(this.cJ + collection.size());
        boolean z = false;
        for (E e2 : collection) {
            z |= add(e2);
        }
        return z;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean removeAll(Collection<?> collection) {
        Iterator<?> it = collection.iterator();
        boolean z = false;
        while (it.hasNext()) {
            z |= remove(it.next());
        }
        return z;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean retainAll(Collection<?> collection) {
        boolean z = false;
        for (int i = this.cJ - 1; i >= 0; i--) {
            if (!collection.contains(this.Qhi[i])) {
                ac(i);
                z = true;
            }
        }
        return z;
    }
}
