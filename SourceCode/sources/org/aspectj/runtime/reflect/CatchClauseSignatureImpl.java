package org.aspectj.runtime.reflect;

import org.aspectj.lang.reflect.CatchClauseSignature;
/* loaded from: classes3.dex */
class CatchClauseSignatureImpl extends SignatureImpl implements CatchClauseSignature {
    String parameterName;
    Class parameterType;

    CatchClauseSignatureImpl(Class cls, Class cls2, String str) {
        super(0, "catch", cls);
        this.parameterType = cls2;
        this.parameterName = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public CatchClauseSignatureImpl(String str) {
        super(str);
    }

    @Override // org.aspectj.lang.reflect.CatchClauseSignature
    public Class getParameterType() {
        if (this.parameterType == null) {
            this.parameterType = extractType(3);
        }
        return this.parameterType;
    }

    @Override // org.aspectj.lang.reflect.CatchClauseSignature
    public String getParameterName() {
        if (this.parameterName == null) {
            this.parameterName = extractString(4);
        }
        return this.parameterName;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.aspectj.runtime.reflect.SignatureImpl
    public String toString(StringMaker stringMaker) {
        return new StringBuffer("catch(").append(stringMaker.makeTypeName(getParameterType())).append(")").toString();
    }
}
