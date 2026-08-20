package com.apm.insight.runtime;

import com.apm.insight.CrashType;
import com.apm.insight.ICrashCallback;
import com.apm.insight.IOOMCallback;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
/* loaded from: classes.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private final List<ICrashCallback> f1095a = new CopyOnWriteArrayList();

    /* renamed from: b  reason: collision with root package name */
    private final List<ICrashCallback> f1096b = new CopyOnWriteArrayList();

    /* renamed from: c  reason: collision with root package name */
    private final List<ICrashCallback> f1097c = new CopyOnWriteArrayList();

    /* renamed from: d  reason: collision with root package name */
    private final List<ICrashCallback> f1098d = new CopyOnWriteArrayList();

    /* renamed from: e  reason: collision with root package name */
    private final List<IOOMCallback> f1099e = new CopyOnWriteArrayList();

    /* renamed from: com.apm.insight.runtime.c$1  reason: invalid class name */
    /* loaded from: classes.dex */
    static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f1100a;

        static {
            int[] iArr = new int[CrashType.values().length];
            f1100a = iArr;
            try {
                iArr[CrashType.ALL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f1100a[CrashType.ANR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f1100a[CrashType.JAVA.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f1100a[CrashType.LAUNCH.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f1100a[CrashType.NATIVE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public List<IOOMCallback> a() {
        return this.f1099e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(ICrashCallback iCrashCallback, CrashType crashType) {
        List<ICrashCallback> list;
        int i = AnonymousClass1.f1100a[crashType.ordinal()];
        if (i == 1) {
            this.f1095a.add(iCrashCallback);
            this.f1096b.add(iCrashCallback);
            this.f1097c.add(iCrashCallback);
        } else if (i != 2) {
            if (i == 3) {
                list = this.f1096b;
            } else if (i == 4) {
                list = this.f1095a;
            } else if (i != 5) {
                return;
            } else {
                list = this.f1097c;
            }
            list.add(iCrashCallback);
        }
        list = this.f1098d;
        list.add(iCrashCallback);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(IOOMCallback iOOMCallback) {
        this.f1099e.add(iOOMCallback);
    }

    public List<ICrashCallback> b() {
        return this.f1095a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(ICrashCallback iCrashCallback, CrashType crashType) {
        List<ICrashCallback> list;
        int i = AnonymousClass1.f1100a[crashType.ordinal()];
        if (i == 1) {
            this.f1095a.remove(iCrashCallback);
            this.f1096b.remove(iCrashCallback);
            this.f1097c.remove(iCrashCallback);
        } else if (i != 2) {
            if (i == 3) {
                list = this.f1096b;
            } else if (i == 4) {
                list = this.f1095a;
            } else if (i != 5) {
                return;
            } else {
                list = this.f1097c;
            }
            list.remove(iCrashCallback);
        }
        list = this.f1098d;
        list.remove(iCrashCallback);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(IOOMCallback iOOMCallback) {
        this.f1099e.remove(iOOMCallback);
    }

    public List<ICrashCallback> c() {
        return this.f1096b;
    }

    public List<ICrashCallback> d() {
        return this.f1097c;
    }

    public List<ICrashCallback> e() {
        return this.f1098d;
    }
}
