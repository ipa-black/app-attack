package org.aspectj.runtime.reflect;

import org.aspectj.lang.reflect.FieldSignature;
/* loaded from: classes3.dex */
public class FieldSignatureImpl extends MemberSignatureImpl implements FieldSignature {
    Class fieldType;

    FieldSignatureImpl(int i, String str, Class cls, Class cls2) {
        super(i, str, cls);
        this.fieldType = cls2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public FieldSignatureImpl(String str) {
        super(str);
    }

    @Override // org.aspectj.lang.reflect.FieldSignature
    public Class getFieldType() {
        if (this.fieldType == null) {
            this.fieldType = extractType(3);
        }
        return this.fieldType;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.aspectj.runtime.reflect.SignatureImpl
    public String toString(StringMaker stringMaker) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(stringMaker.makeModifiersString(getModifiers()));
        if (stringMaker.includeArgs) {
            stringBuffer.append(stringMaker.makeTypeName(getFieldType()));
        }
        if (stringMaker.includeArgs) {
            stringBuffer.append(" ");
        }
        stringBuffer.append(stringMaker.makePrimaryTypeName(getDeclaringType(), getDeclaringTypeName()));
        stringBuffer.append(".");
        stringBuffer.append(getName());
        return stringBuffer.toString();
    }
}
