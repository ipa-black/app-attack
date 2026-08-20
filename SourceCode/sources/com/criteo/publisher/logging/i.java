package com.criteo.publisher.logging;

import com.onesignal.OSNotificationFormatHelper;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
/* compiled from: PublisherCodeRemover.kt */
/* loaded from: classes2.dex */
public class i {

    /* renamed from: a  reason: collision with root package name */
    private final String f8969a = "com.criteo.";

    /* renamed from: b  reason: collision with root package name */
    private final List<String> f8970b = CollectionsKt.listOf((Object[]) new String[]{"java.", "javax.", "sun.", "com.sun.", "com.intellij.", "org.jetbrains.", "kotlin.", "android.", "com.android.", "androidx.", "dalvik.", "libcore.", "com.google", "com.mopub", "org.json", "com.squareup.", "org.junit."});

    /* renamed from: c  reason: collision with root package name */
    private final StackTraceElement f8971c = new StackTraceElement("<private class>", "<private method>", null, 0);

    public Throwable c(Throwable throwable) {
        Intrinsics.checkParameterIsNotNull(throwable, "throwable");
        try {
            return a(throwable, new LinkedHashMap());
        } catch (Throwable th) {
            return new a(th);
        }
    }

    public Throwable a(Throwable original, Map<Throwable, Throwable> visited) {
        Throwable th;
        Intrinsics.checkParameterIsNotNull(original, "original");
        Intrinsics.checkParameterIsNotNull(visited, "visited");
        Throwable th2 = visited.get(original);
        if (th2 != null) {
            return th2;
        }
        if (!b(original)) {
            th = original;
        } else if (a(original)) {
            th = new b(original);
        } else {
            th = new b();
        }
        visited.put(original, th);
        Throwable cause = original.getCause();
        boolean areEqual = cause != null ? Intrinsics.areEqual(cause.toString(), original.getMessage()) : false;
        a(original, th, visited);
        b(original, th, visited);
        a(original, th);
        Throwable cause2 = th.getCause();
        if (cause2 != null && areEqual) {
            c.f8975d.a(th, cause2.toString());
        }
        return th;
    }

    private void a(Throwable th, Throwable th2, Map<Throwable, Throwable> map) {
        Throwable cause = th.getCause();
        if (cause != null) {
            c.f8975d.a(th2, a(cause, map));
        }
    }

    private void b(Throwable th, Throwable th2, Map<Throwable, Throwable> map) {
        Throwable[] originalSuppressed = th.getSuppressed();
        Intrinsics.checkExpressionValueIsNotNull(originalSuppressed, "originalSuppressed");
        if (!(originalSuppressed.length == 0)) {
            ArrayList arrayList = new ArrayList(originalSuppressed.length);
            for (Throwable it : originalSuppressed) {
                Intrinsics.checkExpressionValueIsNotNull(it, "it");
                arrayList.add(a(it, map));
            }
            c.f8975d.a(th2, arrayList);
        }
    }

    private void a(Throwable th, Throwable th2) {
        ArrayList arrayList = new ArrayList();
        StackTraceElement[] stackTrace = th.getStackTrace();
        Intrinsics.checkExpressionValueIsNotNull(stackTrace, "original.stackTrace");
        for (StackTraceElement it : stackTrace) {
            Intrinsics.checkExpressionValueIsNotNull(it, "it");
            if (b(it) || a(it)) {
                arrayList.add(it);
            } else if (arrayList.isEmpty() || (!Intrinsics.areEqual((StackTraceElement) CollectionsKt.last((List<? extends Object>) arrayList), this.f8971c))) {
                arrayList.add(this.f8971c);
            }
        }
        Object[] array = arrayList.toArray(new StackTraceElement[0]);
        if (array == null) {
            throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T>");
        }
        th2.setStackTrace((StackTraceElement[]) array);
    }

    private boolean a(StackTraceElement stackTraceElement) {
        List<String> list = this.f8970b;
        if ((list instanceof Collection) && list.isEmpty()) {
            return false;
        }
        for (String str : list) {
            String className = stackTraceElement.getClassName();
            Intrinsics.checkExpressionValueIsNotNull(className, "className");
            if (StringsKt.startsWith$default(className, str, false, 2, (Object) null)) {
                return true;
            }
        }
        return false;
    }

    private boolean b(StackTraceElement stackTraceElement) {
        String className = stackTraceElement.getClassName();
        Intrinsics.checkExpressionValueIsNotNull(className, "className");
        return StringsKt.startsWith$default(className, this.f8969a, false, 2, (Object) null);
    }

