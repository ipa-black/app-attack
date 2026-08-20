package com.bytedance.adsdk.lottie.Qhi.Qhi;

import android.graphics.Path;
import com.bytedance.adsdk.lottie.ac.cJ.WAv;
import java.util.ArrayList;
import java.util.List;
import java.util.ListIterator;
/* compiled from: MergePathsContent.java */
/* loaded from: classes2.dex */
public class ABk implements Gm, iMK {
    private final String CJ;
    private final com.bytedance.adsdk.lottie.ac.cJ.WAv Tgh;
    private final Path Qhi = new Path();
    private final Path cJ = new Path();
    private final Path ac = new Path();
    private final List<iMK> fl = new ArrayList();

    public ABk(com.bytedance.adsdk.lottie.ac.cJ.WAv wAv) {
        this.CJ = wAv.Qhi();
        this.Tgh = wAv;
    }

    @Override // com.bytedance.adsdk.lottie.Qhi.Qhi.Gm
    public void Qhi(ListIterator<ac> listIterator) {
        while (listIterator.hasPrevious() && listIterator.previous() != this) {
        }
        while (listIterator.hasPrevious()) {
            ac previous = listIterator.previous();
            if (previous instanceof iMK) {
                this.fl.add((iMK) previous);
                listIterator.remove();
            }
        }
    }

    @Override // com.bytedance.adsdk.lottie.Qhi.Qhi.ac
    public void Qhi(List<ac> list, List<ac> list2) {
        for (int i = 0; i < this.fl.size(); i++) {
            this.fl.get(i).Qhi(list, list2);
        }
    }

    @Override // com.bytedance.adsdk.lottie.Qhi.Qhi.iMK
    public Path CJ() {
        this.ac.reset();
        if (this.Tgh.ac()) {
            return this.ac;
        }
        int i = AnonymousClass1.Qhi[this.Tgh.cJ().ordinal()];
        if (i == 1) {
            Qhi();
        } else if (i == 2) {
            Qhi(Path.Op.UNION);
        } else if (i == 3) {
            Qhi(Path.Op.REVERSE_DIFFERENCE);
        } else if (i == 4) {
            Qhi(Path.Op.INTERSECT);
        } else if (i == 5) {
            Qhi(Path.Op.XOR);
        }
        return this.ac;
    }

    /* compiled from: MergePathsContent.java */
    /* renamed from: com.bytedance.adsdk.lottie.Qhi.Qhi.ABk$1  reason: invalid class name */
    /* loaded from: classes2.dex */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] Qhi;

        static {
            int[] iArr = new int[WAv.Qhi.values().length];
            Qhi = iArr;
            try {
                iArr[WAv.Qhi.MERGE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                Qhi[WAv.Qhi.ADD.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                Qhi[WAv.Qhi.SUBTRACT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                Qhi[WAv.Qhi.INTERSECT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                Qhi[WAv.Qhi.EXCLUDE_INTERSECTIONS.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    private void Qhi() {
        for (int i = 0; i < this.fl.size(); i++) {
            this.ac.addPath(this.fl.get(i).CJ());
        }
    }

    private void Qhi(Path.Op op) {
        this.cJ.reset();
        this.Qhi.reset();
        for (int size = this.fl.size() - 1; size > 0; size--) {
            iMK imk = this.fl.get(size);
            if (imk instanceof fl) {
                fl flVar = (fl) imk;
                List<iMK> cJ = flVar.cJ();
                for (int size2 = cJ.size() - 1; size2 >= 0; size2--) {
                    Path CJ = cJ.get(size2).CJ();
                    CJ.transform(flVar.ac());
                    this.cJ.addPath(CJ);
                }
            } else {
                this.cJ.addPath(imk.CJ());
            }
        }
        iMK imk2 = this.fl.get(0);
        if (imk2 instanceof fl) {
            fl flVar2 = (fl) imk2;
            List<iMK> cJ2 = flVar2.cJ();
            for (int i = 0; i < cJ2.size(); i++) {
                Path CJ2 = cJ2.get(i).CJ();
                CJ2.transform(flVar2.ac());
                this.Qhi.addPath(CJ2);
            }
        } else {
            this.Qhi.set(imk2.CJ());
        }
        this.ac.op(this.Qhi, this.cJ, op);
    }
}
