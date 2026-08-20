package org.apache.commons.io.filefilter;

import java.io.File;
/* loaded from: classes5.dex */
public class FalseFileFilter implements IOFileFilter {
    public static final IOFileFilter INSTANCE = new FalseFileFilter();

    @Override // org.apache.commons.io.filefilter.IOFileFilter, java.io.FileFilter
    public boolean accept(File file) {
        return false;
    }

    @Override // org.apache.commons.io.filefilter.IOFileFilter, java.io.FilenameFilter
    public boolean accept(File file, String str) {
        return false;
    }

    protected FalseFileFilter() {
    }
}
