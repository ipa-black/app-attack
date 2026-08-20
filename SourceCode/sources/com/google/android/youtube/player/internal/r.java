package com.google.android.youtube.player.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.exoplayer2.extractor.ts.TsExtractor;
import com.google.android.youtube.player.YouTubeApiServiceUtil;
import com.google.android.youtube.player.YouTubeInitializationResult;
import com.google.android.youtube.player.internal.c;
import com.google.android.youtube.player.internal.i;
import com.google.android.youtube.player.internal.t;
import java.util.ArrayList;
/* loaded from: classes4.dex */
public abstract class r<T extends IInterface> implements t {

    /* renamed from: a  reason: collision with root package name */
    final Handler f9772a;

    /* renamed from: b  reason: collision with root package name */
    private final Context f9773b;

    /* renamed from: c  reason: collision with root package name */
    private T f9774c;

    /* renamed from: d  reason: collision with root package name */
    private ArrayList<t.a> f9775d;

    /* renamed from: g  reason: collision with root package name */
    private ArrayList<t.b> f9778g;
    private ServiceConnection j;

    /* renamed from: e  reason: collision with root package name */
    private final ArrayList<t.a> f9776e = new ArrayList<>();

    /* renamed from: f  reason: collision with root package name */
    private boolean f9777f = false;

    /* renamed from: h  reason: collision with root package name */
    private boolean f9779h = false;
    private final ArrayList<b<?>> i = new ArrayList<>();
    private boolean k = false;

    /* renamed from: com.google.android.youtube.player.internal.r$1  reason: invalid class name */
    /* loaded from: classes4.dex */
    static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f9780a;

