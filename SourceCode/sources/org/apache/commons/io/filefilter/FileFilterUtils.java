package org.apache.commons.io.filefilter;

import java.io.FileFilter;
import java.io.FilenameFilter;
/* loaded from: classes5.dex */
public class FileFilterUtils {
    private static IOFileFilter cvsFilter;

    public static IOFileFilter prefixFileFilter(String str) {
        return new PrefixFileFilter(str);
    }

    public static IOFileFilter suffixFileFilter(String str) {
        return new SuffixFileFilter(str);
    }

    public static IOFileFilter nameFileFilter(String str) {
        return new NameFileFilter(str);
    }

    public static IOFileFilter directoryFileFilter() {
        return DirectoryFileFilter.INSTANCE;
    }

    public static IOFileFilter andFileFilter(IOFileFilter iOFileFilter, IOFileFilter iOFileFilter2) {
        return new AndFileFilter(iOFileFilter, iOFileFilter2);
    }

    public static IOFileFilter orFileFilter(IOFileFilter iOFileFilter, IOFileFilter iOFileFilter2) {
        return new OrFileFilter(iOFileFilter, iOFileFilter2);
    }

    public static IOFileFilter notFileFilter(IOFileFilter iOFileFilter) {
        return new NotFileFilter(iOFileFilter);
    }

    public static IOFileFilter trueFileFilter() {
        return TrueFileFilter.INSTANCE;
    }

    public static IOFileFilter falseFileFilter() {
        return FalseFileFilter.INSTANCE;
    }

    public static IOFileFilter asFileFilter(FileFilter fileFilter) {
        return new DelegateFileFilter(fileFilter);
    }

    public static IOFileFilter asFileFilter(FilenameFilter filenameFilter) {
        return new DelegateFileFilter(filenameFilter);
    }

    public static IOFileFilter makeCVSAware(IOFileFilter iOFileFilter) {
        if (cvsFilter == null) {
            cvsFilter = andFileFilter(directoryFileFilter(), notFileFilter(nameFileFilter("CVS")));
        }
        if (iOFileFilter == null) {
            return cvsFilter;
        }
        return andFileFilter(iOFileFilter, cvsFilter);
    }
}
