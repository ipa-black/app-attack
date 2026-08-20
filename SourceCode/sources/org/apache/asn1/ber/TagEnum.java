package org.apache.asn1.ber;

import org.apache.commons.lang.p003enum.ValuedEnum;
/* loaded from: classes5.dex */
public abstract class TagEnum extends ValuedEnum {
    private final int id;

    /* JADX INFO: Access modifiers changed from: protected */
    public TagEnum(String str, int i, int i2) {
        super(str, i);
        this.id = i2;
    }

    public final int getTagId() {
        return this.id;
    }

    public final int getPrimitiveTag() {
        return getValue() & (-536870913);
    }

    public final int getConstructedTag() {
        return getValue() | 536870912;
    }

    public final TypeClass getTypeClass() {
        return TypeClass.getTypeClass(getValue() >> 24);
    }
}