        static {
            int[] iArr = new int[YouTubeInitializationResult.values().length];
            f9780a = iArr;
            try {
                iArr[YouTubeInitializationResult.SUCCESS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
        }
    }

    /* loaded from: classes4.dex */
    final class a extends Handler {
        a() {
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            if (message.what == 3) {
                r.this.a((YouTubeInitializationResult) message.obj);
            } else if (message.what == 4) {
                synchronized (r.this.f9775d) {
                    if (r.this.k && r.this.f() && r.this.f9775d.contains(message.obj)) {
                        ((t.a) message.obj).a();
                    }
                }
            } else if (message.what != 2 || r.this.f()) {
                if (message.what == 2 || message.what == 1) {
                    ((b) message.obj).a();
                }
            }
        }
    }

    /* loaded from: classes4.dex */
    protected abstract class b<TListener> {

        /* renamed from: b  reason: collision with root package name */
        private TListener f9783b;

        public b(TListener tlistener) {
            this.f9783b = tlistener;
            synchronized (r.this.i) {
                r.this.i.add(this);
            }
        }

        public final void a() {
            TListener tlistener;
            synchronized (this) {
                tlistener = this.f9783b;
            }
            a(tlistener);
        }

        protected abstract void a(TListener tlistener);

        public final void b() {
            synchronized (this) {
                this.f9783b = null;
            }
        }
    }

    /* loaded from: classes4.dex */
    protected final class c extends b<Boolean> {

        /* renamed from: b  reason: collision with root package name */
        public final YouTubeInitializationResult f9784b;

        /* renamed from: c  reason: collision with root package name */
        public final IBinder f9785c;

        public c(String str, IBinder iBinder) {
            super(true);
            this.f9784b = r.b(str);
            this.f9785c = iBinder;
        }

        @Override // com.google.android.youtube.player.internal.r.b
        protected final /* synthetic */ void a(Boolean bool) {
            if (bool != null) {
                if (AnonymousClass1.f9780a[this.f9784b.ordinal()] != 1) {
                    r.this.a(this.f9784b);
                    return;
                }
                try {
                    if (r.this.b().equals(this.f9785c.getInterfaceDescriptor())) {
                        r rVar = r.this;
                        rVar.f9774c = rVar.a(this.f9785c);
                        if (r.this.f9774c != null) {
                            r.this.g();
                            return;
                        }
                    }
                } catch (RemoteException unused) {
                }
                r.this.a();
                r.this.a(YouTubeInitializationResult.INTERNAL_ERROR);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes4.dex */
    public final class d extends c.a {
        protected d() {
        }

        @Override // com.google.android.youtube.player.internal.c
        public final void a(String str, IBinder iBinder) {
            r.this.f9772a.sendMessage(r.this.f9772a.obtainMessage(1, new c(str, iBinder)));
        }
    }

    /* loaded from: classes4.dex */
    final class e implements ServiceConnection {
        e() {
        }

        @Override // android.content.ServiceConnection
        public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            r.this.b(iBinder);
        }

        @Override // android.content.ServiceConnection
        public final void onServiceDisconnected(ComponentName componentName) {
            r.this.f9774c = null;
            r.this.h();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Multi-variable type inference failed */
    public r(Context context, t.a aVar, t.b bVar) {
        if (Looper.getMainLooper().getThread() != Thread.currentThread()) {
            throw new IllegalStateException("Clients must be created on the UI thread.");
        }
        this.f9773b = (Context) ab.a(context);
        ArrayList<t.a> arrayList = new ArrayList<>();
        this.f9775d = arrayList;
        arrayList.add(ab.a(aVar));
        ArrayList<t.b> arrayList2 = new ArrayList<>();
        this.f9778g = arrayList2;
        arrayList2.add(ab.a(bVar));
        this.f9772a = new a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        ServiceConnection serviceConnection = this.j;
        if (serviceConnection != null) {
            try {
                this.f9773b.unbindService(serviceConnection);
            } catch (IllegalArgumentException e2) {
                Log.w("YouTubeClient", "Unexpected error from unbindService()", e2);
            }
        }
        this.f9774c = null;
        this.j = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static YouTubeInitializationResult b(String str) {
        try {
            return YouTubeInitializationResult.valueOf(str);
        } catch (IllegalArgumentException unused) {
            return YouTubeInitializationResult.UNKNOWN_ERROR;
        } catch (NullPointerException unused2) {
            return YouTubeInitializationResult.UNKNOWN_ERROR;
        }
    }

    protected abstract T a(IBinder iBinder);

    protected final void a(YouTubeInitializationResult youTubeInitializationResult) {
        this.f9772a.removeMessages(4);
        synchronized (this.f9778g) {
            this.f9779h = true;
            ArrayList<t.b> arrayList = this.f9778g;
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                if (!this.k) {
                    return;
                }
                if (this.f9778g.contains(arrayList.get(i))) {
                    arrayList.get(i).a(youTubeInitializationResult);
                }
            }
            this.f9779h = false;
        }
    }

    protected abstract void a(i iVar, d dVar) throws RemoteException;

    protected abstract String b();

    protected final void b(IBinder iBinder) {
        try {
            a(i.a.a(iBinder), new d());
        } catch (RemoteException unused) {
            Log.w("YouTubeClient", "service died");
        }
    }

    protected abstract String c();

    @Override // com.google.android.youtube.player.internal.t
    public void d() {
        h();
        this.k = false;
        synchronized (this.i) {
            int size = this.i.size();
            for (int i = 0; i < size; i++) {
                this.i.get(i).b();
            }
            this.i.clear();
        }
        a();
    }

    @Override // com.google.android.youtube.player.internal.t
    public final void e() {
        this.k = true;
        YouTubeInitializationResult isYouTubeApiServiceAvailable = YouTubeApiServiceUtil.isYouTubeApiServiceAvailable(this.f9773b);
        if (isYouTubeApiServiceAvailable != YouTubeInitializationResult.SUCCESS) {
            Handler handler = this.f9772a;
            handler.sendMessage(handler.obtainMessage(3, isYouTubeApiServiceAvailable));
            return;
        }
        Intent intent = new Intent(c()).setPackage(z.a(this.f9773b));
        if (this.j != null) {
            Log.e("YouTubeClient", "Calling connect() while still connected, missing disconnect().");
            a();
        }
        e eVar = new e();
        this.j = eVar;
        if (this.f9773b.bindService(intent, eVar, TsExtractor.TS_STREAM_TYPE_AC3)) {
            return;
        }
        Handler handler2 = this.f9772a;
        handler2.sendMessage(handler2.obtainMessage(3, YouTubeInitializationResult.ERROR_CONNECTING_TO_SERVICE));
    }

    public final boolean f() {
        return this.f9774c != null;
    }

    protected final void g() {
        synchronized (this.f9775d) {
            boolean z = true;
            ab.a(!this.f9777f);
            this.f9772a.removeMessages(4);
            this.f9777f = true;
            if (this.f9776e.size() != 0) {
                z = false;
            }
            ab.a(z);
            ArrayList<t.a> arrayList = this.f9775d;
            int size = arrayList.size();
            for (int i = 0; i < size && this.k && f(); i++) {
                if (!this.f9776e.contains(arrayList.get(i))) {
                    arrayList.get(i).a();
                }
            }
            this.f9776e.clear();
            this.f9777f = false;
        }
    }

    protected final void h() {
        this.f9772a.removeMessages(4);
        synchronized (this.f9775d) {
            this.f9777f = true;
            ArrayList<t.a> arrayList = this.f9775d;
            int size = arrayList.size();
            for (int i = 0; i < size && this.k; i++) {
                if (this.f9775d.contains(arrayList.get(i))) {
                    arrayList.get(i).b();
                }
            }
            this.f9777f = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void i() {
        if (!f()) {
            throw new IllegalStateException("Not connected. Call connect() and wait for onConnected() to be called.");
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final T j() {
        i();
        return this.f9774c;
    }
}
