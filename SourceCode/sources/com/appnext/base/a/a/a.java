package com.appnext.base.a.a;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import com.appnext.base.a.b;
import com.appnext.base.b.e;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes.dex */
public class a {
    private static a dB;
    private static b dC;
    private AtomicInteger dA = new AtomicInteger(0);
    private SQLiteDatabase dD;

    /* JADX WARN: $VALUES field not found */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* renamed from: com.appnext.base.a.a.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class EnumC0091a {
        private static final /* synthetic */ int[] $VALUES$40a167d9 = {1, 2};
        public static final int DatabaseOrDiskFull$53629b42 = 2;
        public static final int Global$53629b42 = 1;

        private EnumC0091a(String str, int i) {
        }

        public static int[] af() {
            return (int[]) $VALUES$40a167d9.clone();
        }
    }

    private a(Context context) {
        dC = b.c(context);
    }

    public static a ac() {
        if (dB == null) {
            synchronized (a.class) {
                if (dB == null) {
                    dB = new a(e.getContext().getApplicationContext());
                }
            }
        }
        return dB;
    }

    public final SQLiteDatabase ad() {
        if (this.dA.incrementAndGet() == 1) {
            this.dD = dC.getWritableDatabase();
        }
        return this.dD;
    }

    public final void ae() {
        if (this.dA.decrementAndGet() == 0) {
            this.dD.close();
        }
    }

    /* renamed from: com.appnext.base.a.a.a$1  reason: invalid class name */
    /* loaded from: classes.dex */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] dE;

        static {
            int[] iArr = new int[EnumC0091a.af().length];
            dE = iArr;
            try {
                iArr[EnumC0091a.DatabaseOrDiskFull$53629b42 - 1] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                dE[EnumC0091a.Global$53629b42 - 1] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public static void a(int i, Throwable th) {
        int[] iArr = AnonymousClass1.dE;
    }
}
