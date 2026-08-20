package com.applovin.impl.sdk.network;

import android.os.Process;
import androidx.core.util.Consumer;
import com.applovin.impl.sdk.n;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.Utils;
import com.applovin.impl.sdk.v;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Collections;
import java.util.Map;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Executor;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.atomic.AtomicInteger;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class e {

    /* renamed from: a  reason: collision with root package name */
    private final PriorityBlockingQueue<b> f5925a = new PriorityBlockingQueue<>();

    /* renamed from: b  reason: collision with root package name */
    private final n f5926b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class a extends Thread {

        /* renamed from: a  reason: collision with root package name */
        private final BlockingQueue<b> f5927a;

        /* renamed from: b  reason: collision with root package name */
        private final n f5928b;

        private a(BlockingQueue<b> blockingQueue, int i, n nVar) {
            super("AL-Network-" + i);
            if (blockingQueue == null) {
                throw new IllegalArgumentException("No request queue specified");
            }
            if (nVar == null) {
                throw new IllegalArgumentException("No sdk specified");
            }
            this.f5927a = blockingQueue;
            this.f5928b = nVar;
        }

        private void a() throws InterruptedException {
            a(this.f5927a.take());
        }

        private void a(final b bVar) {
            HttpURLConnection httpURLConnection;
            InputStream inputStream;
            InputStream inputStream2;
            String str;
            InputStream inputStream3;
            String str2;
            int i = 0;
            String str3 = null;
            try {
                httpURLConnection = b(bVar);
                try {
                    if (bVar.f5936e != null && bVar.f5936e.length > 0) {
                        httpURLConnection.setDoOutput(true);
                        httpURLConnection.setFixedLengthStreamingMode(bVar.f5936e.length);
                        OutputStream outputStream = httpURLConnection.getOutputStream();
                        outputStream.write(bVar.f5936e);
                        outputStream.close();
                    }
                    i = httpURLConnection.getResponseCode();
                    if (i > 0) {
                        inputStream3 = httpURLConnection.getInputStream();
                        try {
                            str2 = com.applovin.impl.sdk.utils.i.a(inputStream3, this.f5928b);
                        } catch (Throwable th) {
                            inputStream = inputStream3;
                            th = th;
                            try {
                                this.f5928b.D();
                                if (v.a()) {
                                    this.f5928b.D().a("NetworkCommunicationThread", "Failed to make HTTP request", th);
                                }
                                if (httpURLConnection != null) {
                                    try {
                                        inputStream2 = httpURLConnection.getErrorStream();
                                    } catch (Throwable unused) {
                                        inputStream2 = null;
                                    }
                                    try {
                                        str = com.applovin.impl.sdk.utils.i.a(inputStream2, this.f5928b);
                                    } catch (Throwable unused2) {
                                        str = null;
                                        Utils.close(inputStream, this.f5928b);
                                        Utils.close(inputStream2, this.f5928b);
                                        Utils.disconnect(httpURLConnection, this.f5928b);
                                        final c a2 = c.d().a(i).a(str3).b(str).a(th).a();
                                        bVar.f5939h.execute(new Runnable() { // from class: com.applovin.impl.sdk.network.e.a.1
                                            @Override // java.lang.Runnable
                                            public void run() {
                                                bVar.f5938g.accept(a2);
                                            }
                                        });
                                    }
                                } else {
                                    inputStream2 = null;
                                    str = null;
                                }
                                Utils.close(inputStream, this.f5928b);
                                Utils.close(inputStream2, this.f5928b);
                                Utils.disconnect(httpURLConnection, this.f5928b);
                                final c a22 = c.d().a(i).a(str3).b(str).a(th).a();
                                bVar.f5939h.execute(new Runnable() { // from class: com.applovin.impl.sdk.network.e.a.1
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        bVar.f5938g.accept(a22);
                                    }
                                });
                            } catch (Throwable th2) {
                                Utils.close(inputStream, this.f5928b);
                                Utils.close(null, this.f5928b);
                                Utils.disconnect(httpURLConnection, this.f5928b);
                                throw th2;
                            }
                        }
                    } else {
                        inputStream3 = null;
                        str2 = null;
                    }
                    Utils.close(inputStream3, this.f5928b);
                    Utils.close(null, this.f5928b);
                    Utils.disconnect(httpURLConnection, this.f5928b);
                    th = null;
                    str = null;
                    str3 = str2;
                } catch (Throwable th3) {
                    th = th3;
                    inputStream = null;
                }
            } catch (Throwable th4) {
                th = th4;
                httpURLConnection = null;
                inputStream = null;
            }
            final c a222 = c.d().a(i).a(str3).b(str).a(th).a();
            bVar.f5939h.execute(new Runnable() { // from class: com.applovin.impl.sdk.network.e.a.1
                @Override // java.lang.Runnable
                public void run() {
                    bVar.f5938g.accept(a222);
                }
            });
        }

        private HttpURLConnection b(b bVar) throws IOException {
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(bVar.f5933b).openConnection();
            httpURLConnection.setRequestMethod(bVar.f5934c);
            httpURLConnection.setConnectTimeout(bVar.f5937f);
            httpURLConnection.setReadTimeout(bVar.f5937f);
            httpURLConnection.setDefaultUseCaches(false);
            httpURLConnection.setAllowUserInteraction(false);
            httpURLConnection.setUseCaches(false);
            httpURLConnection.setInstanceFollowRedirects(true);
            httpURLConnection.setDoInput(true);
            if (!bVar.f5935d.isEmpty()) {
                for (Map.Entry entry : bVar.f5935d.entrySet()) {
                    httpURLConnection.setRequestProperty((String) entry.getKey(), (String) entry.getValue());
                }
            }
            return httpURLConnection;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            Process.setThreadPriority(10);
            while (true) {
                try {
                    a();
                } catch (InterruptedException unused) {
                    Thread.currentThread().interrupt();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class b implements Comparable<b> {

        /* renamed from: a  reason: collision with root package name */
        private static final AtomicInteger f5932a = new AtomicInteger();

        /* renamed from: b  reason: collision with root package name */
        private final String f5933b;

        /* renamed from: c  reason: collision with root package name */
        private final String f5934c;

        /* renamed from: d  reason: collision with root package name */
        private final Map<String, String> f5935d;

        /* renamed from: e  reason: collision with root package name */
        private final byte[] f5936e;

        /* renamed from: f  reason: collision with root package name */
        private final int f5937f;

        /* renamed from: g  reason: collision with root package name */
        private final Consumer<c> f5938g;

        /* renamed from: h  reason: collision with root package name */
        private final Executor f5939h;
        private final int i;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes.dex */
        public static class a {

            /* renamed from: a  reason: collision with root package name */
            private String f5940a;

            /* renamed from: b  reason: collision with root package name */
            private String f5941b;

            /* renamed from: c  reason: collision with root package name */
            private Map<String, String> f5942c = CollectionUtils.map();

            /* renamed from: d  reason: collision with root package name */
            private byte[] f5943d;

            /* renamed from: e  reason: collision with root package name */
            private int f5944e;

            /* renamed from: f  reason: collision with root package name */
            private Consumer<c> f5945f;

            /* renamed from: g  reason: collision with root package name */
            private Executor f5946g;

            /* JADX INFO: Access modifiers changed from: package-private */
            public a a(int i) {
                this.f5944e = i;
                return this;
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            public a a(Consumer<c> consumer) {
                this.f5945f = consumer;
                return this;
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            public a a(String str) {
                this.f5940a = str;
                return this;
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            public a a(String str, String str2) {
                this.f5942c.put(str, str2);
                return this;
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            public a a(Map<String, String> map) {
                if (map == null) {
                    map = CollectionUtils.map();
                }
                this.f5942c = map;
                return this;
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            public a a(Executor executor) {
                this.f5946g = executor;
                return this;
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            public a a(byte[] bArr) {
                this.f5943d = bArr;
                return this;
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            public b a() {
                return new b(this);
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            public a b(String str) {
                this.f5941b = str;
                return this;
            }
        }

        private b(a aVar) {
            this.f5933b = aVar.f5940a;
            this.f5934c = aVar.f5941b;
            this.f5935d = aVar.f5942c != null ? aVar.f5942c : Collections.emptyMap();
            this.f5936e = aVar.f5943d;
            this.f5937f = aVar.f5944e;
            this.f5938g = aVar.f5945f;
            this.f5939h = aVar.f5946g;
            this.i = f5932a.incrementAndGet();
        }

        @Override // java.lang.Comparable
        /* renamed from: a */
        public int compareTo(b bVar) {
            return this.i - bVar.i;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class c {

        /* renamed from: a  reason: collision with root package name */
        private final int f5947a;

        /* renamed from: b  reason: collision with root package name */
        private final String f5948b;

        /* renamed from: c  reason: collision with root package name */
        private final String f5949c;

        /* renamed from: d  reason: collision with root package name */
        private final Throwable f5950d;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes.dex */
        public static class a {

            /* renamed from: a  reason: collision with root package name */
            private int f5951a;

            /* renamed from: b  reason: collision with root package name */
            private String f5952b;

            /* renamed from: c  reason: collision with root package name */
            private String f5953c;

            /* renamed from: d  reason: collision with root package name */
            private Throwable f5954d;

            a() {
            }

            a a(int i) {
                this.f5951a = i;
                return this;
            }

            a a(String str) {
                this.f5952b = str;
                return this;
            }

            a a(Throwable th) {
                this.f5954d = th;
                return this;
            }

            c a() {
                return new c(this);
            }

            a b(String str) {
                this.f5953c = str;
                return this;
            }
        }

        private c(a aVar) {
            this.f5947a = aVar.f5951a;
            this.f5948b = aVar.f5952b;
            this.f5949c = aVar.f5953c;
            this.f5950d = aVar.f5954d;
        }

        static a d() {
            return new a();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public int a() throws Throwable {
            Throwable th = this.f5950d;
            if (th == null) {
                return this.f5947a;
            }
            throw th;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public String b() throws Throwable {
            Throwable th = this.f5950d;
            if (th == null) {
                return this.f5948b;
            }
            throw th;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public String c() {
            return this.f5949c;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(n nVar) {
        this.f5926b = nVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a() {
        for (int i = 0; i < ((Integer) this.f5926b.a(com.applovin.impl.sdk.c.b.as)).intValue(); i++) {
            new a(this.f5925a, i, this.f5926b).start();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(b bVar) {
        if (bVar == null) {
            throw new IllegalArgumentException("No request specified");
        }
        this.f5925a.add(bVar);
    }
}
