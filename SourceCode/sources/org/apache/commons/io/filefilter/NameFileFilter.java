package org.apache.commons.io.filefilter;

import java.io.File;
import java.util.List;
/* loaded from: classes5.dex */
public class NameFileFilter extends AbstractFileFilter {
    private String[] names;

    public NameFileFilter(String str) {
        if (str == null) {
            throw new IllegalArgumentException("The name must not be null");
        }
        this.names = new String[]{str};
    }

    public NameFileFilter(String[] strArr) {
        if (strArr == null) {
            throw new IllegalArgumentException("The array of names must not be null");
        }
        this.names = strArr;
    }

    public NameFileFilter(List list) {
        if (list == null) {
            throw new IllegalArgumentException("The list of names must not be null");
        }
        this.names = (String[]) list.toArray(new String[list.size()]);
    }

    @Override // org.apache.commons.io.filefilter.AbstractFileFilter, org.apache.commons.io.filefilter.IOFileFilter, java.io.FileFilter
    public boolean accept(File file) {
        String name = file.getName();
        int i = 0;
        while (true) {
            String[] strArr = this.names;
            if (i >= strArr.length) {
                return false;
            }
            if (name.equals(strArr[i])) {
                return true;
            }
            i++;
        }
    }

    @Override // org.apache.commons.io.filefilter.AbstractFileFilter, org.apache.commons.io.filefilter.IOFileFilter, java.io.FilenameFilter
    public boolean accept(File file, String str) {
        int i = 0;
        while (true) {
            String[] strArr = this.names;
            if (i >= strArr.length) {
                return false;
            }
            if (str.equals(strArr[i])) {
                return true;
            }
            i++;
        }
    }
}
