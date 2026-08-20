package com.bytedance.sdk.component;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import android.util.ArrayMap;
import android.util.Log;
import java.io.File;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Properties;
import java.util.Set;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
/* compiled from: TTPropHelper.java */
/* loaded from: classes2.dex */
public class cJ {
    private static Qhi ABk = null;
    private static ArrayMap<String, File> Gm = null;
    private static boolean Qhi = false;
    private static ArrayMap<File, cJ> zc;
    private Properties CJ;
    private long ROR;
    private long Sf;
    private int Tgh;
    private final File WAv;
    private final Object ac;
    private final Object cJ;
    private volatile boolean fl;
    private final File hm;

    /* compiled from: TTPropHelper.java */
    /* loaded from: classes2.dex */
    public interface Qhi {
        ExecutorService getExecutorService();
    }

    static /* synthetic */ long Tgh(cJ cJVar) {
        long j = cJVar.ROR;
        cJVar.ROR = 1 + j;
        return j;
    }

    static /* synthetic */ int fl(cJ cJVar) {
        int i = cJVar.Tgh;
        cJVar.Tgh = i + 1;
        return i;
    }

    static /* synthetic */ int hm(cJ cJVar) {
        int i = cJVar.Tgh;
        cJVar.Tgh = i - 1;
        return i;
    }

    public static void Qhi(Qhi qhi) {
        ABk = qhi;
    }

    public static cJ Qhi(Context context, String str) {
        if (TextUtils.isEmpty(str)) {
            str = "tt_prop";
        }
        synchronized (cJ.class) {
            if (Gm == null) {
                Gm = new ArrayMap<>();
            }
            File file = Gm.get(str);
            if (file == null) {
                file = new File(context.getFilesDir(), str);
                Gm.put(str, file);
            }
            if (zc == null) {
                zc = new ArrayMap<>();
            }
            cJ cJVar = zc.get(file);
            if (cJVar == null) {
                cJ cJVar2 = new cJ(file);
                zc.put(file, cJVar2);
                return cJVar2;
            }
            return cJVar;
        }
    }

    /* JADX WARN: Type inference failed for: r3v4, types: [com.bytedance.sdk.component.cJ$1] */
    private cJ(File file) {
        Object obj = new Object();
        this.cJ = obj;
        this.ac = new Object();
        this.CJ = new Properties();
        this.fl = false;
        this.Tgh = 0;
        this.hm = file;
        this.WAv = Qhi(file);
        synchronized (obj) {
            this.fl = false;
        }
        Qhi qhi = ABk;
        if (qhi == null || qhi.getExecutorService() == null) {
            new Thread("TTPropHelper") { // from class: com.bytedance.sdk.component.cJ.1
                @Override // java.lang.Thread, java.lang.Runnable
                public void run() {
                    cJ.this.Qhi();
                }
            }.start();
        } else {
            ABk.getExecutorService().execute(new Runnable() { // from class: com.bytedance.sdk.component.cJ.2
                @Override // java.lang.Runnable
                public void run() {
                    cJ.this.Qhi();
                }
            });
        }
    }

    static File Qhi(File file) {
        return new File(file.getPath() + ".bak");
    }

