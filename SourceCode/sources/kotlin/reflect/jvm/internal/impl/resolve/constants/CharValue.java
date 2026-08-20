package kotlin.reflect.jvm.internal.impl.resolve.constants;

import java.util.Arrays;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
/* compiled from: constantValues.kt */
/* loaded from: classes5.dex */
public final class CharValue extends IntegerValueConstant<Character> {
    public CharValue(char c2) {
        super(Character.valueOf(c2));
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.constants.ConstantValue
    public SimpleType getType(ModuleDescriptor module) {
        Intrinsics.checkNotNullParameter(module, "module");
        SimpleType charType = module.getBuiltIns().getCharType();
        Intrinsics.checkNotNullExpressionValue(charType, "module.builtIns.charType");
        return charType;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.constants.ConstantValue
    public String toString() {
        String format = String.format("\\u%04X ('%s')", Arrays.copyOf(new Object[]{Integer.valueOf(getValue().charValue()), getPrintablePart(getValue().charValue())}, 2));
        Intrinsics.checkNotNullExpressionValue(format, "format(this, *args)");
        return format;
    }

    private final String getPrintablePart(char c2) {
        if (c2 == '\b') {
            return "\\b";
        }
        if (c2 == '\t') {
            return "\\t";
        }
        if (c2 == '\n') {
            return "\\n";
        }
        if (c2 == '\f') {
            return "\\f";
        }
        if (c2 == '\r') {
            return "\\r";
        }
        return isPrintableUnicode(c2) ? String.valueOf(c2) : "?";
    }

    private final boolean isPrintableUnicode(char c2) {
        byte type = (byte) Character.getType(c2);
        return (type == 0 || type == 13 || type == 14 || type == 15 || type == 16 || type == 18 || type == 19) ? false : true;
    }
}
