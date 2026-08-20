package com.ironsource.sdk.k;

import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import com.ironsource.sdk.utils.IronSourceStorageUtils;
import com.ironsource.sdk.utils.Logger;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.util.concurrent.Callable;
/* loaded from: classes3.dex */
public final class b {

    /* renamed from: c  reason: collision with root package name */
    private static b f12080c;

    /* renamed from: a  reason: collision with root package name */
    public com.ironsource.sdk.k.a f12081a = new com.ironsource.sdk.k.a(com.ironsource.environment.e.a.a());

    /* renamed from: b  reason: collision with root package name */
    public final String f12082b;

    /* renamed from: d  reason: collision with root package name */
    private Thread f12083d;

    /* loaded from: classes3.dex */
    static class a implements Callable<C0330b> {

        /* renamed from: a  reason: collision with root package name */
        private String f12084a;

        /* renamed from: b  reason: collision with root package name */
        private String f12085b;

        /* renamed from: c  reason: collision with root package name */
        private String f12086c;

        /* renamed from: d  reason: collision with root package name */
        private long f12087d;

        /* renamed from: e  reason: collision with root package name */
        private String f12088e;

        a(String str, String str2, String str3, long j, String str4) {
            this.f12084a = str;
            this.f12085b = str2;
            this.f12086c = str3;
            this.f12087d = j;
            this.f12088e = str4;
        }

        /* JADX WARN: Not initialized variable reg: 4, insn: 0x00f4: MOVE  (r7 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r4 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]), block:B:63:0x00f4 */
        /* JADX WARN: Removed duplicated region for block: B:133:0x0076 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:21:0x007e A[Catch: all -> 0x007a, TRY_LEAVE, TryCatch #20 {all -> 0x007a, blocks: (B:17:0x0076, B:21:0x007e), top: B:133:0x0076 }] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private com.ironsource.sdk.k.b.C0330b a(java.lang.String r9, int r10) {
            /*
                Method dump skipped, instructions count: 364
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.ironsource.sdk.k.b.a.a(java.lang.String, int):com.ironsource.sdk.k.b$b");
        }

        private static byte[] a(InputStream inputStream) {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            byte[] bArr = new byte[8192];
            while (true) {
                int read = inputStream.read(bArr, 0, 8192);
                if (read == -1) {
                    byteArrayOutputStream.flush();
                    return byteArrayOutputStream.toByteArray();
                }
                byteArrayOutputStream.write(bArr, 0, read);
            }
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a */
        public final C0330b call() {
            int i;
            int i2;
            if (this.f12087d == 0) {
                this.f12087d = 1L;
            }
            C0330b c0330b = null;
            for (int i3 = 0; i3 < this.f12087d && ((i2 = (c0330b = a(this.f12084a, i3)).f12090b) == 1008 || i2 == 1009); i3++) {
            }
            if (c0330b != null && c0330b.f12091c != null) {
                String str = this.f12085b + File.separator + this.f12086c;
                String str2 = this.f12088e + File.separator + "tmp_" + this.f12086c;
                try {
                    if (IronSourceStorageUtils.saveFile(c0330b.f12091c, str2) == 0) {
                        c0330b.f12090b = 1006;
                    } else if (!IronSourceStorageUtils.renameFile(str2, str)) {
                        c0330b.f12090b = 1020;
                    }
                } catch (FileNotFoundException unused) {
                    i = 1018;
                    c0330b.f12090b = i;
                } catch (Error e2) {
                    if (!TextUtils.isEmpty(e2.getMessage())) {
                        Logger.i("DownloadManager", e2.getMessage());
                    }
                    i = 1019;
                    c0330b.f12090b = i;
                } catch (Exception e3) {
                    if (!TextUtils.isEmpty(e3.getMessage())) {
                        Logger.i("DownloadManager", e3.getMessage());
                    }
                    c0330b.f12090b = 1009;
                }
            }
            return c0330b;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ironsource.sdk.k.b$b  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public static class C0330b {

        /* renamed from: a  reason: collision with root package name */
        public String f12089a;

        /* renamed from: b  reason: collision with root package name */
        int f12090b;

        /* renamed from: c  reason: collision with root package name */
        byte[] f12091c;

        C0330b() {
        }
    }

    /* loaded from: classes3.dex */
    static class c implements Runnable {

        /* renamed from: b  reason: collision with root package name */
        private final String f12093b;

        /* renamed from: c  reason: collision with root package name */
        private Handler f12094c;

        /* renamed from: d  reason: collision with root package name */
        private String f12095d;

        /* renamed from: e  reason: collision with root package name */
        private String f12096e;

        /* renamed from: f  reason: collision with root package name */
        private String f12097f;

        /* renamed from: a  reason: collision with root package name */
        private final long f12092a = 3;

        /* renamed from: g  reason: collision with root package name */
        private long f12098g = 3;

        c(com.ironsource.sdk.h.c cVar, String str, Handler handler, String str2) {
            this.f12095d = str;
            this.f12096e = cVar.getParent();
            this.f12097f = cVar.getName();
            this.f12094c = handler;
            this.f12093b = str2;
        }

        @Override // java.lang.Runnable
        public final void run() {
            int i;
            com.ironsource.sdk.h.c cVar = new com.ironsource.sdk.h.c(this.f12096e, this.f12097f);
            Message message = new Message();
            message.obj = cVar;
            String makeDir = IronSourceStorageUtils.makeDir(cVar.getParent());
            if (makeDir == null) {
                i = 1020;
            } else {
                C0330b call = new a(this.f12095d, makeDir, cVar.getName(), this.f12098g, this.f12093b).call();
                i = call.f12090b == 200 ? 1016 : call.f12090b;
            }
            message.what = i;
            this.f12094c.sendMessage(message);
        }
    }

    private b(String str, com.ironsource.environment.e.a aVar) {
        this.f12082b = str;
        IronSourceStorageUtils.deleteFolder(c());
        IronSourceStorageUtils.makeDir(c());
    }

    public static synchronized b a(String str, com.ironsource.environment.e.a aVar) {
        b bVar;
        synchronized (b.class) {
            if (f12080c == null) {
                f12080c = new b(str, aVar);
            }
            bVar = f12080c;
        }
        return bVar;
    }

    private String c() {
        return IronSourceStorageUtils.buildAbsolutePathToDirInCache(this.f12082b, "temp");
    }

    public final synchronized void a() {
        f12080c = null;
        com.ironsource.sdk.k.a aVar = this.f12081a;
        if (aVar != null) {
            aVar.f12079a = null;
            this.f12081a = null;
        }
    }

    public final void a(com.ironsource.sdk.h.c cVar, String str) {
        Thread thread = new Thread(new c(cVar, str, this.f12081a, c()));
        this.f12083d = thread;
        thread.start();
    }

    public final void a(com.ironsource.sdk.h.c cVar, String str, Handler handler) {
        new Thread(new c(cVar, str, handler, c())).start();
    }

    public final boolean b() {
        Thread thread = this.f12083d;
        return thread != null && thread.isAlive();
    }
}