    /* JADX WARN: Removed duplicated region for block: B:47:0x00d3  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:36:0x00b3 -> B:62:0x00bc). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void Qhi() {
        /*
            Method dump skipped, instructions count: 237
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.component.cJ.Qhi():void");
    }

    private void CJ() {
        while (!this.fl) {
            try {
                this.cJ.wait();
            } catch (InterruptedException unused) {
            }
        }
    }

    public String Qhi(String str, String str2) {
        String property;
        if (TextUtils.isEmpty(str)) {
            return str2;
        }
        synchronized (this.cJ) {
            CJ();
            property = this.CJ.getProperty(str, str2);
        }
        return property;
    }

    public int Qhi(String str, int i) {
        int parseInt;
        if (TextUtils.isEmpty(str)) {
            return i;
        }
        synchronized (this.cJ) {
            try {
                try {
                    CJ();
                    parseInt = Integer.parseInt(this.CJ.getProperty(str, String.valueOf(i)));
                } catch (NumberFormatException e2) {
                    Log.e("TTPropHelper", e2.getMessage());
                    return i;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return parseInt;
    }

    public long Qhi(String str, long j) {
        long parseLong;
        if (TextUtils.isEmpty(str)) {
            return j;
        }
        synchronized (this.cJ) {
            try {
                try {
                    CJ();
                    parseLong = Long.parseLong(this.CJ.getProperty(str, String.valueOf(j)));
                } catch (NumberFormatException e2) {
                    Log.e("TTPropHelper", e2.getMessage());
                    return j;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return parseLong;
    }

    public float Qhi(String str, float f2) {
        float parseFloat;
        if (TextUtils.isEmpty(str)) {
            return f2;
        }
        synchronized (this.cJ) {
            try {
                try {
                    CJ();
                    parseFloat = Float.parseFloat(this.CJ.getProperty(str, String.valueOf(f2)));
                } catch (NumberFormatException e2) {
                    Log.e("TTPropHelper", e2.getMessage());
                    return f2;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return parseFloat;
    }

    public boolean Qhi(String str, boolean z) {
        boolean parseBoolean;
        if (TextUtils.isEmpty(str)) {
            return z;
        }
        synchronized (this.cJ) {
            try {
                try {
                    CJ();
                    parseBoolean = Boolean.parseBoolean(this.CJ.getProperty(str, String.valueOf(z)));
                } catch (NumberFormatException e2) {
                    Log.e("TTPropHelper", e2.getMessage());
                    return z;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return parseBoolean;
    }

    public boolean Qhi(String str) {
        boolean containsKey;
        synchronized (this.cJ) {
            try {
                try {
                    CJ();
                    containsKey = this.CJ.containsKey(str);
                } catch (NumberFormatException e2) {
                    Log.e("TTPropHelper", e2.getMessage());
                    return false;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return containsKey;
    }

    public ac cJ() {
        return new ac();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: TTPropHelper.java */
    /* renamed from: com.bytedance.sdk.component.cJ$cJ  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static class C0199cJ {
        volatile boolean CJ;
        final long Qhi;
        final CountDownLatch ac;
        final Properties cJ;
        boolean fl;

        private C0199cJ(long j, Properties properties) {
            this.ac = new CountDownLatch(1);
            this.CJ = false;
            this.fl = false;
            this.Qhi = j;
            this.cJ = properties;
        }

        void Qhi(boolean z, boolean z2) {
            this.fl = z;
            this.CJ = z2;
            this.ac.countDown();
        }
    }

    /* compiled from: TTPropHelper.java */
    /* loaded from: classes2.dex */
    public class ac implements SharedPreferences.Editor {
        private final Object cJ = new Object();
        private final Map<String, Object> ac = new HashMap();
        private boolean CJ = false;

        public ac() {
        }

