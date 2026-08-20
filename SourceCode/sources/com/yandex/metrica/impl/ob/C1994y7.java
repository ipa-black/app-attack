package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.os.Environment;
import android.text.TextUtils;
import com.yandex.metrica.core.api.executors.ICommonExecutor;
import com.yandex.metrica.impl.ac.CrashpadHelper;
import java.io.File;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Callable;
/* renamed from: com.yandex.metrica.impl.ob.y7  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1994y7 {
    private static final Set<String> m;

    /* renamed from: a  reason: collision with root package name */
    private final Context f16073a;

    /* renamed from: b  reason: collision with root package name */
    private final ICommonExecutor f16074b;

    /* renamed from: c  reason: collision with root package name */
    private final File f16075c;

    /* renamed from: d  reason: collision with root package name */
    private final List<String> f16076d;

    /* renamed from: e  reason: collision with root package name */
    private final File f16077e;

    /* renamed from: f  reason: collision with root package name */
    private final File f16078f;

    /* renamed from: g  reason: collision with root package name */
    private final InterfaceC1744nm<Void, String> f16079g;

    /* renamed from: h  reason: collision with root package name */
    private final Jl f16080h;
    private final C1970x7 i;
    private final Callable<String> j;
    private final C1803q7 k;
    private final B0 l;

    /* renamed from: com.yandex.metrica.impl.ob.y7$a */
    /* loaded from: classes5.dex */
    class a implements InterfaceC1744nm<Void, String> {
        a() {
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC1744nm
        public String a(Void r1) {
            return CrashpadHelper.getLibraryVersion();
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.y7$b */
    /* loaded from: classes5.dex */
    class b implements Callable<String> {
        b() {
        }

        @Override // java.util.concurrent.Callable
        public String call() throws Exception {
            return CrashpadHelper.getLibDirInsideApk();
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.y7$c */
    /* loaded from: classes5.dex */
    static class c implements InterfaceC1744nm<File, Boolean> {
        c() {
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC1744nm
        public /* bridge */ /* synthetic */ Boolean a(File file) {
            return Boolean.TRUE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.yandex.metrica.impl.ob.y7$d */
    /* loaded from: classes5.dex */
    public static class d implements InterfaceC1744nm<File, Boolean> {

        /* renamed from: a  reason: collision with root package name */
        private final String f16081a;

        public d(String str) {
            this.f16081a = str;
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC1744nm
        public Boolean a(File file) {
            return Boolean.valueOf(!file.getName().endsWith(this.f16081a));
        }
    }

    static {
        HashSet hashSet = new HashSet();
        m = hashSet;
        hashSet.add("armeabi-v7a");
        hashSet.add("arm64-v8a");
        hashSet.add("x86");
        hashSet.add("x86_64");
    }

    public C1994y7(Context context, B0 b0, ICommonExecutor iCommonExecutor) {
        this(context, b0, iCommonExecutor, Arrays.asList("libappmetrica_crashpad_handler.so", "libappmetrica_handler.so"));
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0065  */
    /* JADX WARN: Removed duplicated region for block: B:37:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private com.yandex.metrica.impl.ob.C7 a() {
        /*
            r9 = this;
            java.io.File r0 = r9.f16075c
            r1 = 0
            r2 = 0
            if (r0 == 0) goto L19
            boolean r0 = r0.exists()
            if (r0 != 0) goto Ld
            goto L19
        Ld:
            java.io.File r0 = r9.f16075c
            java.lang.String r0 = r0.getAbsolutePath()
            com.yandex.metrica.impl.ob.C7 r3 = new com.yandex.metrica.impl.ob.C7
            r3.<init>(r0, r2, r1)
            return r3
        L19:
            android.os.SystemClock.elapsedRealtime()
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r3 = "-"
            r0.<init>(r3)
            com.yandex.metrica.impl.ob.nm<java.lang.Void, java.lang.String> r3 = r9.f16079g
            java.lang.Object r3 = r3.a(r1)
            java.lang.String r3 = (java.lang.String) r3
            java.lang.StringBuilder r0 = r0.append(r3)
            java.lang.String r0 = r0.toString()
            com.yandex.metrica.impl.ob.Jl r3 = r9.f16080h
            java.lang.String r3 = r3.a()
            if (r3 == 0) goto Lb2
            java.io.File r4 = r9.f16078f
            if (r4 != 0) goto L40
            goto L62
        L40:
            boolean r4 = r4.exists()
            r5 = 1
            if (r4 != 0) goto L63
            java.io.File r4 = r9.f16078f
            boolean r4 = r4.mkdirs()
            if (r4 != 0) goto L50
            goto L62
        L50:
            java.io.File r4 = r9.f16077e
            if (r4 == 0) goto L62
            boolean r4 = r4.setExecutable(r5, r2)
            if (r4 != 0) goto L5b
            goto L62
        L5b:
            java.io.File r4 = r9.f16078f
            boolean r5 = r4.setExecutable(r5, r2)
            goto L63
        L62:
            r5 = r2
        L63:
            if (r5 == 0) goto Lb2
            com.yandex.metrica.impl.ob.y7$d r4 = new com.yandex.metrica.impl.ob.y7$d
            r4.<init>(r0)
            com.yandex.metrica.core.api.executors.ICommonExecutor r5 = r9.f16074b
            com.yandex.metrica.impl.ob.z7 r6 = new com.yandex.metrica.impl.ob.z7
            r6.<init>(r9, r4)
            r5.execute(r6)
            java.util.List<java.lang.String> r4 = r9.f16076d
            java.util.Iterator r4 = r4.iterator()
        L7a:
            boolean r5 = r4.hasNext()
            if (r5 == 0) goto Lb2
            java.lang.Object r5 = r4.next()
            java.lang.String r5 = (java.lang.String) r5
            com.yandex.metrica.impl.ob.x7 r6 = r9.i
            java.lang.Object[] r7 = new java.lang.Object[]{r3, r5}
            java.lang.String r8 = "lib/%s/%s"
            java.lang.String r7 = java.lang.String.format(r8, r7)
            java.lang.StringBuilder r8 = new java.lang.StringBuilder
            r8.<init>()
            java.lang.StringBuilder r5 = r8.append(r5)
            java.lang.StringBuilder r5 = r5.append(r0)
            java.lang.String r5 = r5.toString()
            java.lang.String r5 = r6.a(r7, r5)
            android.os.SystemClock.elapsedRealtime()
            if (r5 == 0) goto L7a
            com.yandex.metrica.impl.ob.C7 r0 = new com.yandex.metrica.impl.ob.C7
            r0.<init>(r5, r2, r1)
            r1 = r0
        Lb2:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.ob.C1994y7.a():com.yandex.metrica.impl.ob.C7");
    }

    private File c() {
        String str;
        try {
            str = this.j.call();
        } catch (Throwable unused) {
            str = null;
        }
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        this.l.getClass();
        return new File(str);
    }

    public C7 b() {
        C1779p7 c1779p7;
        C7 c7 = null;
        if (A2.a(29)) {
            File c2 = c();
            if (c2 != null) {
                for (String str : this.f16076d) {
                    this.l.getClass();
                    File file = new File(c2, str);
                    if (file.exists()) {
                        return new C7(file.getAbsolutePath(), true, null);
                    }
                }
                return null;
            }
            return null;
        } else if (A2.a(23)) {
            C1803q7 c1803q7 = this.k;
            Context context = this.f16073a;
            String a2 = this.f16080h.a();
            c1803q7.getClass();
            try {
                String[] a3 = D7.a(context, a2);
                c1779p7 = new C1779p7(a3[0], a3[1], Environment.getDataDirectory().getAbsolutePath());
            } catch (Throwable unused) {
                c1779p7 = null;
            }
            if (c1779p7 != null) {
                File c3 = c();
                if (c3 == null) {
                    c7 = new C7("stub", false, c1779p7);
                } else {
                    Iterator<String> it = this.f16076d.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            break;
                        }
                        this.l.getClass();
                        File file2 = new File(c3, it.next());
                        if (file2.exists()) {
                            c7 = new C7(file2.getAbsolutePath(), false, c1779p7);
                            break;
                        }
                    }
                }
            }
            if (c7 != null && c7.f12745d != null) {
                this.f16074b.execute(new RunnableC2018z7(this, new c()));
                return c7;
            }
            return a();
        } else {
            return a();
        }
    }

    private C1994y7(Context context, B0 b0, ICommonExecutor iCommonExecutor, List<String> list) {
        this(context, iCommonExecutor, list, b0, b0.a(b0.a(context), list.get(0)), b0.b(context.getCacheDir(), "appmetrica_crashpad_handler_extracted"), new a(), new b(), new Jl(m));
    }

    private C1994y7(Context context, ICommonExecutor iCommonExecutor, List<String> list, B0 b0, File file, File file2, InterfaceC1744nm<Void, String> interfaceC1744nm, Callable<String> callable, Jl jl) {
        this(context, iCommonExecutor, list, file, file2, interfaceC1744nm, callable, jl, new C1970x7(context, file2), new C1803q7(), b0);
    }

    C1994y7(Context context, ICommonExecutor iCommonExecutor, List<String> list, File file, File file2, InterfaceC1744nm<Void, String> interfaceC1744nm, Callable<String> callable, Jl jl, C1970x7 c1970x7, C1803q7 c1803q7, B0 b0) {
        this.f16073a = context;
        this.f16074b = iCommonExecutor;
        this.f16076d = list;
        this.f16075c = file;
        this.f16077e = context.getCacheDir();
        this.f16078f = file2;
        this.f16079g = interfaceC1744nm;
        this.j = callable;
        this.f16080h = jl;
        this.i = c1970x7;
        this.k = c1803q7;
        this.l = b0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(InterfaceC1744nm<File, Boolean> interfaceC1744nm) {
        File[] listFiles;
        File file = this.f16078f;
        if (file == null || (listFiles = file.listFiles()) == null) {
            return;
        }
        for (File file2 : listFiles) {
            if (interfaceC1744nm.a(file2).booleanValue()) {
                file2.delete();
            }
        }
    }
}
