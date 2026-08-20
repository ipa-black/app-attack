package org.apache.commons.io.filefilter;

import java.io.File;
/* loaded from: classes5.dex */
public class AndFileFilter extends AbstractFileFilter {
    private IOFileFilter filter1;
    private IOFileFilter filter2;

    public AndFileFilter(IOFileFilter iOFileFilter, IOFileFilter iOFileFilter2) {
        if (iOFileFilter == null || iOFileFilter2 == null) {
            throw new IllegalArgumentException("The filters must not be null");
        }
        this.filter1 = iOFileFilter;
        this.filter2 = iOFileFilter2;
    }

    @Override // org.apache.commons.io.filefilter.AbstractFileFilter, org.apache.commons.io.filefilter.IOFileFilter, java.io.FileFilter
    public boolean accept(File file) {
        return this.filter1.accept(file) && this.filter2.accept(file);
    }

    @Override // org.apache.commons.io.filefilter.AbstractFileFilter, org.apache.commons.io.filefilter.IOFileFilter, java.io.FilenameFilter
    public boolean accept(File file, String str) {
        return this.filter1.accept(file, str) && this.filter2.accept(file, str);
    }
}
