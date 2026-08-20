package com.criteo.publisher.logging;

import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.lang.reflect.Method;
import kotlin.annotation.AnnotationRetention;
import kotlin.annotation.AnnotationTarget;
import kotlin.annotation.MustBeDocumented;
import kotlin.collections.ArraysKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.text.StringsKt;
/* compiled from: CallerInferrer.kt */
/* loaded from: classes2.dex */
public final class a {

    /* renamed from: a */
    public static final a f8956a = new a();

    /* compiled from: CallerInferrer.kt */
    @Target({ElementType.METHOD, ElementType.CONSTRUCTOR})
    @MustBeDocumented
    @kotlin.annotation.Target(allowedTargets = {AnnotationTarget.FUNCTION, AnnotationTarget.CONSTRUCTOR})
    @Documented
    @Retention(RetentionPolicy.RUNTIME)
    @kotlin.annotation.Retention(AnnotationRetention.RUNTIME)
    /* renamed from: com.criteo.publisher.logging.a$a */
    /* loaded from: classes2.dex */
    public @interface InterfaceC0251a {
    }

    private a() {
    }

    public static final /* synthetic */ String a(a aVar, Method method) {
        return aVar.a(method);
    }

    /* compiled from: CallerInferrer.kt */
    /* loaded from: classes2.dex */
    public static final class b extends Lambda implements Function1<Class<?>, String> {

        /* renamed from: a */
        public static final b f8957a = new b();

        b() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        /* renamed from: a */
        public final String invoke(Class<?> it) {
            Intrinsics.checkExpressionValueIsNotNull(it, "it");
            String simpleName = it.getSimpleName();
            Intrinsics.checkExpressionValueIsNotNull(simpleName, "it.simpleName");
            return simpleName;
        }
    }

    public final String a(Method method) {
        Class<?>[] parameterTypes = method.getParameterTypes();
        Intrinsics.checkExpressionValueIsNotNull(parameterTypes, "callerMethod.parameterTypes");
        String joinToString$default = ArraysKt.joinToString$default(parameterTypes, ", ", (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, b.f8957a, 30, (Object) null);
        Class<?> declaringClass = method.getDeclaringClass();
        Intrinsics.checkExpressionValueIsNotNull(declaringClass, "callerMethod.declaringClass");
        Package r1 = declaringClass.getPackage();
        String str = (r1 == null || (str = r1.getName()) == null) ? "" : "";
        Class<?> declaringClass2 = method.getDeclaringClass();
        Intrinsics.checkExpressionValueIsNotNull(declaringClass2, "callerMethod.declaringClass");
        String name = declaringClass2.getName();
        Intrinsics.checkExpressionValueIsNotNull(name, "callerMethod.declaringClass.name");
        return StringsKt.removePrefix(name, (CharSequence) (str + '.')) + '#' + method.getName() + '(' + joinToString$default + ')';
    }
}
