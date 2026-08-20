package org.apache.commons.io.filefilter;

import java.io.File;
/* loaded from: classes5.dex */
public class DirectoryFileFilter extends AbstractFileFilter {
    public static final IOFileFilter INSTANCE = new DirectoryFileFilter();

    protected DirectoryFileFilter() {
    }

    @Override // org.apache.commons.io.filefilter.AbstractFileFilter, org.apache.commons.io.filefilter.IOFileFilter, java.io.FileFilter
    public boolean accept(File file) {
        return file.isDirectory();
    }
}
