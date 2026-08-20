package org.apache.commons.io.filefilter;

import java.io.File;
/* loaded from: classes5.dex */
public class TrueFileFilter implements IOFileFilter {
    public static final IOFileFilter INSTANCE = new TrueFileFilter();

    @Override // org.apache.commons.io.filefilter.IOFileFilter, java.io.FileFilter
    public boolean accept(File file) {
        return true;
    }

    @Override // org.apache.commons.io.filefilter.IOFileFilter, java.io.FilenameFilter
    public boolean accept(File file, String str) {
        return true;
    }

    protected TrueFileFilter() {
    }
}
