package com.criteo.publisher.context;

import com.google.android.exoplayer2.source.rtsp.SessionDescription;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.util.Arrays;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.text.Charsets;
import kotlin.text.StringsKt;
/* compiled from: EmailHasher.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\t\bÆ\u0002\u0018\u0000B\t\b\u0002¢\u0006\u0004\b\b\u0010\tJ\u0017\u0010\u0003\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u001b\u0010\u0006\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0002¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\n"}, d2 = {"Lcom/criteo/publisher/context/EmailHasher;", "", "email", "hash", "(Ljava/lang/String;)Ljava/lang/String;", SessionDescription.ATTR_TYPE, "toHash", "(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;", "<init>", "()V", "publisher-sdk_release"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2.dex */
public final class EmailHasher {

    /* renamed from: a  reason: collision with root package name */
    public static final EmailHasher f8694a = new EmailHasher();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: EmailHasher.kt */
    /* loaded from: classes2.dex */
    public static final class a extends Lambda implements Function1<Byte, String> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f8695a = new a();

        a() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ String invoke(Byte b2) {
            return a(b2.byteValue());
        }

        public final String a(byte b2) {
            String format = String.format("%02x", Arrays.copyOf(new Object[]{Byte.valueOf(b2)}, 1));
            Intrinsics.checkNotNullExpressionValue(format, "java.lang.String.format(this, *args)");
            return format;
        }
    }

    private EmailHasher() {
    }

    @JvmStatic
    public static final String hash(String email) {
        Intrinsics.checkParameterIsNotNull(email, "email");
        EmailHasher emailHasher = f8694a;
        String obj = StringsKt.trim((CharSequence) email).toString();
        Locale locale = Locale.ROOT;
        Intrinsics.checkExpressionValueIsNotNull(locale, "Locale.ROOT");
        if (obj != null) {
            String lowerCase = obj.toLowerCase(locale);
            Intrinsics.checkNotNullExpressionValue(lowerCase, "(this as java.lang.String).toLowerCase(locale)");
            return emailHasher.a(emailHasher.a(lowerCase, "MD5"), "SHA-256");
        }
        throw new NullPointerException("null cannot be cast to non-null type java.lang.String");
    }

    private final String a(String str, String str2) {
        MessageDigest messageDigest = MessageDigest.getInstance(str2);
        Charset charset = Charsets.UTF_8;
        if (str == null) {
            throw new NullPointerException("null cannot be cast to non-null type java.lang.String");
        }
        byte[] bytes = str.getBytes(charset);
        Intrinsics.checkNotNullExpressionValue(bytes, "(this as java.lang.String).getBytes(charset)");
        byte[] digest = messageDigest.digest(bytes);
        Intrinsics.checkExpressionValueIsNotNull(digest, "MessageDigest.getInstanc…   .digest(toByteArray())");
        return ArraysKt.joinToString$default(digest, (CharSequence) "", (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (Function1) a.f8695a, 30, (Object) null);
    }
}