    private boolean b(Throwable th) {
        StackTraceElement it;
        StackTraceElement[] stackTrace = th.getStackTrace();
        Intrinsics.checkExpressionValueIsNotNull(stackTrace, "stackTrace");
        int length = stackTrace.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                it = null;
                break;
            }
            it = stackTrace[i];
            Intrinsics.checkExpressionValueIsNotNull(it, "it");
            if (!a(it)) {
                break;
            }
            i++;
        }
        if (it != null) {
            return !b(it);
        }
        return false;
    }

    private boolean a(Throwable th) {
        List<String> list = this.f8970b;
        if ((list instanceof Collection) && list.isEmpty()) {
            return false;
        }
        for (String str : list) {
            String name = th.getClass().getName();
            Intrinsics.checkExpressionValueIsNotNull(name, "javaClass.name");
            if (StringsKt.startsWith$default(name, str, false, 2, (Object) null)) {
                return true;
            }
        }
        return false;
    }

    /* compiled from: PublisherCodeRemover.kt */
    /* loaded from: classes2.dex */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        private static final Field f8972a;

        /* renamed from: b  reason: collision with root package name */
        private static final Field f8973b;

        /* renamed from: c  reason: collision with root package name */
        private static final Field f8974c;

        /* renamed from: d  reason: collision with root package name */
        public static final c f8975d;

        static {
            c cVar = new c();
            f8975d = cVar;
            f8972a = cVar.a("cause");
            f8973b = cVar.a("suppressedExceptions");
            f8974c = cVar.a("detailMessage");
        }

        private c() {
        }

        private final Field a(String str) {
            Field field = Throwable.class.getDeclaredField(str);
            Intrinsics.checkExpressionValueIsNotNull(field, "field");
            field.setAccessible(true);
            return field;
        }

        public final void a(Throwable internalCause, Throwable th) {
            Intrinsics.checkParameterIsNotNull(internalCause, "$this$internalCause");
            f8972a.set(internalCause, th);
        }

        public final void a(Throwable internalSuppressedExceptions, List<? extends Throwable> list) {
            Intrinsics.checkParameterIsNotNull(internalSuppressedExceptions, "$this$internalSuppressedExceptions");
            f8973b.set(internalSuppressedExceptions, list);
        }

        public final void a(Throwable internalDetailMessage, String str) {
            Intrinsics.checkParameterIsNotNull(internalDetailMessage, "$this$internalDetailMessage");
            f8974c.set(internalDetailMessage, str);
        }
    }

    /* compiled from: PublisherCodeRemover.kt */
    /* loaded from: classes2.dex */
    public static final class b extends RuntimeException {
        public b() {
            this(OSNotificationFormatHelper.PAYLOAD_OS_ROOT_CUSTOM);
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public b(java.lang.Throwable r2) {
            /*
                r1 = this;
                java.lang.String r0 = "throwable"
                kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r2, r0)
                java.lang.Class r2 = r2.getClass()
                java.lang.String r2 = r2.getSimpleName()
                java.lang.String r0 = "throwable.javaClass.simpleName"
                kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r2, r0)
                r1.<init>(r2)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.criteo.publisher.logging.i.b.<init>(java.lang.Throwable):void");
        }

        private b(String str) {
            super("A " + str + " exception occurred from publisher's code");
        }
    }

    /* compiled from: PublisherCodeRemover.kt */
    /* loaded from: classes2.dex */
    private static final class a extends RuntimeException {
        static {
            new C0252a(null);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(Throwable cause) {
            super("Exception occurred while removing publisher code. " + cause.getClass().getSimpleName() + ": " + cause.getMessage());
            Intrinsics.checkParameterIsNotNull(cause, "cause");
            StackTraceElement[] stackTrace = cause.getStackTrace();
            Intrinsics.checkExpressionValueIsNotNull(stackTrace, "cause.stackTrace");
            Object[] copyOf = Arrays.copyOf(stackTrace, Math.min(cause.getStackTrace().length, 5));
            Intrinsics.checkNotNullExpressionValue(copyOf, "java.util.Arrays.copyOf(this, newSize)");
            setStackTrace((StackTraceElement[]) copyOf);
        }

        /* compiled from: PublisherCodeRemover.kt */
        /* renamed from: com.criteo.publisher.logging.i$a$a  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        private static final class C0252a {
            private C0252a() {
            }

            public /* synthetic */ C0252a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }
        }
    }
}
