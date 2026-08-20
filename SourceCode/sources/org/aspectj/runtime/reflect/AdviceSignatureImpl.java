package org.aspectj.runtime.reflect;

import org.aspectj.lang.reflect.AdviceSignature;
/* loaded from: classes3.dex */
class AdviceSignatureImpl extends CodeSignatureImpl implements AdviceSignature {
    Class returnType;

    AdviceSignatureImpl(int i, String str, Class cls, Class[] clsArr, String[] strArr, Class[] clsArr2, Class cls2) {
        super(i, str, cls, clsArr, strArr, clsArr2);
        this.returnType = cls2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AdviceSignatureImpl(String str) {
        super(str);
    }

    @Override // org.aspectj.lang.reflect.AdviceSignature
    public Class getReturnType() {
        if (this.returnType == null) {
            this.returnType = extractType(6);
        }
        return this.returnType;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.aspectj.runtime.reflect.SignatureImpl
    public String toString(StringMaker stringMaker) {
        StringBuffer stringBuffer = new StringBuffer("ADVICE: ");
        stringBuffer.append(stringMaker.makeModifiersString(getModifiers()));
        if (stringMaker.includeArgs) {
            stringBuffer.append(stringMaker.makeTypeName(getReturnType()));
        }
        if (stringMaker.includeArgs) {
            stringBuffer.append(" ");
        }
        stringBuffer.append(stringMaker.makePrimaryTypeName(getDeclaringType(), getDeclaringTypeName()));
        stringBuffer.append(".");
        stringBuffer.append(getName());
        stringMaker.addSignature(stringBuffer, getParameterTypes());
        stringMaker.addThrows(stringBuffer, getExceptionTypes());
        return stringBuffer.toString();
    }
}
