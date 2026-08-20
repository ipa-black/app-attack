package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.text.TextUtils;
import com.yandex.metrica.core.api.executors.ICommonExecutor;
import com.yandex.metrica.coreutils.io.FileUtils;
import java.io.File;
@Deprecated
/* renamed from: com.yandex.metrica.impl.ob.n7  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1729n7 implements InterfaceC1505e7<File> {

    /* renamed from: a  reason: collision with root package name */
    private final Context f15239a;

    /* renamed from: b  reason: collision with root package name */
    private final File f15240b;

    /* renamed from: c  reason: collision with root package name */
    private final C1457c9 f15241c;

    /* renamed from: d  reason: collision with root package name */
    private final B0 f15242d;

    /* renamed from: e  reason: collision with root package name */
    private final C1605i7 f15243e;

    /* renamed from: f  reason: collision with root package name */
    private final InterfaceC1530f7<String> f15244f;

    /* renamed from: g  reason: collision with root package name */
    private final ICommonExecutor f15245g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.yandex.metrica.impl.ob.n7$a */
    /* loaded from: classes5.dex */
    public static class a implements InterfaceC1719mm<File> {
        a() {
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC1719mm
        public void b(File file) {
            file.delete();
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.n7$b */
    /* loaded from: classes5.dex */
    static class b implements InterfaceC1719mm<String> {

        /* renamed from: a  reason: collision with root package name */
        private final InterfaceC1530f7<String> f15246a;

        b(InterfaceC1530f7<String> interfaceC1530f7) {
            this.f15246a = interfaceC1530f7;
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC1719mm
        public void b(String str) {
            String str2 = str;
            if (TextUtils.isEmpty(str2)) {
                return;
            }
            this.f15246a.b(str2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.yandex.metrica.impl.ob.n7$c */
    /* loaded from: classes5.dex */
    public static class c implements InterfaceC1719mm<String> {

        /* renamed from: a  reason: collision with root package name */
        private final InterfaceC1530f7<String> f15247a;

        c(InterfaceC1530f7<String> interfaceC1530f7) {
            this.f15247a = interfaceC1530f7;
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC1719mm
        public void b(String str) {
            String str2 = str;
            if (TextUtils.isEmpty(str2)) {
                return;
            }
            this.f15247a.a(str2);
        }
    }

    public C1729n7(Context context, B0 b0, C1605i7 c1605i7, InterfaceC1530f7<String> interfaceC1530f7, ICommonExecutor iCommonExecutor, C1457c9 c1457c9) {
        this.f15239a = context;
        this.f15242d = b0;
        this.f15240b = b0.b(context);
        this.f15243e = c1605i7;
        this.f15244f = interfaceC1530f7;
        this.f15245g = iCommonExecutor;
        this.f15241c = c1457c9;
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1505e7
    public void a(File file) {
        this.f15245g.execute(new RunnableC1873t6(file, this.f15243e, new a(), new b(this.f15244f)));
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1505e7
    public synchronized void a() {
        File b2;
        if (FileUtils.needToUseNoBackup() && (b2 = this.f15242d.b(this.f15239a.getFilesDir(), "YandexMetricaNativeCrashes")) != null) {
            if (this.f15241c.o()) {
                if (b2.exists()) {
                    try {
                        b2.delete();
                    } catch (Throwable unused) {
                    }
                }
            } else {
                a2(b2);
                this.f15241c.p();
            }
        }
        a2(this.f15240b);
    }

    /* renamed from: a  reason: avoid collision after fix types in other method */
    private void a2(File file) {
        File[] fileArr;
        if (file != null && file.exists()) {
            fileArr = file.listFiles(new C1704m7(this));
            if (fileArr == null) {
                fileArr = new File[0];
            }
        } else {
            fileArr = new File[0];
        }
        for (File file2 : fileArr) {
            this.f15245g.execute(new RunnableC1873t6(file2, this.f15243e, new a(), new c(this.f15244f)));
        }
    }
}
