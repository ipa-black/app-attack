package org.aspectj.runtime.reflect;

import java.lang.reflect.Modifier;
import org.aspectj.lang.reflect.InitializerSignature;
/* loaded from: classes3.dex */
class InitializerSignatureImpl extends CodeSignatureImpl implements InitializerSignature {
    InitializerSignatureImpl(int i, Class cls) {
        super(i, Modifier.isStatic(i) ? "<clinit>" : "<init>", cls, SignatureImpl.EMPTY_CLASS_ARRAY, SignatureImpl.EMPTY_STRING_ARRAY, SignatureImpl.EMPTY_CLASS_ARRAY);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public InitializerSignatureImpl(String str) {
        super(str);
    }

    @Override // org.aspectj.runtime.reflect.SignatureImpl, org.aspectj.lang.Signature
    public String getName() {
        return Modifier.isStatic(getModifiers()) ? "<clinit>" : "<init>";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.aspectj.runtime.reflect.SignatureImpl
    public String toString(StringMaker stringMaker) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(stringMaker.makeModifiersString(getModifiers()));
        stringBuffer.append(stringMaker.makePrimaryTypeName(getDeclaringType(), getDeclaringTypeName()));
        stringBuffer.append(".");
        stringBuffer.append(getName());
        return stringBuffer.toString();
    }
}
