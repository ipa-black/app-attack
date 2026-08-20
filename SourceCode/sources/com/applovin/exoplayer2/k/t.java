package com.applovin.exoplayer2.k;

import android.text.TextUtils;
import com.applovin.exoplayer2.common.base.Ascii;
import com.applovin.exoplayer2.common.base.Predicate;
import com.applovin.exoplayer2.k.i;
import com.google.android.exoplayer2.PlaybackException;
import com.google.android.exoplayer2.util.MimeTypes;
import com.onesignal.OSInAppMessageContentKt;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.SocketTimeoutException;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
public interface t extends i {

    /* renamed from: a  reason: collision with root package name */
    public static final Predicate<String> f3697a = new Predicate() { // from class: com.applovin.exoplayer2.k.t$$ExternalSyntheticLambda0
        @Override // com.applovin.exoplayer2.common.base.Predicate
        public final boolean apply(Object obj) {
            boolean a2;
            a2 = t.a((String) obj);
            return a2;
        }
    };

    /* loaded from: classes.dex */
    public static final class a extends c {
        public a(IOException iOException, l lVar) {
            super("Cleartext HTTP traffic not permitted. See https://exoplayer.dev/issues/cleartext-not-permitted", iOException, lVar, PlaybackException.ERROR_CODE_IO_CLEARTEXT_NOT_PERMITTED, 1);
        }
    }

    /* loaded from: classes.dex */
    public interface b extends i.a {
        @Override // com.applovin.exoplayer2.k.i.a
        /* renamed from: c */
        t a();
    }

    /* loaded from: classes.dex */
    public static class c extends j {

        /* renamed from: b  reason: collision with root package name */
        public final l f3698b;

        /* renamed from: c  reason: collision with root package name */
        public final int f3699c;

        public c(l lVar, int i, int i2) {
            super(a(i, i2));
            this.f3698b = lVar;
            this.f3699c = i2;
        }

        public c(IOException iOException, l lVar, int i, int i2) {
            super(iOException, a(i, i2));
            this.f3698b = lVar;
            this.f3699c = i2;
        }

        public c(String str, l lVar, int i, int i2) {
            super(str, a(i, i2));
            this.f3698b = lVar;
            this.f3699c = i2;
        }

        public c(String str, IOException iOException, l lVar, int i, int i2) {
            super(str, iOException, a(i, i2));
            this.f3698b = lVar;
            this.f3699c = i2;
        }

        private static int a(int i, int i2) {
            if (i == 2000 && i2 == 1) {
                return 2001;
            }
            return i;
        }

        public static c a(IOException iOException, l lVar, int i) {
            String message = iOException.getMessage();
            int i2 = iOException instanceof SocketTimeoutException ? 2002 : iOException instanceof InterruptedIOException ? 1004 : (message == null || !Ascii.toLowerCase(message).matches("cleartext.*not permitted.*")) ? 2001 : 2007;
            return i2 == 2007 ? new a(iOException, lVar) : new c(iOException, lVar, i2, i);
        }
    }

    /* loaded from: classes.dex */
    public static final class d extends c {

        /* renamed from: d  reason: collision with root package name */
        public final String f3700d;

        public d(String str, l lVar) {
            super("Invalid content type: " + str, lVar, 2003, 1);
            this.f3700d = str;
        }
    }

    /* loaded from: classes.dex */
    public static final class e extends c {

        /* renamed from: d  reason: collision with root package name */
        public final int f3701d;

        /* renamed from: e  reason: collision with root package name */
        public final String f3702e;

        /* renamed from: f  reason: collision with root package name */
        public final Map<String, List<String>> f3703f;

        /* renamed from: g  reason: collision with root package name */
        public final byte[] f3704g;

        public e(int i, String str, IOException iOException, Map<String, List<String>> map, l lVar, byte[] bArr) {
            super("Response code: " + i, iOException, lVar, 2004, 1);
            this.f3701d = i;
            this.f3702e = str;
            this.f3703f = map;
            this.f3704g = bArr;
        }
    }

    /* loaded from: classes.dex */
    public static final class f {

        /* renamed from: a  reason: collision with root package name */
        private final Map<String, String> f3705a = new HashMap();

        /* renamed from: b  reason: collision with root package name */
        private Map<String, String> f3706b;

        public synchronized Map<String, String> a() {
            if (this.f3706b == null) {
                this.f3706b = Collections.unmodifiableMap(new HashMap(this.f3705a));
            }
            return this.f3706b;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static /* synthetic */ boolean a(String str) {
        if (str == null) {
            return false;
        }
        String lowerCase = Ascii.toLowerCase(str);
        if (TextUtils.isEmpty(lowerCase)) {
            return false;
        }
        return ((lowerCase.contains("text") && !lowerCase.contains(MimeTypes.TEXT_VTT)) || lowerCase.contains(OSInAppMessageContentKt.HTML) || lowerCase.contains("xml")) ? false : true;
    }
}