        @Override // android.content.SharedPreferences.Editor
        /* renamed from: Qhi */
        public ac putStringSet(String str, Set<String> set) {
            synchronized (this.cJ) {
                this.ac.put(str, set == null ? null : new HashSet(set));
            }
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        /* renamed from: Qhi */
        public ac putInt(String str, int i) {
            synchronized (this.cJ) {
                this.ac.put(str, Integer.valueOf(i));
            }
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        /* renamed from: Qhi */
        public ac putLong(String str, long j) {
            synchronized (this.cJ) {
                this.ac.put(str, Long.valueOf(j));
            }
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        /* renamed from: Qhi */
        public ac putFloat(String str, float f2) {
            synchronized (this.cJ) {
                this.ac.put(str, Float.valueOf(f2));
            }
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        /* renamed from: Qhi */
        public ac putString(String str, String str2) {
            synchronized (this.cJ) {
                this.ac.put(str, str2);
            }
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        /* renamed from: Qhi */
        public ac putBoolean(String str, boolean z) {
            synchronized (this.cJ) {
                this.ac.put(str, Boolean.valueOf(z));
            }
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        /* renamed from: Qhi */
        public ac remove(String str) {
            synchronized (this.cJ) {
                this.ac.put(str, this);
            }
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        /* renamed from: Qhi */
        public ac clear() {
            synchronized (this.cJ) {
                this.CJ = true;
            }
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public boolean commit() {
            long currentTimeMillis = cJ.Qhi ? System.currentTimeMillis() : 0L;
            C0199cJ cJ = cJ();
            cJ.this.Qhi(cJ, true);
            try {
                cJ.ac.await();
                if (cJ.Qhi) {
                    Log.d("TTPropHelper", cJ.this.hm.getName() + ":" + cJ.Qhi + " committed after " + (System.currentTimeMillis() - currentTimeMillis) + " ms");
                }
                return cJ.CJ;
            } catch (InterruptedException unused) {
                if (cJ.Qhi) {
                    Log.d("TTPropHelper", cJ.this.hm.getName() + ":" + cJ.Qhi + " committed after " + (System.currentTimeMillis() - currentTimeMillis) + " ms");
                    return false;
                }
                return false;
            } catch (Throwable th) {
                if (cJ.Qhi) {
                    Log.d("TTPropHelper", cJ.this.hm.getName() + ":" + cJ.Qhi + " committed after " + (System.currentTimeMillis() - currentTimeMillis) + " ms");
                }
                throw th;
            }
        }

        @Override // android.content.SharedPreferences.Editor
        public void apply() {
            cJ.this.Qhi(cJ(), false);
        }

        private C0199cJ cJ() {
            Properties properties;
            long j;
            Object obj;
            boolean z;
            synchronized (cJ.this.cJ) {
                if (cJ.this.Tgh > 0) {
                    Properties properties2 = new Properties();
                    properties2.putAll(cJ.this.CJ);
                    cJ.this.CJ = properties2;
                }
                properties = cJ.this.CJ;
                cJ.fl(cJ.this);
                synchronized (this.cJ) {
                    boolean z2 = false;
                    if (this.CJ) {
                        if (properties.isEmpty()) {
                            z = false;
                        } else {
                            properties.clear();
                            z = true;
                        }
                        this.CJ = false;
                        z2 = z;
                    }
                    for (Map.Entry<String, Object> entry : this.ac.entrySet()) {
                        String key = entry.getKey();
                        Object value = entry.getValue();
                        if (value != this && value != null) {
                            if (!properties.containsKey(key) || (obj = properties.get(key)) == null || !obj.equals(String.valueOf(value))) {
                                properties.put(key, String.valueOf(value));
                                z2 = true;
                            }
                        }
                        if (properties.containsKey(key)) {
                            properties.remove(key);
                            z2 = true;
                        }
                    }
                    this.ac.clear();
                    if (z2) {
                        cJ.Tgh(cJ.this);
                    }
                    j = cJ.this.ROR;
                }
            }
            return new C0199cJ(j, properties);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Qhi(final C0199cJ c0199cJ, final boolean z) {
        boolean z2;
        Runnable runnable = new Runnable() { // from class: com.bytedance.sdk.component.cJ.3
            @Override // java.lang.Runnable
            public void run() {
                synchronized (cJ.this.ac) {
                    try {
                        cJ.this.cJ(c0199cJ, z);
                    } catch (OutOfMemoryError unused) {
                    }
                }
                synchronized (cJ.this.cJ) {
                    cJ.hm(cJ.this);
                }
            }
        };
        if (z) {
            synchronized (this.cJ) {
                z2 = this.Tgh == 1;
            }
            if (z2) {
                runnable.run();
                return;
            }
        }
        com.bytedance.sdk.component.ac.Qhi(runnable, true ^ z);
    }

    /*  JADX ERROR: JadxRuntimeException in pass: BlockProcessor
        jadx.core.utils.exceptions.JadxRuntimeException: Unreachable block: B:56:0x00f4
        	at jadx.core.dex.visitors.blocks.BlockProcessor.checkForUnreachableBlocks(BlockProcessor.java:81)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.processBlocksTree(BlockProcessor.java:47)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.visit(BlockProcessor.java:39)
        */
    /* JADX INFO: Access modifiers changed from: private */
    public void cJ(com.bytedance.sdk.component.cJ.C0199cJ r18, boolean r19) {
        /*
            Method dump skipped, instructions count: 472
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.component.cJ.cJ(com.bytedance.sdk.component.cJ$cJ, boolean):void");
    }
}
