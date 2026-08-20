package org.aspectj.runtime.reflect;

import org.aspectj.lang.reflect.SourceLocation;
/* loaded from: classes3.dex */
class SourceLocationImpl implements SourceLocation {
    int column;
    String fileName;
    int line;
    Class withinType;

    /* JADX INFO: Access modifiers changed from: package-private */
    public SourceLocationImpl(Class cls, String str, int i, int i2) {
        this.withinType = cls;
        this.fileName = str;
        this.line = i;
        this.column = i2;
    }

    @Override // org.aspectj.lang.reflect.SourceLocation
    public Class getWithinType() {
        return this.withinType;
    }

    @Override // org.aspectj.lang.reflect.SourceLocation
    public String getFileName() {
        return this.fileName;
    }

    @Override // org.aspectj.lang.reflect.SourceLocation
    public int getLine() {
        return this.line;
    }

    @Override // org.aspectj.lang.reflect.SourceLocation
    public int getColumn() {
        return this.column;
    }

    public String toString() {
        return new StringBuffer().append(getFileName()).append(":").append(getLine()).append(getColumn() == -1 ? "" : new StringBuffer(":").append(getColumn()).toString()).toString();
    }
}
