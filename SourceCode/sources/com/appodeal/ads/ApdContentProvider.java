package com.appodeal.ads;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import com.appodeal.ads.modules.libs.network.NetworkStatus;
import com.onesignal.NotificationBundleProcessor;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
@Metadata(bv = {}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Lcom/appodeal/ads/ApdContentProvider;", "Landroid/content/ContentProvider;", "<init>", "()V", NotificationBundleProcessor.PUSH_ADDITIONAL_DATA_KEY, "apd_core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes.dex */
public final class ApdContentProvider extends ContentProvider {

    /* loaded from: classes.dex */
    public static final class a extends Thread {

        /* renamed from: b  reason: collision with root package name */
        public static boolean f6365b;

        /* renamed from: a  reason: collision with root package name */
        public final Context f6366a;

        /* renamed from: com.appodeal.ads.ApdContentProvider$a$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class C0101a {
            public static void a(Context context) {
                Intrinsics.checkNotNullParameter(context, "context");
                if (a.f6365b) {
                    return;
                }
                a.f6365b = true;
                new a(context, 0).start();
            }
        }

        public a(Context context) {
            this.f6366a = context;
            setName("AppodealPrepare");
        }

        public /* synthetic */ a(Context context, int i) {
            this(context);
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public final void run() {
            try {
                i.c(this.f6366a);
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    @Override // android.content.ContentProvider
    public final int delete(Uri uri, String str, String[] strArr) {
        Intrinsics.checkNotNullParameter(uri, "uri");
        return 0;
    }

    @Override // android.content.ContentProvider
    public final String getType(Uri uri) {
        Intrinsics.checkNotNullParameter(uri, "uri");
        return null;
    }

    @Override // android.content.ContentProvider
    public final Uri insert(Uri uri, ContentValues contentValues) {
        Intrinsics.checkNotNullParameter(uri, "uri");
        return null;
    }

    @Override // android.content.ContentProvider
    public final boolean onCreate() {
        Context applicationContext;
        Context context = getContext();
        if (context == null || (applicationContext = context.getApplicationContext()) == null) {
            return false;
        }
        NetworkStatus.INSTANCE.init(applicationContext);
        com.appodeal.ads.context.g.f6601b.setApplicationContext(applicationContext);
        boolean z = a.f6365b;
        a.C0101a.a(applicationContext);
        return false;
    }

    @Override // android.content.ContentProvider
    public final Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        Intrinsics.checkNotNullParameter(uri, "uri");
        return null;
    }

    @Override // android.content.ContentProvider
    public final int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        Intrinsics.checkNotNullParameter(uri, "uri");
        return 0;
    }
}
