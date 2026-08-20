package kotlin.reflect.jvm.internal.impl.descriptors;

import kotlin.reflect.jvm.internal.impl.resolve.constants.ConstantValue;
/* loaded from: classes5.dex */
public interface VariableDescriptor extends ValueDescriptor {
    /* renamed from: getCompileTimeInitializer */
    ConstantValue<?> mo1758getCompileTimeInitializer();

    boolean isConst();

    boolean isLateInit();

    boolean isVar();
}
